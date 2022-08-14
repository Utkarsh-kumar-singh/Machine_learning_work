use sales

call sales1()

delimiter $$
create function add_to_col(a int)
returns INT 
DETERMINISTIC

begin
	DECLARE b int ;
	set b = a + 10 ;
	return b ;
end $$
    
select quantity, add_to_col(quantity) from sales1

delimiter $$
create function add_col2(y int)
returns int
deterministic
begin
	declare x int;
    set x = y+10;
    return x;
end $$
    
select sales, add_col2(sales) from sales1;

delimiter $$ 
create function final_profits(profit int, discount int)
returns int
deterministic
begin 
	declare final_profit int;
    set final_profit = profit - discount;
    return final_profit;
end $$

select profit, discount, final_profits(profit,discount) from sales1;

DELIMITER &&
create function int_to_str (a int)
returns varchar(30)
DETERMINISTIC
begin
declare b varchar(30);
set b = a;
return b;
end&&

DELIMITER $$
create function int_to_str1(a INT)
returns varchar(60)
DETERMINISTIC
BEGIN 
	DECLARE b varchar (60);
	set b = a ;
    return b ;
end $$


call sales1

select sales, quantity, sales, if(sales>100, "yes", "no") as max_sales_PERSON FROM SALES1


1  - 100 - super affordable product 
100-300 - affordable 
300 - 600 - moderate price 
600 + - expensive 

delimiter $$
create function mark_sales1(sales int)
returns varchar(30)
deterministic
begin
declare flag_sales varchar(30);
if sales < 100 then 
	set flag_sales = "super affordable product";
elseif sales >100 and sales < 300 then
	set flag_sales = "affordable";
elseif sales >300 and sales < 600 then
	set flag_sales = "moderate price";
else
	set flag_sales = "expensive" ;
end if ;
return flag_sales;
end $$

select mark_sales1(20)

select sales , mark_sales1(sales ) from sales1 ; 

/* Loop */

create table loop_data(val int)

delimiter &&
create procedure insert_data()
begin
set @var = 10;
generate_data : loop
insert into loop_data values(@var);
set @var = @var+ 1;
if @var = 100 then
	leave generate_data;
end if;
end loop generate_data;
end &&

select * from loop_data

call insert_data()










    
    
    
    
    
    