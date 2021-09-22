/** employee records insertion for managers **/


Insert into company.employee(fname,mname,lname,ssn,Bdate,Address,Sex,Salary)
values('Rajesh','','Bhaskar','I010001','1960-12-03','Marathali Banglopre', 'M' , '1000000');

Insert into company.employee(fname,mname,lname,ssn,Bdate,Address,Sex,Salary)
values('Rao','','Kanchana','I010002','1968-12-03','Dlehi', 'F' , '800000');

Insert into company.employee(fname,mname,lname,ssn,Bdate,Address,Sex,Salary)
values('Kasinath','','Sahoo','I010003','1965-12-03','Kolkata', 'M' , '500000');

Insert into company.employee(fname,mname,lname,ssn,Bdate,Address,Sex,Salary)
values('Raghabendra','','Ramakrishna','I010004','1976-12-03','Chennai', 'M' , '700000');

/** department records insertion **/

INSERT INTO `company`.`department` (`Dname`,`Dnumber`,`Mgr_ssn`,`Mgr_start_date`)
VALUES('CX',1,'I010001','2021-08-18');

INSERT INTO `company`.`department` (`Dname`,`Dnumber`,`Mgr_ssn`,`Mgr_start_date`)
VALUES('AI',2,'I010002','2021-08-18');

INSERT INTO `company`.`department` (`Dname`,`Dnumber`,`Mgr_ssn`,`Mgr_start_date`)
VALUES('FN',3,'I010003','2021-08-16');

INSERT INTO `company`.`department` (`Dname`,`Dnumber`,`Mgr_ssn`,`Mgr_start_date`)
VALUES('MK',4,'I010004','2021-08-16');


/** employee records insertion for non-managerial positions**/
Insert into company.employee(fname,mname,lname,ssn,Bdate,Address,Sex,Salary,Super_ssn,Dno)
values('Rakesh','','Agarwal','I010005','1998-12-08','Whitefield Banglopre', 'M' , '300000','I010001', 1);
Insert into company.employee   
values ('Jaya','','Agarwal','I010006','1997-10-08','Magarpata City Pune', 'M' , '300000','I010001', 1);
Use company;
Insert into employee   (fname,mname,lname,ssn,Bdate,Address,Sex,Salary,Super_ssn,Dno)
values ('Rakhi','','Mahapatro','I010007','1999-07-08','Debanagar Banglopre', 'F' , '300000','I010001', 1);
Insert into employee   (fname,mname,lname,ssn,Bdate,Address,Sex,Salary,Super_ssn,Dno)
values ('Pratik','','Mishra','I010008','1999-07-08','Whitefield Banglopre', 'F' , '300000','I010001', 1);


Insert into employee   (fname,mname,lname,ssn,Bdate,Address,Sex,Salary,Super_ssn,Dno)
values ('Ekta','','Bhaskar','I010009','1995-12-08','Whitefield Banglopre', 'F' , '300000','I010002', 2);
Insert into employee   (fname,mname,lname,ssn,Bdate,Address,Sex,Salary,Super_ssn,Dno)
values ('Steve','','Luo','I010010','1997-12-08','US Washington', 'M' , '300000','I010002', 2);
Insert into employee   (fname,mname,lname,ssn,Bdate,Address,Sex,Salary,Super_ssn,Dno)
values ('Harihar','','Venkata','I010011','1997-12-08','US Washington', 'M' , '300000','I010002', 2);
Insert into employee   (fname,mname,lname,ssn,Bdate,Address,Sex,Salary,Super_ssn,Dno)
values ('Anug','','Roy','I010012','1995-12-08','Bisarhali Banglopre', 'F' , '300000','I010002', 2);
Insert into employee   (fname,mname,lname,ssn,Bdate,Address,Sex,Salary,Super_ssn,Dno)
values ('Satish','','Kulkarni','I010013','1997-12-08','US Washington', 'M' , '300000','I010002', 2);
Insert into employee   (fname,mname,lname,ssn,Bdate,Address,Sex,Salary,Super_ssn,Dno)
values ('Pawan','','Pandit','I010014','1997-12-08','US Washington', 'M' , '300000','I010002', 2);


