#########################
#
# Build synaptome db
#
#########################

cmd="cat db_addr.txt"
eval ADDR=\$\($cmd\)
cmd="cat db_name.txt"
eval DB=\$\($cmd\)
cmd="cat db_user.txt"
eval USER=\$\($cmd\)
cmd="cat db_pass.txt"
eval PASS=\$\($cmd\)

CSV_DIR=/comp_neuro/PhD/gmu/research/synaptome/data/renamed

mysql -h $ADDR -u $USER -p$PASS $DB < ./create_synaptome.sql &&
mysql -h $ADDR -u $USER -p$PASS $DB < ./create_tables.sql &&

for FILE in *.csv
do
	#set echo off
        mysqlimport --ignore-lines=1 --fields-terminated-by=, --verbose --local -u $USER -p$PASS $DB $CSV_DIR/$FILE > /dev/null 2>&1
	#set echo on
	echo "imported file: "$FILE
done

mysql -h $ADDR -u $USER -p$PASS $DB < ./create_tm_tables.sql && 
mysql -h $ADDR -u $USER -p$PASS $DB < ./comb_stats.sql
