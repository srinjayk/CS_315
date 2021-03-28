# echo $1
# echo $2
# echo $1,$4

# sqlite3 test.db <<EOF
# .mode csv
# .import $1 A
# .import $2 B
# .quit
# EOF

# if [ $1 -eq 1]:
# do


start_time="$(date -u +%s.%N)"
mariadb -u srinjayk <<EOF
use tmp;
select * from A where A1>=50;
quit
EOF
end_time="$(date -u +%s.%N)"
runtime="$(bc <<<"$end_time-$start_time")"
echo "$1,$2,$5,1,$runtime" >>tmp


start_time="$(date -u +%s.%N)"
mariadb -u srinjayk <<EOF
use tmp;
select * from B order by B3 desc;
quit
EOF
end_time="$(date -u +%s.%N)"
runtime="$(bc <<<"$end_time-$start_time")"
echo "$1,$2,$5,2,$runtime" >> tmp


start_time="$(date -u +%s.%N)"
mariadb -u srinjayk <<EOF
use tmp;
select avg(del) from (select count(B3) as del, B2 from B group by B2) A;
quit
EOF
end_time="$(date -u +%s.%N)"
runtime="$(bc <<<"$end_time-$start_time")"
echo "$1,$2,$5,3,$runtime" >> tmp


start_time="$(date -u +%s.%N)"
mariadb -u srinjayk <<EOF
use tmp;
select A.A2, B.B1, B.B2, B.B3 from A inner join B on A.A1=B.B2;
quit
EOF
end_time="$(date -u +%s.%N)"
runtime="$(bc <<<"$end_time-$start_time")"
echo "$1,$2,$5,4,$runtime" >> tmp


mariadb -u srinjayk <<EOF
use tmp;
reset query cache;
quit
EOF

# sqlite3 test.db <<EOF
# drop table A;
# drop table B;
# .quit
# EOF