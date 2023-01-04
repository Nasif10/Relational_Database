create database bikes;

create table bikes();
alter table bikes add column bike_id serial primary key;
alter table bikes add column type varchar(50) not null;.
alter table bikes add column size int not null;
alter table bikes add column available boolean not null default true;

CREATE TABLE customers();
ALTER TABLE customers ADD COLUMN customer_id SERIAL PRIMARY KEY;
ALTER TABLE customers ADD COLUMN phone VARCHAR(15) NOT NULL UNIQUE;
ALTER TABLE customers ADD COLUMN name VARCHAR(40) NOT NULL;

CREATE TABLE rentals();
ALTER TABLE rentals ADD COLUMN rental_id SERIAL PRIMARY KEY;
ALTER TABLE rentals ADD COLUMN customer_id INT NOT NULL;
ALTER TABLE rentals ADD FOREIGN KEY(customer_id) REFERENCES customers(customer_id);
ALTER TABLE rentals ADD COLUMN bike_id INT NOT NULL;
ALTER TABLE rentals ADD FOREIGN KEY(bike_id) REFERENCES bikes(bike_id);
ALTER TABLE rentals ADD COLUMN date_rented DATE NOT NULL DEFAULT NOW();
ALTER TABLE rentals ADD COLUMN date_returned DATE;

INSERT INTO bikes(type, size) VALUES('Mountain', 27);
INSERT INTO bikes(type, size) VALUES('Mountain', 28);
INSERT INTO bikes(type, size) VALUES('Mountain', 29);
INSERT INTO bikes(type, size) VALUES('Road', 27);
INSERT INTO bikes(type, size) VALUES('Road', 28); 
INSERT INTO bikes(type, size) VALUES('Road', 29);
INSERT INTO bikes(type, size) VALUES('BMX', 19); 
INSERT INTO bikes(type, size) VALUES('BMX', 20), 
INSERT INTO bikes(type, size) VALUES('BMX', 21);
