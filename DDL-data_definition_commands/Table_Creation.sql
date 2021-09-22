
CREATE TABLE company.employee
(
	fname varchar(15) not null,
    mname char null,
    lname varchar(15) not null,
    ssn char(9) not null,
    Bdate DATE,
    Address varchar(35) not null,
    Sex char null,
    Salary decimal (10,2) null,
    Super_ssn char(9) NULL,
    Dno INT NULL,
    PRIMARY KEY (ssn)
	);



Create table company.department 
(
	Dname varchar(15) not null,
    Dnumber int not null,
    Mgr_ssn char(9) not null,
    Mgr_start_date date NULL,
    primary key (Dnumber)
	
);


Use company;

Create table dept_locations
(
	Dnumber int not null,
    Dlocation varchar(15) not null,
    primary key (Dnumber, Dlocation)
);



Create table project
(
	Pname varchar(15) not null,
    Pnumber int not null,
    Plocation varchar(15),
    Dnum int not null,
    Primary key (pnumber),
    unique(Pname)
);



Create table works_on
(
	Essn char(9) not null,
    Pno int not null,
    Hours decimal(3,1) not null,
    primary key (Essn, Pno)
);



Create table dependent
(
	Essn char(9) not null,
    Dependent_name varchar(15) not null,
    Gender char,
    Bdate date,
    address varchar(30),
    Relationship varchar(10),
    check (Relationship in ('Mother','Father','Spouse','Kid')),
    primary key (Essn, Dependent_name)

);