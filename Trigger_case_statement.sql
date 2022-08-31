use ineuron_partition;
SELECT * FROM ineuron_partition.ineuron_course;

select *,
case 
	when length(course_name) = 4 then "len 4"
    when length(course_name) = 2 then "len 2"
    else "other length"
end as statement 
from ineuron_course


delimiter //
create trigger to_delete_others_before
before delete on test1 for each row 
begin
	insert into test3 values("after delete" , sysdate(), 435456);
end; //


delimiter //
create trigger to_delete_others_before_observation2
before delete on test1 for each row 
begin
	insert into test2(c1,c2,c3) values(old.c1, old.c2,old.c3);
end; //



select * from test1
select * from test2

delete from test1 where c1 = 'abc'


create table test11(
c1 varchar(50),
c2 date,
c3 int)


create table test12(
c1 varchar(50),
c2 date,
c3 int )


create table test13(
c1 varchar(50),
c2 date,
c3 int )

delimiter //
create trigger to_delete_others_before_observation3
before delete on test11 for each row 
begin
	insert into test12(c1,c2,c3) values(old.c1, old.c2,old.c3);
end; //



insert into test11 values("sudh" , sysdate(), 435456);
select * from test11

delete from test11 where c1 = 'sudh'

select * from test12


delimiter //
create trigger to_delete_others_before_observation4
after delete on test11 for each row 
begin
	insert into test12(c1,c2,c3) values(old.c1, old.c2,old.c3);
end; //

delete from test11 where c1 = 'sudhanshu'


delimiter //
create trigger to_upate_others
after update on test11 for each row 
begin
	insert into test12(c1,c2,c3) values(old.c1, old.c2,old.c3);
end; //

select * from test11;

insert into test11 values("sudh",sysdate(),234354)

update test11 set c1 = "after update" where c1 = "after delete"


select * from  test12;

delimiter //
create trigger to_upate_others_before
before update on test11 for each row 
begin
	insert into test12(c1,c2,c3) values(new.c1, new.c2,new.c3);
end; //

update test11 set c1 = "insert new" where c1 = "sudh"

1.create a table col = name , mail_id,phone_number , address , users_sys, time_sys,salary,incentive,final_salary
2.try to time all the time that uses name should start with s for each and every insert op




use ineuron_partition

SELECT * FROM ineuron_partition.ineuron_course;

select * ,
case 
	when course_name = 'fsda' then sysdate()
    when course_name = 'fsds' then system_user()
    else "this is not your batch"
end as statement 
from ineuron_course

select * ,
case 
	when length(course_name) = 4  then "len 4"
    when length(course_name)= 2  then "len 2"
    else "other lenght"
end as statement 
from ineuron_course


update ineuron_course set course_name = case 
when course_name = 'RL' then 'reinforcement learing'
when course_name = 'dl' then 'deep learning'
end 

select * from ineuron_course
