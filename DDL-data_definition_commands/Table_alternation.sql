Alter table department add foreign key (Mgr_ssn) references employee(ssn);
Alter Table employee add foreign key (Super_ssn) references employee(ssn);
Alter table employee add foreign key (Dno) references  department(Dnumber);
Alter table dept_locations add foreign key (Dnumber) references department(Dnumber);
Alter Table project add foreign key (Dnum) references department(Dnumber);
Alter table works_on add foreign key (Essn) references  employee(ssn);
Alter table works_on add foreign key (Pno) references project(Pnumber);
Alter Table dependent add foreign key (Essn) references employee(ssn);