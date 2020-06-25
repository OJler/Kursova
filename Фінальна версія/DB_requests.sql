#показати таблицю article 
select*from article; 

#показати посади із зарплатою > 12000
select * from positions where salary > 12000;

#показати прізвище та ім'я працівників, що працюють в певному офісі
select employee_first_name, employee_lastname from employee where office_id ='1' ;

#показати перших двох працівників по алфавіту
select * from  employee order by employee_first_name asc limit 2;

#показати офіси номер телефону яких закінчужться на 8
select *from office where office_phone like '%8';

#показати тип товару готова продукція
select article_name, article_type from article
where article_type like 'completed product';

#показати посаду із бонусами між 500 і 1500 по спаданню суми
select position_name, bonus from positions where bonus between 500 and 1500 order by bonus desc; 

#показти 5 посад із найменшою зарплатою
select * from positions
group by position_name
order by min(Salary)
limit 5;

#сортувати товар за найменшою ціною
select * from article
group by article_name
order by min(article_price) ;

#показати тип товару запчастина 
SELECT * from article 
where article_type like 'part';

#показати локацію працівників за імене та типом офісів
SELECT employee_first_name, employee_lastname, office_name, office_type FROM employee join office on office.office_id=employee.office_id;

#показати і порахувати суму продажу товару вартістю більше 10000
select article.article_name, article.article_price, bill.amount, bill.amount*article.article_price as sum from bill join article on bill.article_id=article.article_id
where article.article_price > 10000;

#підвищити зарплату на 10% для працівників певної позиції
update positions set salary=salary*1.1 where position_id=4;	
