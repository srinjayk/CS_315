# echo $1
# echo $2
# echo $1,$4

sqlite3 test.db <<EOF
create table A (A1 integer primary key, A2 string);
create table B (B1 integer primary key, B2 integer, B3 string, foreign key (B1) references A(A1));
.timer on
.quit
EOF


sqlite3 test.db <<EOF
.mode csv
.import $3 A
.import $4 B
.quit
EOF


for i in 1 2 3 4 5 6 7 8 9 10
do
	./sqlite_run.sh $1 $2 $3 $4 $i
done

# sqlite3 test.db <<EOF
# drop table A;
# drop table B;
# .quit
# EOF

rm test.db

# if [ $1 -eq 1]:
# do

