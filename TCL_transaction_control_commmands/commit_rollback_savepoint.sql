use company;
SET SESSION autocommit = 0;

Create table class 
(
	Rollno int not null,
    Name varchar(35) null,
    primary key (Rollno)
);
insert into class values(1,'Kaur');
insert into class values(2,'Rakhi');
insert into class values(3,'Punam');
insert into class values(4,'Aditi');
commit;


Select * from class;

INSERT INTO class VALUES(5, 'Rahul');
COMMIT;

UPDATE class SET name = 'Abhijit' WHERE Rollno = '5';

SAVEPOINT A;

INSERT INTO class VALUES(6, 'Chris');

SAVEPOINT B;

INSERT INTO class VALUES(7, 'Bravo');

SAVEPOINT C;

SELECT * FROM class;

ROLLBACK TO B;

SELECT * FROM class;

ROLLBACK TO A;
SELECT * FROM class;

Rollback;
SELECT * FROM class;