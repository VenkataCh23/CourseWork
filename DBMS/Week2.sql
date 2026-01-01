create table Employees(
	Empno Numeric,
    Ename varchar(20),
    Job Varchar(20),
    Mgr Numeric,
    Sal Numeric
);

INSERT INTO Employees Values 
(1, 'John', 'Manager', 30, 18000),
(2, 'Alice', 'Developer', 1, 22000),
(3, 'Peter', 'Analyst', 1, 16000),
(4, 'Jane', 'Clerk', 2, 19000),
(5, 'James', 'Manager', null, 20000);
select* from Employees;
Select Empno,Ename from Employees where sal between 15000 and 20000;

Select Ename from Employees where Ename like 'A%';

Select Ename from Employees where Ename like 'P%S';

Select Ename from Employees where Ename like 'J_____';

alter table Employees add Jdate date;

update Employees set Jdate = '2020-01-01' where Empno=1;
update Employees set Jdate = '2020-02-15' where Empno=2;
update Employees set Jdate = '2020-03-10' where Empno=3;
update Employees set Jdate = '2020-05-05' where Empno=4;
update Employees set Jdate = '2020-12-20' where Empno=5;
select* from Employees;
Select Ename from Employees where Jdate between '2020-02-12' and '2021-03-15';

Select distinct Ename from Employees where Ename like '%u';

update Employees set Sal=Sal+1000 where Jdate between '2020-02-12' and '2021-03-15';

--------------------------------------------------------------------
CREATE TABLE departments (
    Deptno Numeric,
    Deptname VARCHAR(20),
    Location VARCHAR(20)
);

INSERT INTO departments (Deptno, Deptname, Location) VALUES
(100, 'Biotechnology', 'Hyderabad'),
(101, 'Chemistry', 'Vizag'),
(102, 'Computer Science', 'Hyderabad'),
(103, 'Physics', 'Bangalore'),
(104, 'Mathematics', 'Vijayawada'),
(104, 'Mathematics', 'Guntur'),
(105, 'Civil Engineering', 'Guntur'),
(106, 'Electrical Eng', 'Chennai'),
(107, 'Mechanical Eng', 'Mumbai'),
(108, 'Environmental', 'Hyderabad'),
(109, 'Economics', 'Delhi');

SELECT Deptno, Deptname FROM departments WHERE Location IN ('Hyderabad', 'Vizag', 'Vijayawada', 'Guntur');

SELECT hi.Deptno 
FROM (SELECT Deptno FROM departments WHERE Location = 'Guntur') AS hi 
JOIN departments ON hi.Deptno = departments.Deptno
WHERE departments.Location = 'Vijayawada'
LIMIT 1000;


SELECT Deptno FROM departments WHERE Location IN ('Hyderabad', 'Bangalore');

SELECT Deptname FROM departments WHERE Location NOT IN ('Vizag', 'Vijayawada');

SELECT Location FROM departments WHERE Deptname = 'Biotechnology' AND Deptno = 100;

SELECT Deptname FROM departments WHERE Deptname LIKE 'C%' AND Location = 'Hyderabad';

SELECT Deptno FROM departments WHERE Location not in ('Vizag');

SELECT Location FROM departments WHERE NOT Location LIKE 'h%';
Insert into Employees values
(8, 'Jack', 'Analyst', 1, 21000, '2021-03-14'),
(9, 'Laura', 'Developer', 5, 19500, '2021-02-01'),
(10, 'Paula', 'Clerk', 2, 17500, '2021-04-07');
select * from Employees;
Select Empno,Ename from Employees where sal between 15000 and 20000;

Select Ename from Employees where Ename like 'A%';

Select Ename from Employees where Ename like 'P%S';

Select Ename from Employees where Ename like 'J_____';

Select Ename from Employees where Jdate between '2020-02-12' and '2021-03-15';

Select distinct Ename from Employees where Ename like '%u';

update Employees set Sal=Sal+1000 where Jdate between '2020-02-12' and '2021-03-15';

--------------------------------------------------------------------
CREATE TABLE departments_2 (
    Deptno Numeric,
    Deptname VARCHAR(20),
    Location VARCHAR(20)
);

INSERT INTO departments_2 (Deptno, Deptname, Location) VALUES
(100, 'Biotechnology', 'Hyderabad'),
(101, 'Chemistry', 'Vizag'),
(102, 'Computer Science', 'Hyderabad'),
(103, 'Physics', 'Bangalore'),
(104, 'Mathematics', 'Vijayawada'),
(105, 'Civil Engineering', 'Guntur'),
(106, 'Electrical Eng', 'Chennai'),
(107, 'Mechanical Eng', 'Mumbai'),
(108, 'Environmental', 'Hyderabad'),
(109, 'Economics', 'Delhi');

SELECT Deptno, Deptname FROM departments WHERE Location IN ('Hyderabad', 'Vizag', 'Vijayawada', 'Guntur');

SELECT Deptno FROM departments WHERE Location IN ('Guntur', 'Vijayawada');

SELECT Deptno FROM departments WHERE Location IN ('Hyderabad', 'Bangalore');

SELECT Deptname FROM departments_2 WHERE Location NOT IN ('Vizag', 'Vijayawada');

SELECT Location FROM departments_2 WHERE Deptname = 'Biotechnology' AND Deptno = 100;

SELECT Deptname FROM departments_2 WHERE Deptname LIKE 'C%' AND Location = 'Hyderabad';

SELECT Deptno FROM departments_2 WHERE Location not in ('Vizag');

SELECT Location FROM departments_2 WHERE NOT Location LIKE 'h%';


--------------------------------------------------------------------

CREATE TABLE student (
    sno INT(10),
    sname VARCHAR(20),
    sage INT(10)
);

CREATE TABLE teacher (
    tno INT(10),
    tname VARCHAR(20),
    tage INT(10)
);

INSERT INTO student (sno, sname, sage) VALUES
(1, 'John', 20),
(2, 'Alice', 22),
(3, 'Bob', 21),
(4, 'Emma', 19),
(5, 'David', 23);

INSERT INTO teacher (tno, tname, tage) VALUES
(101, 'Mr. Smith', 30),
(102, 'Ms. Johnson', 28),
(103, 'Dr. Davis', 35),
(104, 'Mrs. Wilson', 32),
(105, 'Prof. Brown', 27);

SELECT tno, tname FROM teacher WHERE tage > ANY (SELECT sage FROM student);

SELECT tno, tname FROM teacher WHERE tage > ALL (SELECT sage FROM student);


SELECT tno, tname FROM teacher WHERE tage < ANY (SELECT sage FROM student);


SELECT tno, tname FROM teacher WHERE tage < ALL (SELECT sage FROM student);


SELECT sname FROM student WHERE sage > ANY (SELECT tage FROM teacher) ORDER BY sage LIMIT 1; 
