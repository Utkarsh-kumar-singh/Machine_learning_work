create database key_prim
use key_prim

create table ineuron(
course_id int NOT NULL,
course_name varchar(60),
course_status varchar(40),
number_of_enro int ,
primary key(course_id));

insert into ineuron values(01 , 'FSDA','active',100)
insert into ineuron values(02 , 'FSDs','not-actrive',100)

select * from ineuron

create table studets_ineuron(
student_id int ,
course_name varchar(60),
student_mail varchar(60),
student_status varchar(40),
course_id1 int,
foreign key(course_id1) references ineuron(course_id))

insert into studets_ineuron values(101 , 'fsda','test@gmail.com','active',05)

insert into studets_ineuron values(101 , 'fsda','test@gmail.com','active',01)
select * from studets_ineuron
insert into studets_ineuron values(101 , 'fsda','test@gmail.com','active',01)

create table payment(
course_name varchar(30),
course_id int,
course_live_status varchar(30),
course_launch_date varchar(30),
foreign key(course_id) references ineuron(course_id))

insert into payment values ('fsda',01,'not-active','7th aug')
insert into payment values ('fsda',01,'not-active','7th aug')
insert into payment values ('fsda',01,'not-active','7th aug')

select * from payment

create table class(
course_id int ,
class_name varchar(60),
class_topic varchar(60),
class_duration int ,
primary key(course_id),
foreign key(course_id) references ineuron(course_id))


create table test(
id int not null , 
name varchar(60),
email_id varchar(60),
mobile_no varchar(9),
address varchar(50))

alter table test add primary key(id)

alter table test drop primary key

alter table test add constraint test_prim primary key(id , email_id)


create table parent(
id int not null ,
primary key(id))

insert into parent values(1)

select * from parent

create table child (
id int ,
parent_id int ,
foreign key (parent_id) references parent(id))

drop table child

create table child (
id int ,
parent_id int ,
foreign key (parent_id) references parent(id) on delete cascade)

insert into child values(1,1),(1,2),(3,2),(2,2)

select * from child

delete from parent where id = 1

update parent set id = 3 where id = 2

create table child (
id int ,
parent_id int ,
foreign key (parent_id) references parent(id) on update cascade)

insert into child values(1,1),(1,2),(3,2),(2,2)

select * from parent







