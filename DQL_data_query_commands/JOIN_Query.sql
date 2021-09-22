-- join

# fetching all employee records 
select * from company.employee;

# fetching all employee records along with their department details
select * from 
company.employee e
join company.department d on e.Dno=d.Dnumber
;

# fetching all employee records along with their department details and department_location details
select * from 
company.employee e
join company.department d on e.Dno=d.Dnumber
join company.dept_locations dl on d.Dnumber=dl.Dnumber
;

# fetching employee first name,last name, their department name, their department location
select 
e.fname ,
e.lname ,
d.Dname ,
dl.Dlocation 
from 
company.employee e
join company.department d on e.Dno=d.Dnumber
join company.dept_locations dl on d.Dnumber=dl.Dnumber;

# fetching employee first name,last name, their department name, their department location where department is located in "Bangaluru"
select 
e.fname, e.lname, d.Dname, dl.Dlocation 
from company.employee e
join company.department d on e.Dno=d.Dnumber
join company.dept_locations dl on d.Dnumber=dl.Dnumber
where dl.Dlocation='Bangaluru';


# fetching employee first name, last name, address of employees who work for department "CX"
select e.fname,e.lname,e.address
from employee e
join department d on e.Dno=d.Dnumber
where Dname='CX';

# fetching employee with their supervisor details
select E.fname as employee , S.fname as supervisor  
from employee E 
left join employee S 
on S.ssn=E.Super_ssn;


