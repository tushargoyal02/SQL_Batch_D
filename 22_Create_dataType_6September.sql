-- Data type of SQL
-- numeric  string data,  date time
-- int ( numerical)



-- INT[(width)] [UNSIGNED] [ZEROFILL]
-- 4 byte  ( 1 - 8 )    2^32
--  2^32
--  –2,147,483,648 to 2,147,483,647  ( 4 byte storage)
create database regex1;
use regex1;

--  ddl statement  ( Data defination language)
create  table  employee(eid  int unsigned);

-- dml statement  ( data manipulation statement)
insert into employee(eid) values(-2147483649);

select * from employee;





-- INT[(width)] [UNSIGNED] [ZEROFILL]

-- The width parameter specifies the display width, 
-- which can be read by applications as part of the column metadata. 
-- 18,446,744,073,709,551,615 unsigned big int 
-- 8 byte
-- unsigned
create table test3(id int unsigned);
insert into test3 values(-77355);
select * from test3;
describe  test3;
#100  =>  -49  to  50
# 0 to 100

CREATE TABLE test_bigint (id BIGINT UNSIGNED);

-- int => id 100   => id+50 => big int
INSERT INTO test_bigint VALUES (18446744073709551615);
select * from test_bigint;

-- -- 18,446,744,073,709,551,600 is less than 18,446,744,073,709,551,615
INSERT INTO test_bigint VALUES (184467440737095516*100);

-- tinyint, smallint, mediumint, int, bigint
-- 1 byte => 8  2(8)
-- boolean  => Tinyint
-- 2**8  => 256 ( unsigned)    =>  -128 to 127
create table abc1(id tinyint unsigned);
insert into abc1 values(256);
select * from abc1;


insert into abc1 values(False);
select * from abc1;



-- 0 to 256 unsigned,  -127 to 128 
drop table test_bool;
CREATE TABLE test_bool (i BOOL);
insert into test_bool values(True),(False);

select * from test_bool;
INSERT INTO test_bool  VALUES (1),(0),(-128),(127);

-- mediumint : 3byte small : 2 byte, tiny:1 byte
-- int : 4 byte,  big int 8 byte

-- acid property in RDBMS
-- how acid property are implement in RDBMS
-- Constraints

-- string
-- 20  => 10 character
-- 20  => 10 character  ( char)
-- varchar and char
-- varchar
-- maximun varchar
-- ( The maximum value of width is 65,535 characters. )


create table ep2(name1 char(4) );

insert into ep2 values("   zz");
select name1, length(name1) from ep2;

-- variable character
create table ep_var(name1 varchar(3) );
insert into ep_var values("Xf");
select name1, length(name1) from ep_var;


create table ep_var1(eid int check(eid>2) );
insert into ep_var1 values(1);

-- VARCHAR retains trailing spaces up to 
--  the specified column width and will 
-- truncate the excess, producing a warning. 

-- CHAR values are right-padded to 
-- the column width, and the trailing spaces aren’t preserved.




-- date
create table test( dob date);
insert into test values( "2022-05-12" );
select * from test;

select now();
select current_date();
select curdate();
select curtime();


create table test1( dob datetime);
insert into test1 values( current_timestamp() ); 
select * from test1;


select date_format( current_timestamp(), "%Y - %a" ) as new
from dual;