Insert into employee   (fname,mname,lname,ssn,Bdate,Address,Sex,Salary,Super_ssn,Dno)
values ('Nitika','','Bhaskar','I010015','1995-12-08','Whitefield Banglopre', 'F' , '300000','I010003', 3);
Insert into employee   (fname,mname,lname,ssn,Bdate,Address,Sex,Salary,Super_ssn,Dno)
values ('Vikas','','Kushwal','I010016','1997-12-08','US Washington', 'M' , '300000','I010003', 3);
Insert into employee   (fname,mname,lname,ssn,Bdate,Address,Sex,Salary,Super_ssn,Dno)
values ('Najar','','Roy','I010017','1997-12-08','US Washington', 'M' , '300000','I010003', 2);
Insert into employee   (fname,mname,lname,ssn,Bdate,Address,Sex,Salary,Super_ssn,Dno)
values ('Hasil','','Khan','I010018','1995-12-08','Whitefield Banglopre', 'M' , '300000','I010003', 3);

Insert into employee   (fname,mname,lname,ssn,Bdate,Address,Sex,Salary,Super_ssn,Dno)
values ('Runal','','Singh','I010019','1995-12-08','Banglopre city complex', 'M' , '300000','I010004', 4);
Insert into employee   (fname,mname,lname,ssn,Bdate,Address,Sex,Salary,Super_ssn,Dno)
values ('Abhishek','','Sriman','I010020','1997-12-08','US Washington', 'M' , '300000','I010004', 4);
Insert into employee   (fname,mname,lname,ssn,Bdate,Address,Sex,Salary,Super_ssn,Dno)
values ('Kurna','','Sharma','I010021','1997-12-08','US Washington', 'M' , '300000','I010004', 4);
Insert into employee   (fname,mname,lname,ssn,Bdate,Address,Sex,Salary,Super_ssn,Dno)
values ('Prdeep','','Mishra','I010022','1995-12-08','Whitefield Banglopre', 'F' , '300000','I010004', 4);

-- project records insertion

INSERT INTO `company`.`project` (`Pname`,`Pnumber`,`Plocation`,`Dnum`)
VALUES('Diamani',1234,'US California',1);

INSERT INTO `company`.`project` (`Pname`,`Pnumber`,`Plocation`,`Dnum`)
VALUES('ADF',1235,'Canada',1);

INSERT INTO `company`.`project` (`Pname`,`Pnumber`,`Plocation`,`Dnum`)
VALUES('Samsung',1236,'India',2);

INSERT INTO `company`.`project` (`Pname`,`Pnumber`,`Plocation`,`Dnum`)
VALUES('RSH-EAM',1237,'EU',3);

INSERT INTO `company`.`project` (`Pname`,`Pnumber`,`Plocation`,`Dnum`)
VALUES('Rio Tinto',1238,'China',4);


-- dept_locations records insertion

INSERT INTO `company`.`dept_locations`(`Dnumber`,`Dlocation`)
VALUES(1,'Bangaluru');

INSERT INTO `company`.`dept_locations`(`Dnumber`,`Dlocation`)
VALUES(2,'Pune');

INSERT INTO `company`.`dept_locations`(`Dnumber`,`Dlocation`)
VALUES(3,'Gurgaon');

INSERT INTO `company`.`dept_locations`(`Dnumber`,`Dlocation`)
VALUES(4,'Chennai');



