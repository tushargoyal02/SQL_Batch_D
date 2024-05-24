# constrainit

-- table natural join table2 ( inner join)
-- act as cross join

-- constraint
# basically : rules ( condition)
# data to be inserted alter

create database tushar;
use tushar;

drop table e1;

create table e1(id int not null);
insert into e1 values(null);
select * from e1;

select count(id) from e1;


drop table e2;
create table e2(id int not null, 
	fname varchar(20) default "regex" );
    
insert into e2(id) values(30);
select * from e2;


create table e4(id int primary key);
insert into e4 values(100);
select * from e4;


drop table e6;
create table e6(fname varchar(20),
constraint tushar_e6_chk check(fname = reverse(fname)));

insert into e6 values("raj");
select * from e6;



-- primary key:  ( uniquely identity)
-- not null and unique

drop table orders;

create table orders(oid int primary key, city varchar(20));
insert into orders values(112,"Jaipur");
select * from orders;

create table person(pid int, pname varchar(20), oid int,
foreign key (oid) references orders(oid) ) ;
insert into person values(10,"tushar",112);
select * from person;

select * from orders;

create table e8(id int primary key auto_increment, 
fname varchar(20));

insert into e8(fname) values("def");
select * from e8;

-- constraints
-- dml operation, ddl, tcl