use company;
-- employee record updation
-- update department of some employees
Update employee set Dno= 1 where ssn= 'I010001';
Update employee set Dno= 2 where ssn= 'I010002';
Update employee set Dno= 3 where ssn= 'I010003';
Update employee set Dno= 4 where ssn= 'I010004';



-- employee salary updation

-- update salary to 350000 and address to pune  of ekta bhaskar
Update employee set Salary='350000', Address='Pune' where ssn='I010009';

-- update hours allocated to all employees to 1 hour more who works on project diamani
Update  works_on set hours=hours+1 where Pno='1234';