use company;

-- fetching all employee records 
select * from company.employee;


-- fetching first name, last name and salary of all employees records
select fname,lname,salary from company.employee;

-- fetching first name, last name and salary of all employees records of department 1
select fname,lname,salary from company.employee where dno=1;

-- Write a query to display the names (fname, lname) using alias name “First Name", "Last Name"
select fname as 'First Name',lname as 'Last Name' from company.employee;


-- Write a query to find first name, salary , pf of all employees. pf is 15% of the salary
select fname as 'First Name', salary as salary, 0.15*salary as pf from employee;


-- fetching  distict departments from employee table
select distinct dno from employee;