-- works_on records insertion
INSERT INTO `company`.`works_on`(`Essn`,`Pno`,`Hours`) VALUES('I010005', 1234, 5.0 );
INSERT INTO `company`.`works_on`(`Essn`,`Pno`,`Hours`) VALUES('I010005', 1235, 3.0 );
INSERT INTO `company`.`works_on`(`Essn`,`Pno`,`Hours`) VALUES('I010006', 1234, 3.0 );
INSERT INTO `company`.`works_on`(`Essn`,`Pno`,`Hours`) VALUES('I010006', 1236, 2.5 );
INSERT INTO `company`.`works_on`(`Essn`,`Pno`,`Hours`) VALUES('I010006', 1237, 2.5 );
INSERT INTO `company`.`works_on`(`Essn`,`Pno`,`Hours`) VALUES('I010007', 1237, 6.0 );
INSERT INTO `company`.`works_on`(`Essn`,`Pno`,`Hours`) VALUES('I010007', 1234, 2.0 );
INSERT INTO `company`.`works_on`(`Essn`,`Pno`,`Hours`) VALUES('I010008', 1235, 4.0 );
INSERT INTO `company`.`works_on`(`Essn`,`Pno`,`Hours`) VALUES('I010008', 1236, 4.0 );
INSERT INTO `company`.`works_on`(`Essn`,`Pno`,`Hours`) VALUES('I010009', 1237, 8.0 );
INSERT INTO `company`.`works_on`(`Essn`,`Pno`,`Hours`) VALUES('I010010', 1238, 8.0 );
INSERT INTO `company`.`works_on`(`Essn`,`Pno`,`Hours`) VALUES('I010011', 1236, 8.0 );
INSERT INTO `company`.`works_on`(`Essn`,`Pno`,`Hours`) VALUES('I010012', 1234, 8.0 );
INSERT INTO `company`.`works_on`(`Essn`,`Pno`,`Hours`) VALUES('I010013', 1235, 8.0 );
INSERT INTO `company`.`works_on`(`Essn`,`Pno`,`Hours`) VALUES('I010014', 1237, 8.0 );
INSERT INTO `company`.`works_on`(`Essn`,`Pno`,`Hours`) VALUES('I010015', 1234, 8.0 );
INSERT INTO `company`.`works_on`(`Essn`,`Pno`,`Hours`) VALUES('I010016', 1235, 4.0 );
INSERT INTO `company`.`works_on`(`Essn`,`Pno`,`Hours`) VALUES('I010016', 1236, 4.0 );
INSERT INTO `company`.`works_on`(`Essn`,`Pno`,`Hours`) VALUES('I010019', 1234, 8.0 );
INSERT INTO `company`.`works_on`(`Essn`,`Pno`,`Hours`) VALUES('I010020', 1237, 4.0 );
INSERT INTO `company`.`works_on`(`Essn`,`Pno`,`Hours`) VALUES('I010020', 1236, 4.0 );
INSERT INTO `company`.`works_on`(`Essn`,`Pno`,`Hours`) VALUES('I010021', 1238, 8.0 );
INSERT INTO `company`.`works_on`(`Essn`,`Pno`,`Hours`) VALUES('I010022', 1235, 4.0 );
INSERT INTO `company`.`works_on`(`Essn`,`Pno`,`Hours`) VALUES('I010022', 1236, 4.0 );


-- dependent records insertion

INSERT INTO `company`.`dependent`
(`Essn`,`Dependent_name`,`Gender`,`Bdate`,`Relationship`)
VALUES ('I010009','Sushree Bhaskar','F','1970-08-10','Mother');

INSERT INTO `company`.`dependent`
(`Essn`,`Dependent_name`,`Gender`,`Bdate`,`Relationship`)
VALUES ('I010009','Bibhti Bhaskar','M','1970-08-10','Father');

INSERT INTO `company`.`dependent`
(`Essn`,`Dependent_name`,`Gender`,`Bdate`,`Relationship`)
VALUES ('I010005','Preety Agarwal','F','1970-08-10','Mother');

INSERT INTO `company`.`dependent`
(`Essn`,`Dependent_name`,`Gender`,`Bdate`,`Relationship`)
VALUES ('I010005','Acharya Agarwal','M','1960-08-10','Father');

INSERT INTO `company`.`dependent`
(`Essn`,`Dependent_name`,`Gender`,`Bdate`,`Relationship`)
VALUES ('I010003','Chikesh Sahoo','M','1999-08-10','Kid');

INSERT INTO `company`.`dependent`
(`Essn`,`Dependent_name`,`Gender`,`Bdate`,`Relationship`)
VALUES ('I010003','Randip Sahoo','M','1960-08-10','Father');

INSERT INTO `company`.`dependent`
(`Essn`,`Dependent_name`,`Gender`,`Bdate`,`Relationship`)
VALUES ('I010008','Rajanee Mishra','F','1960-08-10','Mother');

INSERT INTO `company`.`dependent`
(`Essn`,`Dependent_name`,`Gender`,`Bdate`,`Relationship`)
VALUES ('I010010','Prakas Bhaskar','M','1960-08-10','Father');
