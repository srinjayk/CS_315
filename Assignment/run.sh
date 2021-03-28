
# rm *.csv
# tar -xvf dbs.zip

# rm test.db
rm tmp
touch tmp

# unzip dbs.zip 

# for f in ~/Desktop/CS_315/Assignment/*.csv; do sed -i '1 d' "$f"; done

# let file_a = ( 'A-100.csv' 'A-100.csv' 'A-100.csv' 'A-1000.csv' 'A-1000.csv' 'A-1000.csv' 'A-10000.csv' 'A-10000.csv' 'A-10000.csv' )

# for x in 'A-100.csv' 'A-100.csv' 'A-100.csv' 'A-1000.csv' 'A-1000.csv' 'A-1000.csv' 'A-10000.csv' 'A-10000.csv' 'A-10000.csv'
# do
# 	echo $x
# done;

# sqlite3 test.db <<EOF
# create table A (A1 integer primary key, A2 string);
# create table B (B1 integer primary key, B2 integer, B3 string, foreign key (B1) references A(A1));
# .timer on
# .quit
# EOF

# service mysqld start

# ./mariadb.sh 2 1 'A-100.csv' 'B-100-3-4.csv'
# ./mariadb.sh 2 2 'A-100.csv' 'B-100-5-4.csv'
# ./mariadb.sh 2 3 'A-100.csv' 'B-100-10-4.csv'
# ./mariadb.sh 2 4 'A-1000.csv' 'B-1000-5-4.csv'
# ./mariadb.sh 2 5 'A-1000.csv' 'B-1000-10-4.csv'
# ./mariadb.sh 2 6 'A-1000.csv' 'B-1000-50-4.csv'
# ./mariadb.sh 2 7 'A-10000.csv' 'B-10000-5-4.csv'
# ./mariadb.sh 2 8 'A-10000.csv' 'B-10000-50-4.csv'
# ./mariadb.sh 2 9 'A-10000.csv' 'B-10000-500-4.csv'

# service mysqld start

# ./mariadbi.sh 3 1 'A-100.csv' 'B-100-3-4.csv'
# ./mariadbi.sh 3 2 'A-100.csv' 'B-100-5-4.csv'
# ./mariadbi.sh 3 3 'A-100.csv' 'B-100-10-4.csv'
# ./mariadbi.sh 3 4 'A-1000.csv' 'B-1000-5-4.csv'
# ./mariadbi.sh 3 5 'A-1000.csv' 'B-1000-10-4.csv'
# ./mariadbi.sh 3 6 'A-1000.csv' 'B-1000-50-4.csv'
# ./mariadbi.sh 3 7 'A-10000.csv' 'B-10000-5-4.csv'
./mariadbi.sh 3 8 'A-10000.csv' 'B-10000-50-4.csv'
# ./mariadbi.sh 3 9 'A-10000.csv' 'B-10000-500-4.csv'


# ./sqlite.sh 1 1 'A-100.csv' 'B-100-3-4.csv'
# ./sqlite.sh 1 2 'A-100.csv' 'B-100-5-4.csv'
# ./sqlite.sh 1 3 'A-100.csv' 'B-100-10-4.csv'
# ./sqlite.sh 1 4 'A-1000.csv' 'B-1000-5-4.csv'
# ./sqlite.sh 1 5 'A-1000.csv' 'B-1000-10-4.csv'
# ./sqlite.sh 1 6 'A-1000.csv' 'B-1000-50-4.csv'
# ./sqlite.sh 1 7 'A-10000.csv' 'B-10000-5-4.csv'
# ./sqlite.sh 1 8 'A-10000.csv' 'B-10000-50-4.csv'
# ./sqlite.sh 1 9 'A-10000.csv' 'B-10000-500-4.csv'