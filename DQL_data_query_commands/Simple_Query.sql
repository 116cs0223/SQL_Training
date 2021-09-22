-- fetching employee records who are in department 1
select fname,lname,salary from company.employee where dno=1;


use company;
-- find the list of name of the manager who manage different projects, the project they manage, their department and their Birthday
select fname,lname,Pnumber,Pname,Dno,Dname,Bdate 
from project,department,employee 
where project.Dnum=department.Dnumber and department.Mgr_ssn=employee.ssn ;

-- renaming the coulmns in select query
-- list of employees with their respective manager
select E.fname , E.lname, S.fname, S.lname from employee AS E, employee as S where E.Super_ssn = S.ssn;


-- project operation
-- distict department where employee belong to
select distinct dno from employee;

-- cross product
select ssn, Bdate, Dname from employee,department;

--  (all coulmns)
Select * from employee, department where Dname='CX' and Dno=Dnumber;
