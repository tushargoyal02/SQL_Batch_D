use sakila;

select * from actor;

-- string function
-- concat 
select first_name, last_name, concat(first_name,' ' ,last_name)
from actor;


select first_name, last_name, 
concat_ws('-',first_name,last_name, "xyz")
from actor;

-- length => size of character in byte
select first_name, last_name, length("hey")
from actor;

select char_length("hey12531")
from dual;

select first_name, substr(first_name,3) from actor;

select first_name, substr(first_name,3,2) from actor;

select first_name, substr(first_name,-4,2) from actor;

-- return me index of the character if avaialable
select first_name, instr(first_name,'E') from actor;

select first_name, locate('E', first_name) from actor;

select first_name, locate('E', first_name,3) from actor;

select   trim('hey') from dual;

select   trim(Leading ' '  from '    hey    ') from dual;

select   trim(trailing ' '  from '    hey    ') from dual;

select   trim(both 'H'  from 'Hhhhhey hhhh') from dual;

-- repalce ( str, 'konsi replace', 'kisse replace')
select first_name, replace(first_name,'E','$')
from actor;


select substr('978523654',-2) from dual;

select rpad('9785236590999',10,'#') from dual;

-- ( str, position, overwrite, value)
select insert("hey",1,3,"tushar") from dual;


# numeric function
select  round(10.645) from dual;

select  round(10.645, 1) from dual;

select  round(10.6, 1) from dual;

select  round(10.6404, 2) from dual;

select  truncate(10.64884, 4) from dual;

select  truncate(10.64884,1) from dual;

select  mod(11,3) from dual;

select lpad('97852365',10,'#') from dual;








