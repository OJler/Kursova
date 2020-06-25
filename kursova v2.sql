CREATE DATABASE f1rm;
USE f1rm;
CREATE TABLE office(
office_id INT AUTO_INCREMENT PRIMARY KEY,
office_name VARCHAR(30),
office_type VARCHAR(30),
office_phone INT,
office_adress VARCHAR(30));

INSERT INTO office VALUES(NULL, 'salash', 'administration', 0997658120, 'Lviv,Kruvchuci 11');
INSERT INTO office VALUES(NULL, 'niisan', 'workshop', 880055335, 'Lviv,Zelena 5');
INSERT INTO office VALUES(NULL, 'gazda', ' warehouse ', 0685748413, 'Lviv,Kulparkivska 34');
INSERT INTO office VALUES(NULL, 'gospodar', 'warehouse', 0674565578, 'Lviv,Patona 23a');

USE f1rm;
CREATE TABLE employee(
employee_id INT AUTO_INCREMENT PRIMARY KEY,
employee_first_name VARCHAR(30),
employee_lastname VARCHAR(30),
position_id INT,
constraint fk_position_employee foreign key (position_id) REFERENCES positions (position_id),
office_id INT,
constraint fk_office_employee FOREIGN KEY (office_id) REFERENCES office (office_id));
	insert into employee values(null,'Igor','Smirnof',1,1);
    insert into employee values(null,'Oleg','Kuzmenko',2,2);
    insert into employee values(null,'Irina','Pidgrushna',3,3);
    insert into employee values(null,'Max','Fetisov',4,4);

USE f1rm;
CREATE TABLE positions(
position_id INT AUTO_INCREMENT PRIMARY KEY,
position_name VARCHAR(30),
salary INT,
bonus int);
insert into positions Values(null, 'cleaner',7000,300);
insert into positions Values(null, 'manager',15000,1000);
insert into positions Values(null, 'constructors',13000,1200);
insert into positions Values(null, 'accountants',10000,1000);
insert into positions Values(null, 'director',17000,2000);
insert into positions Values(null, 'worker',10000,800);
insert into positions Values(null, 'engenier',13000,1000);
insert into positions Values(null, 'technologist',12000,1100);
insert into positions Values(null, 'warehouseman',10000,700);
insert into positions Values(null, 'security',9000,1000);

use f1rm;
create table article(
article_id INT AUTO_INCREMENT PRIMARY KEY,
article_type VARCHAR(30),
article_category VARCHAR(30),
article_name VARCHAR(30),
article_price INT);
INSERT INTO article VALUES(NULL, 'completed product', 'cellphone', 'iphone, 10', 50000 );
INSERT INTO article VALUES(NULL, 'completed product', 'cellphone', 'samsung, galaxy,9', 30000 );
INSERT INTO article VALUES(NULL, 'completed product', 'laptop', 'acer, aspire, e15', 22000 );
INSERT INTO article VALUES(NULL, 'part','vedeocard', 'nvidia, geforce, 1070ti', 8000 );
INSERT INTO article VALUES(NULL, 'completed product', 'laptop', 'lenovo, yoga', 12000 );
INSERT INTO article VALUES(NULL, 'completed product', 'tablet', 'nexus,7', 15000 );
INSERT INTO article VALUES(NULL, 'completed product', 'cellphone', 'samsung, galaxy, note', 18000 );
INSERT INTO article VALUES(NULL, 'completed product', 'tablet', 'hp, transformer', 25000 );
INSERT INTO article VALUES(NULL, 'part', 'procesor', 'intelcore, i9', 14000 );
INSERT INTO article VALUES(NULL, 'part', 'videocard', 'radeon, hd, graphics', 8000 );


use f1rm;
CREATE TABLE customer (
customer_id INT AUTO_INCREMENT PRIMARY KEY,
 customer_name VARCHAR(30),
  customer_type INT);
  insert into customer values(null,'eldorado',0);
  insert into customer values(null,'rozetka',1);
  insert into customer values(null,'electrosvit',2);
  
  
  use f1rm;
  CREATE TABLE ordering (
  ordering_id INT AUTO_INCREMENT PRIMARY KEY,
  ordering_type VARCHAR(30),
  article_id int,
       constraint fk_article_id foreign key (article_id) references article (article_id),
       employee_id int,
       constraint fk_employee_id foreign key (employee_id) references employee (employee_id),
       amount int);
       insert into ordering values(null,'output',5,2,10);
       insert into ordering values(null,'input',4,3,5);
       insert into ordering values(null,'output',7,4,7);
       insert into ordering values(null,'input',9,1,2);
       
       
     use f1rm;  
	Create table bill(
         bill_id INT AUTO_INCREMENT PRIMARY KEY,
         bill_type varchar(30),
             article_id int,
			 constraint fk_article_id2 foreign key (article_id) references article (article_id),
             employee_id int,
			 constraint fk_employee_id2 foreign key (employee_id) references employee (employee_id),
              customer_id int ,
              constraint fk_customer_id2 foreign key (customer_id) references customer (customer_id),
				amount int,
                summ int);
					insert into bill values(null,'input',9,2,2,10,45000);
                    insert into bill values(null,'output',3,1,3,10,22000);
       
  
  
	










