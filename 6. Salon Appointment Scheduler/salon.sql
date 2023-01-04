create database salon;

create table customers();
create table appointments();
create table services();

alter table customers add column customer_id serial primary key;
alter table customers add column phone varchar(30) unique;
alter table customers add column name varchar(30);
alter table appointments add column appointment_id serial primary key;
alter table appointments add column customer_id int;
alter table appointments add column time varchar(20);
alter table services add column service_id serial primary key;
alter table services add column name varchar(30);

alter table appointments add foreign key (customer_id) references customers(customer_id);
alter table appointments add foreign key (service_id) references services(service_id);