#########################
#
# Build synaptome db
#
#########################

ADDR=localhost # db address
DB=synaptome   # db name
cmd="cat db_user.txt" && eval USER=\$\($cmd\)
cmd="cat db_pass.txt" && eval PASS=\$\($cmd\)
conds=32 # number of conditions minus 1
CSV_DIR=data/renamed # csv files location

echo "Creating intial tables"
mysql -h $ADDR -u $USER -p$PASS $DB < create_synaptome.sql &&
mysql -h $ADDR -u $USER -p$PASS $DB < create_tables.sql &&

cd $CSV_DIR;

for FILE in *.csv
do
	# fix 1st column id numbering
	cut -d, -f 2,3,4,5,6,7,8 $FILE > $FILE.trim && # trim out 1st column
	awk '{printf "%s,%s\n", NR==1 ? "ID" : NR-1, $0}' $FILE.trim > $FILE && # add correct id numbers
	rm $FILE.trim && # remove temp file
	# import file to MySql
    mysqlimport --ignore-lines=1 --fields-terminated-by=, --verbose --local -u $USER -p$PASS $DB $FILE > /dev/null 2>&1	
done
echo "Imported data to initial tables"

cd ../..

mysql -h $ADDR -u $USER -p$PASS $DB < create_synprotypetyperel.sql > /dev/null 2>&1 &&
mysqlimport --ignore-lines=1 --fields-terminated-by=, --verbose --local -u $USER -p$PASS $DB ./data/synprotypetyperel.csv > /dev/null 2>&1 &&
echo "Imported data to typetyperel table"

mysql -h $ADDR -u $USER -p$PASS $DB < create_conditions.sql > /dev/null 2>&1 &&
mysqlimport --ignore-lines=1 --fields-terminated-by=, --verbose --local -u $USER -p$PASS $DB ./data/conditions.csv > /dev/null 2>&1 &&
echo "Imported data to conditions table"

echo "Now building final tables"

mysql -h $ADDR -u $USER -p$PASS $DB < create_tm_tables.sql && 

echo "Adding stat values"
echo "Processing table 1 of $conds"
mysql -h $ADDR -u $USER -p$PASS $DB < comb_stats.sql &&

conds_adj=$(expr $conds - 1)
for i in $(seq 1 $conds_adj);
do
	i2=$(expr $i + 1) &&
	echo "Processing table $i2 of $conds" &&
	sed -i "s/tm_cond$i/tm_cond$i2/g" comb_stats.sql &&
	sed -i "s/cv_cond$i/cv_cond$i2/g" comb_stats.sql &&
	sed -i "s/min_cond$i/min_cond$i2/g" comb_stats.sql &&
	sed -i "s/max_cond$i/max_cond$i2/g" comb_stats.sql &&
	sed -i "s/means_cond$i/means_cond$i2/g" comb_stats.sql &&
	sed -i "s/std_cond$i/std_cond$i2/g" comb_stats.sql &&
	mysql -h $ADDR -u $USER -p$PASS $DB < comb_stats.sql
done

# Reset variables
sed -i "s/tm_cond$conds/tm_cond1/g" comb_stats.sql &&
sed -i "s/cv_cond$conds/cv_cond1/g" comb_stats.sql &&
sed -i "s/min_cond$conds/min_cond1/g" comb_stats.sql &&
sed -i "s/max_cond$conds/max_cond1/g" comb_stats.sql &&
sed -i "s/means_cond$conds/means_cond1/g" comb_stats.sql &&
sed -i "s/std_cond$conds/std_cond1/g" comb_stats.sql