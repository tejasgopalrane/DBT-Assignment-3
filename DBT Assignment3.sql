use assignment3;
create table Department (
dept_id integer not null primary key,
dept_name varchar(50));

insert into Department values (1,"Finance");
insert into Department values (2,"Training");
insert into Department values (3,"Marketing");

create table Employee(
empid integer not null primary key,
emp_name varchar(20),
salary	integer(7),
dept_id integer(4),
CONSTRAINT dept_id_fk FOREIGN KEY (dept_id) REFERENCES Department(dept_id));

insert into Employee values(1,"Arun",25000,1);
insert into Employee values(2,"Kiran",15000,1);
insert into Employee values(3,"Scott",35000,2);
insert into Employee values(4,"Max",16000,2);
insert into Employee values(5,"Jack",30000,3);
insert into Employee values(6,"King",10000,3);

CREATE TABLE  AUTHORS
(
    AUID INT(5),
    ANAME  VARCHAR(30),
    EMAIL  VARCHAR(50),
    PHONE  VARCHAR(30)
);

INSERT INTO AUTHORS VALUES (101, 'HERBERT SCHILD','HERBERT@YAHOO.COM',NULL);
INSERT INTO AUTHORS VALUES (102, 'JAMES GOODWILL','GOODWILL@HOTMAIL.COM',NULL);
INSERT INTO AUTHORS VALUES (103, 'DAVAID HUNTER','HUNTER@HOTMAIL.COM',NULL);
INSERT INTO AUTHORS VALUES (104, 'STEPHEN WALTHER','WALTHER@GMAIL.COM',NULL);
INSERT INTO AUTHORS VALUES (105, 'KEVIN LONEY','LONEY@ORACLE.COM',NULL);
INSERT INTO AUTHORS VALUES (106, 'ED. ROMANS','ROMANS@THESERVERSIDE.COM',NULL);

CREATE TABLE PUBLISHERS
(
    PUBID INT(3),
    PNAME  VARCHAR(30),
    EMAIL  VARCHAR(50),
    PHONE  VARCHAR(30)
);

INSERT INTO PUBLISHERS VALUES (1,'WILLEY','WDT@VSNL.NET','91-11-23260877');
INSERT INTO PUBLISHERS VALUES (2,'WROX','INFO@WROX.COM',NULL);
INSERT INTO PUBLISHERS VALUES (3,'TATA MCGRAW-HILL','FEEDBACK@TATAMCGRAWHILL.COM','91-11-33333322');
INSERT INTO PUBLISHERS VALUES (4,'TECHMEDIA','BOOKS@TECHMEDIA.COM','91-11-33257660');

/*******************************ORDER BY*************************************/
SELECT * FROM AUTHORS ORDER BY ANAME ASC;
SELECT * FROM PUBLISHERS ORDER BY PNAME DESC;

/******************************GROUP BY***************************************/
SELECT empid,emp_name,dept_id,salary, SUM(salary) 
FROM  Employee 
GROUP BY  dept_id;

SELECT * FROM Employee 
WHERE salary>17000 
GROUP BY dept_id;

/******************************HAVING***************************************/
SELECT dept_id,sum(salary)
 FROM Employee GROUP BY dept_id 
 HAVING sum(salary) > 18000 ;
 
 SELECT dept_id,sum(salary) FROM Employee 
 GROUP BY dept_id 
 HAVING sum(salary) < 20000;
 
 




