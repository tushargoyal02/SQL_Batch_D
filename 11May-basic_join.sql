use sakila;


# join
# type of relationship
#Key:

select * from actor;
desc actor;

select * from film_actor;
desc film_actor;


select actor.actor_id, first_name,film_id
from actor join film_actor
where  (actor.actor_id = film_actor.actor_id);


create database test;
use test;
create table employee(id int, name varchar(20)) ;
insert into employee values( 1,"tushar"),(2,"aman"),(3,"nisha");

create table department(did int, id int, dname varchar(20));
insert into department values(10,1,"hr"),(20,2,"marketing"),
(30,50,"developer");


select * from employee;
select * from department;

-- inner join
select employee.id, name, dname 
from employee join department
where (employee.id=department.id);


select employee.id, name, dname 
from employee join department
using(id);

select employee.id, name, did,dname 
from employee inner join department
on(employee.id=department.id);



select employee.id, name, did,dname 
from employee left join department
on(employee.id=department.id);

select employee.id,department.id,  name, did,dname 
from employee right join department
on(employee.id=department.id);


select employee.id as eid,department.id,  name, did,dname 
from employee join department;

-- difference between cross join, natural join, self join
-- type of outer join 
