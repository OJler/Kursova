select*from article;
select * from positions where salary > 12000;
select  employee_first_name from employee where position_id ='administrator' ;
select * from  employee order by employee_first_name asc limit 2;
select *from office where office_phone like '%8';
select article_name, article_type from article
    where article_type like 'completed product';	
select  sum(article_price) from article;
select position_name, bonus from positions where bonus between 500 and 1500; 
select position_name, Max(salary) from positions;
select * from positions
    group by position_name
        order by min(Salary)
            limit 5;
select * from article
    group by article_name
    order by min(article_price) ;
SELECT * from article 
where article_type like 'part';
SELECT*FROM employee join office on office.office_id=employee.office_id;

	