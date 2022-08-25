create database operations
use operations

create table if not exists course (
course_id int ,
course_name varchar(50),
course_desc varchar(60),
course_tag varchar(50))

create table if not exists student(
student_id int ,
student_name varchar(30),
student_mobile int ,
student_course_enroll varchar(30),
student_course_id int )

insert into course values(101 , 'fsda' , 'full stack data analytics' , 'Analytics'),
(102 , 'fsds' , 'full stack data analytics' , 'Analytics'),
(103 , 'fsds' , 'full stack data science' , 'DS'),
(104 , 'big data' , 'full stack big data' , 'BD'),
(105 , 'mern' , 'web dev' , 'mern'),
(106 , 'blockchain' , 'full stack blockchain' , 'BC'),
(101 , 'java' , 'full stack java' , 'java'),
(102 , 'testing' , 'full testing ' , 'testing '),
(105 , 'cybersecurity' , 'full stack cybersecurity' , 'cybersecurity'),
(109 , 'c' , 'c language' , 'c'),
(108 , 'c++' , 'C++ language' , 'language')

insert into student values(301 , "sudhanshu", 3543453,'yes', 101),
(302 , "sudhanshu", 3543453,'yes', 102),
(301 , "sudhanshu", 3543453,'yes', 105),
(302 , "sudhanshu", 3543453,'yes', 106),
(303 , "sudhanshu", 3543453,'yes', 101),
(304 , "sudhanshu", 3543453,'yes', 103),
(305 , "sudhanshu", 3543453,'yes', 105),
(306 , "sudhanshu", 3543453,'yes', 107),
(306 , "sudhanshu", 3543453,'yes', 103)

select * from course
select * from student

select c.course_id, c.course_name, c.course_desc, s.student_id,s.student_name ,s.student_course_id from course c
inner join student s on c.course_id = s.student_course_id;

select c.course_id, c.course_name, c.course_desc, s.student_id,s.student_name ,s.student_course_id from course c
left join student s on c.course_id = s.student_course_id;

select c.course_id, c.course_name, c.course_desc, s.student_id,s.student_name ,s.student_course_id from course c
right join student s on c.course_id = s.student_course_id where c.course_id is null;

create table if not exists course1 (
course_id int ,
course_name varchar(50),
course_desc varchar(60),
course_tag varchar(50),
index(course_id)
)

insert into course1 values(101 , 'fsda' , 'full stack data analytics' , 'Analytics'),
(102 , 'fsds' , 'full stack data analytics' , 'Analytics'),
(103 , 'fsds' , 'full stack data science' , 'DS'),
(104 , 'big data' , 'full stack big data' , 'BD'),
(105 , 'mern' , 'web dev' , 'mern'),
(106 , 'blockchain' , 'full stack blockchain' , 'BC'),
(101 , 'java' , 'full stack java' , 'java'),
(102 , 'testing' , 'full testing ' , 'testing '),
(105 , 'cybersecurity' , 'full stack cybersecurity' , 'cybersecurity'),
(109 , 'c' , 'c language' , 'c'),
(108 , 'c++' , 'C++ language' , 'language')

show index from course1

create table if not exists course4 (
course_id int ,
course_name varchar(50),
course_desc varchar(60),
course_tag varchar(50),
index(course_desc,course_name,course_tag)
)

insert into course4 values(101 , 'fsda' , 'full stack data analytics' , 'Analytics'),
(102 , 'fsds' , 'full stack data analytics' , 'Analytics'),
(103 , 'fsds' , 'full stack data science' , 'DS'),
(104 , 'big data' , 'full stack big data' , 'BD'),
(105 , 'mern' , 'web dev' , 'mern'),
(106 , 'blockchain' , 'full stack blockchain' , 'BC'),
(101 , 'java' , 'full stack java' , 'java'),
(102 , 'testing' , 'full testing ' , 'testing '),
(105 , 'cybersecurity' , 'full stack cybersecurity' , 'cybersecurity'),
(109 , 'c' , 'c language' , 'c'),
(108 , 'c++' , 'C++ language' , 'language')

show index from course4

EXPLAIN ANALYZE select * from course4 where  course_id = 106 or course_name = 'fsds'

create table if not exists course6 (
course_id int ,
course_name varchar(50),
course_desc varchar(60),
course_tag varchar(50),
unique index(course_desc,course_name)
)
show index from course6

/* Union operation */

select course_id , course_name from course 
union 
select student_id , student_name from student 

select course_id , course_name from course 
union all
select student_id , student_name from student

/* CTE */
with left_join_table as (select c.course_id, c.course_name, c.course_desc, s.student_id,s.student_name ,s.student_course_id from course c
left join student s on c.course_id = s.student_course_id) select * from left_join_table where student_id is null

with left_join_table_1 as (select c.course_id, c.course_name, c.course_desc, s.student_id,s.student_name ,s.student_course_id from course c
left join student s on c.course_id = s.student_course_id) select * from left_join_table_1 where course_id = 101









































