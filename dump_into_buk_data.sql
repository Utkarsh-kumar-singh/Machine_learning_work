create database dress_data;


use dress_data

create table if not exists dress(

`Dress_ID` varchar(30),	
`Style`	varchar(30),	
`Price`	varchar(30),	
`Rating`	varchar(30),	
`Size`	varchar(30),	
`Season`	varchar(30),	
`NeckLine`	varchar(30),	
`SleeveLength` varchar(30),		
`waiseline`	varchar(30),	
`Material`	varchar(30),	
`FabricType`	varchar(30),	
`Decoration`	varchar(30),	
`Pattern Type` varchar(30),		
`Recommendation` varchar(30));


LOAD DATA infile 
'F:/AttributeDataSet.csv'
into table dress
FIELDS TERMINATED by ','
ENCLOSED by '"'
lines terminated by '\n'
IGNORE 1 ROWS;


create table if not exists test ( 
test_id int auto_increment,
test_name varchar(30) , 
test_mailid varchar(30),
teast_adress varchar(30),
primary key (test_id))


select * from dress;

insert into test ( test_name, test_mailid , teast_adress)
values
("utkarsh", "utkarsh@gmail.com", "farrukhabad"),
("bittu", "bittu@gmail.com", "kanpur"),
("sumit", "sumit@gmail.com", "faridabad");









