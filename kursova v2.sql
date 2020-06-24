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

USE f1rm;
CREATE TABLE positions(
position_id INT AUTO_INCREMENT PRIMARY KEY,
position_name VARCHAR(30),
salary INT,
bonus int,
office_id int,
constraint fk_office_id foreign key (office_id) references office (office_id));
insert into positions Values(null, 'cleaner',7000,1000,1);

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
       constraint fk_article_id2 foreign key (article_id) references article (article_id),
       office_id int,
       constraint fk_office_id2 foreign key (office_id) references office (office_id),
       employee_id int,
       constraint fk_employee_id2 foreign key (employee_id) references employee (employee_id),
       amount int);
       insert into ordering values(null,'output',5,2,2,10);
       insert into ordering values(null,'input',4,3,2,5);
       
       
     use f1rm;  
	Create table bill(
         bill_id INT AUTO_INCREMENT PRIMARY KEY,
         bill_type varchar(30),
             article_id int,
			 constraint fk_article_id3 foreign key (article_id) references article (article_id),
             office_id int,
             constraint fk_office_id3 foreign key (office_id) references office (office_id),
             employee_id int,
			 constraint fk_employee_id3 foreign key (employee_id) references employee (employee_id),
              customer_id int,
				amount int,
                summ int);
					insert into bill values(null,'input',9,3,2,2,10,45000);
       
  
  
	










