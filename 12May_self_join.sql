use test;

show tables;

select * from employee;
select * from department;

-- cross join ( inner)
-- m *n  => mn
select employee.id, name,dname 
from employee join department
where (employee.id = department.id);

select employee.id, name,dname 
from employee join department
using(id);


select employee.id, name,dname 
from employee inner join department
on(employee.id= department.id);

select employee.id, name,dname 
from employee left join department
on(employee.id= department.id);

select employee.id, name,dname 
from employee right join department
on(employee.id= department.id);

-- natural join
-- if the column name is same => inner join
-- as cross join
select employee.id, name,dname 
from employee natural join department;

drop table company_employee;
create table company_employee
(eid int, name varchar(20), manager_id int);

insert into company_employee values(10,"tushar",null),
(11,"aman",13),(12,"aditya",10), (13,"sakshi",12);

select * from company_employee;


select emp.eid, emp.name, manager.eid as mid, manager.name 
from company_employee as emp   join company_employee as manager
where (emp.manager_id=manager.eid);


use sakila;
select * from actor;
select * from film_actor;

select * from film;

--  join film where 
select actor.actor_id, first_name, film_actor.film_id,title
from actor  join film_actor
join film
where (actor.actor_id = film_actor.actor_id) and 
film_actor.film_id= film.film_id;