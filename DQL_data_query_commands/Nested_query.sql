-- list of all project  where some employees are from CX team work
use company;
-- select ssn from employee,department where Dname='CX' and employee.Dno=department.Dnumber;
select distinct Pname,Pno from project, works_on where project.Pnumber =  works_on.Pno AND works_on.Essn in (select ssn from employee,department where Dname='CX' and employee.Dno=department.Dnumber );


select ssn from employee,department where Dname='CX' and employee.Dno=department.Dnumber;
select * from works_on;
select distinct Pno from works_on  where works_on.Essn in (select ssn from employee,department where Dname='CX' and employee.Dno=department.Dnumber );

-- findout the project where the last name of the employee is Bhaskar and the employee works as a worker or manager of the department that controls projects
(select distinct Pnumber from project,department, employee 
where Dnum=Dnumber and Mgr_ssn=ssn and lname='Bhaskar')
UNION
(select distinct Pnumber from project,works_on, employee 
where Pno=Pnumber and Essn=ssn and lname='Bhaskar');

-- list out all employees who work in any one the projects where employee Vikas works.
Select distinct Essn from works_on where (Pno) In (select Pno from works_on where Essn='I010016');

-- list out managers who at least have one dependent
Select fname,lname,ssn from employee,department where ssn=Mgr_ssn and exists (select 1 from dependent where Essn=ssn);

