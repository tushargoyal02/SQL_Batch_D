

-- group by operation ( Aggregate function)
-- multi row function

use sakila;

select count(*) from address;

select sum(amount) from payment;

select avg(amount) from payment;

select sum(amount)/count(amount) from payment;

select * from payment;

select distinct(customer_id) from payment;

select sum(amount)  from payment where customer_id=1;

select sum(amount)  from payment where customer_id=2;

-- multi - row functions
 select customer_id,sum(amount) from payment
 where customer_id>3 group by customer_id;

select customer_id,sum(amount) from payment
 where sum(amount)>90 group by customer_id;


select customer_id,sum(amount) from payment
group by customer_id having sum(amount)>90;

select customer_id,amount,count(*) from payment 
group by customer_id,amount;



select customer_id,sum(amount) as totalamount from payment 
group by customer_id  order by 2;

-- group by operations

#  Type of relationship and symbol representation
#  What are type, types of keys
# candidate, super, pk, foreign key, unique key
# Type of join and why we use it