drop database retail;
create database retail;
use retail;

create table customer(custno int auto_increment primary key, name varchar(20), shipto varchar(40));
create table product(prodno int auto_increment primary key, descrip varchar(100), price double);
create table orders(orderno int NOT NULL AUTO_INCREMENT primary key, custno int not null, delivery varchar(5),foreign key (custno) references customer(custno));
create table details(custno int, orderno int, prodno int, quantity int, primary key(custno, orderno, prodno), constraint cust_fk foreign key (custno) references customer(custno), 
constraint order_fk foreign key (orderno) references orders(orderno), constraint prod_fk foreign key (prodno) references product(prodno));

insert into customer (name, shipto) values ( "ABC, Inc.", "ABC's shipping address");
insert into customer (name, shipto) values ( "GHI Products", "GHI's shipping address");
insert into customer (name, shipto) values ( "NMO Online", "NMO's shipping address");
insert into customer (name, shipto) values ( "STU Ltd.", "STU's shipping address");

insert into orders (custno, delivery) values(1, '10/20');
insert into orders (custno, delivery) values(2, '9/19');
insert into orders (custno, delivery) values(3, '11/17');
insert into orders (custno, delivery) values(4, '12/1');

insert into product (descrip, price) values ("Product 1", 10367);
insert into product (descrip, price) values ("Product 2", 367.97);
insert into product (descrip, price) values ("Product 3", 1865.5);
insert into product (descrip, price) values ("Product 4", 9450);
insert into product(descrip, price) values ("Product 5", 29346.99);

insert into details (custno, orderno, prodno, quantity) values (1,1,4,10);
insert into details (custno, orderno, prodno, quantity) values (2,2,1,1);
insert into details (custno, orderno, prodno, quantity) values (2,2,3,2);
insert into details (custno, orderno, prodno, quantity) values(2,2,5,1);
insert into details (custno, orderno, prodno, quantity) values(4,3,2,10);
insert into details (custno, orderno, prodno, quantity) values(4,3,4,3);
insert into details (custno, orderno, prodno, quantity) values(4,4,1,1);
insert into details (custno, orderno, prodno, quantity) values(4,4,2,5);
insert into details (custno, orderno, prodno, quantity) values(4,4,4,1);
insert into details (custno, orderno, prodno, quantity) values(4,4,5,2);

create index details_index on details (orderno, custno);

 select * from customer;
 select * from product;
 select * from orders;
 select * from details;

