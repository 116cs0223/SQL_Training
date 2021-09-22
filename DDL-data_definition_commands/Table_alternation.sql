-- add foreign key contraint in company database
Alter table department add CONSTRAINT FK_department_employee foreign key  (Mgr_ssn) references employee(ssn);
Alter Table employee add CONSTRAINT FK_employee_employee foreign key (Super_ssn) references employee(ssn);
Alter table employee add CONSTRAINT FK_employee_department foreign key (Dno) references  department(Dnumber);
Alter table dept_locations add CONSTRAINT FK_dept_locations_department foreign key (Dnumber) references department(Dnumber);
Alter Table project add CONSTRAINT FK_project_department foreign key (Dnum) references department(Dnumber);
Alter table works_on add CONSTRAINT FK_works_on_employee foreign key (Essn) references  employee(ssn);
Alter table works_on add CONSTRAINT FK_works_on_project foreign key (Pno) references project(Pnumber);
Alter Table dependent add CONSTRAINT FK_dependent_employee foreign key (Essn) references employee(ssn);




-- update column length for fname of employee to 20
Alter table employee modify fname varchar(20) not null;


-- drop address column from dependent table
Alter table dependent drop address;