# echo $1
# echo $2
# echo $1,$4

# sqlite3 test.db <<EOF
# create table A (A1 integer primary key, A2 string);
# create table B (B1 integer primary key, B2 integer, B3 string, foreign key (B1) references A(A1));
# .timer on
# .quit
# EOF

mariadb -u srinjayk <<EOF
drop database tmp;
create database tmp;
use tmp;
create table A(A1 int primary key, A2 varchar(30));
create table B(B1 int primary key, B2 int, B3 varchar(30), foreign key (B2) references A(A1));
load data local infile '$3' into table A fields terminated by ',' enclosed by '"' lines terminated by '\n' (A1, A2);
load data local infile '$4' into table B fields terminated by ',' enclosed by '"' lines terminated by '\n' (B1, B2, B3);
quit
EOF


# sqlite3 test.db <<EOF
# .mode csv
# .import $3 A
# .import $4 B
# .quit
# EOF


for i in 1 2 3 4 5 6 7
do
	./mariadb_run.sh $1 $2 $3 $4 $i
done

# sqlite3 test.db <<EOF
# drop table A;
# drop table B;
# .quit
# EOF

# rm test.db

# if [ $1 -eq 1]:
# do

