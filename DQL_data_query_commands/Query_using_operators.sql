-- like operator
Select fname,lname,address from employee where Address like '%white%';
Select fname,lname,Bdate from employee where Bdate like '196_______';

-- between operator
Select fname,lname,Salary from employee where (salary between 500000 and 700000);

-- IS operator
Select fname,lname from employee where Super_ssn IS NULL;

-- max, min,sum,avg 
Select count(*),sum(salary), max(salary), min(salary), avg(salary) from employee;

-- group by, order by, having

select fname,lname,salary from employee order by Salary desc;

select count(*), avg(salary), dname from employee,department where Dno=Dnumber group by dno;

select count(*),Pname from works_on,project where pno=Pnumber group by Pnumber,Pname;

select count(*),Pname from works_on,project where pno=Pnumber group by Pnumber,Pname having count(*)>2;

-- join

select fname,lname,address
from (employee join department on Dno=Dnumber)
where Dname='CX';

select E.fname as employee , S.fname as supervisor  from (employee E left join employee S on S.ssn=E.Super_ssn);


