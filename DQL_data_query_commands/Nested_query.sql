-- list of all project  where some employees are from CX team work
use company;

----------- list down employee records who are having only one dependency---------------

# step-1 : fetch the employee ssn from dependency table who satify this condition
select Essn from company.dependent group by Essn having count(*)=1;

# step-2 : Use this as an inner query to fetch complete employee details from employee table
select * from employee where ssn IN (select Essn from company.dependent group by Essn having count(*)=1 );
----------------------------------------------------------------------------------


----------- list down managers records i.e. employees who are managing some department---------------

# step-1 : fetch the manager ssn from department table who satify this condition
select Mgr_ssn from company.department where Mgr_ssn is not null;

# step-2 : Use this as an inner query to fetch complete manager details from employee table
select * from employee where ssn IN (select Mgr_ssn from company.department where Mgr_ssn is not null );

--------------------------------------------------------------------------------------

-------------------- fetching employee first name, last name, address of employees who work for department "CX" ---------
# step-1 : fetch the department no for "CX" department from department table
select Dnumber from company.department where Dname='CX';

# step-2 : Use this as an inner query to fetch employee details for this department
select * from employee where Dno = (select Dnumber from company.department where Dname='CX');

---------------------------------------------------------------------------------------------------------------------

-- findout the project where the last name of the employee is Bhaskar and the employee works as a worker or manager of the department that controls projects-----

# step 1: find out employee ssn whose last name is Bhaskar
Select ssn from company.employee where lname='Bhaskar';

# step 2: find out project no where such employees work
Select Pno from works_on where Essn in (Select ssn from company.employee where lname='Bhaskar');

# step 3: find project details from above project no
Select * from company.project where Pnumber IN (Select Pno from works_on where Essn in (Select ssn from company.employee where lname='Bhaskar'));

# step 4 : find out department no where last name of manager is Bhaskar
Select Dnumber from company.department where Mgr_ssn IN (Select ssn from company.employee where lname='Bhaskar');

# step 5 : find out project details which is managed by such department
Select * from company.project where Dnum IN (Select Dnumber from company.department where Mgr_ssn IN (Select ssn from company.employee where lname='Bhaskar'));

# step 6 : combine step 3 and step 5 to get all the project details'
Select Pnumber,Pname from company.project where Pnumber IN (Select Pno from works_on where Essn in (Select ssn from company.employee where lname='Bhaskar'))
union
Select Pnumber,Pname from company.project where Dnum IN (Select Dnumber from company.department where Mgr_ssn IN (Select ssn from company.employee where lname='Bhaskar'));

----------------------------------------------------------------------------------------------------------------------------
# same using join
(select distinct p.Pnumber,p.Pname from project p
join department d on p.Dnum=d.Dnumber
join employee e on d.Mgr_ssn=e.ssn
where e.lname='Bhaskar')
UNION
(select distinct p.Pnumber,p.Pname from project p
join works_on w on w.Pno=p.Pnumber
join employee e on w.Essn = e.ssn
where e.lname='Bhaskar');


-- list out all employees (name and ids) who work in any one the projects where employee Vikas works. We know ssn of Vikas is I010016  ----------------------
#step 1: find list of project number from works_on table where employee Vikas (I010016) works
select Pno from works_on where Essn='I010016';
#step 2: find all the employee ssn from works_on table who work in any one of the above projects
Select distinct Essn from works_on where Pno In (select Pno from works_on where Essn='I010016');

#step 3: find employee name and ssn from employee table with above ids
Select fname,lname,ssn from employee where ssn In ( Select distinct Essn from works_on where Pno In (select Pno from works_on where Essn='I010016'));

------------------------------------------------------------------------------------------------------------
