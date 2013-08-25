add file /root/columnSplit.py;

drop table q2;

drop table q3;

create table q2 (a string);

load data local inpath '/root/as1/clean.csv' overwrite into table q2;

create table q3 (a string);

INSERT OVERWRITE TABLE q3 select transform(a) using 'python columnSplit.py' as a from q2; 

select a,count(*) from q3 group by a;
