

use sakila;

-- query
show tables;

-- statement select
select * from actor;

-- column
select  actor_id, first_name,100  from actor;


select  actor_id, actor_id+10*2,first_name  from actor;

select  actor_id, actor_id+10*2 as "hey",
first_name  from actor;

select * from actor;




select  actor_id, 
actor_id+10 , 
first_name  from actor;


select actor_id+100,first_name, actor_id from actor;

-- projection
select * from actor;

-- selection - to get specific rows
-- where

select * from actor where actor_id=1;

select first_name,actor_id from actor where actor_id=4;


select first_name from actor where actor_id=4;

select * from actor;

select * from actor where first_name="NICK";


SELECT last_name from actor Where first_name="NICK";

-- order ( sequence)  between
select * from actor where actor_id between 8 and 13;

select * from actor where actor_id between 13 and 8;

-- in operator
select * from actor where actor_id in (8,11,13);

select * from actor where first_name in ("UMA","NICK","XYZ");


-- like operator ( Pattern)
select * from actor where first_name="NICK";

-- % ( zero or more character)
select * from actor where first_name like "L%";


select * from actor where first_name like "%A%";

# wildcard _ ( only 1 character
select * from actor where first_name like 'E_%';

select * from actor where first_name like '%';
