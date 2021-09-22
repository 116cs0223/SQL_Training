-- like operator
# list of employees whose address contains string white in it
Select fname,lname,address from employee where Address like '%white%'; 
# list of employees whose birth year lies in 1960 to 1969
Select fname,lname,Bdate from employee where Bdate like '196_______';

-- between operator
# list of employees whose salary lie between 5 and 7 lakh
Select fname,lname,Salary from employee where (salary between 500000 and 700000); 

-- in operator
# list of employees who work for any one the departments having department number as 1,2 or 3
Select * from employee where Dno IN (1,2,3);

-- IS operator
# findout list of employees who are not managed by any supervisor.
Select fname,lname from employee where Super_ssn IS NULL; 

-- max, min,sum,avg function
# findout total no of employees, total salary, minimum salary, maximum salary, average salary of all employees
Select count(*),sum(salary), max(salary), min(salary), avg(salary) from employee;

-- group by, order by, having
# find employees ordered by their salary in descending order
select fname,lname,salary from employee order by Salary desc;

# find no of employees working in each department and 
# average salary of employees in respective department
select dno,count(*), avg(salary) from employee group by dno;

# find no of employees working in each project
select Pno,count(*) from works_on group by Pno;

# find no of employees working in each project where at least 3 employees work
select pno,count(*) from works_on group by Pno having count(*)>=3;

