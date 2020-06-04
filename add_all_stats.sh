#########################
#
# Populate values for all stats
#
#########################

conds=32

cmd="cat db_addr.txt" && eval ADDR=\$\($cmd\)
cmd="cat db_name.txt" && eval DB=\$\($cmd\)
cmd="cat db_user.txt" && eval USER=\$\($cmd\)
cmd="cat db_pass.txt" && eval PASS=\$\($cmd\)

echo "Adding stat values for $conds tables"
mysql -h $ADDR -u $USER -p$PASS $DB < comb_stats.sql &&

for i in $(seq 1 $conds);
do
	i2=$(expr $i + 1)
	sed -i "s/tm_cond$i/tm_cond$i2/g" comb_stats.sql &&
	sed -i 's/cv_cond$i/cv_cond$i2/g' comb_stats.sql &&
	sed -i 's/min_cond$i/min_cond$i2/g' comb_stats.sql &&
	sed -i 's/max_cond$i/max_cond$i2/g' comb_stats.sql &&
	sed -i 's/means_cond$i/means_cond$i2/g' comb_stats.sql &&
	sed -i 's/std_cond$i/std_cond$i2/g' comb_stats.sql &&
	mysql -h $ADDR -u $USER -p$PASS $DB < comb_stats.sql
	#echo "Processed all stats for table $i of $conds"
done