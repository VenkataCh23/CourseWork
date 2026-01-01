select abs(-243.5);

select ceil(25.75);

select floor(25.75);

select mod(18,4);

select pow(4,2);

select rand();

select round(135.375,2);

select sqrt(64);

select sin(2);

-------------------------------------------------------------------
select concat("sql","is","fun...");

select lcase("SQL TUT IS FUN");

SELECT LENGTH("SQL TUTORIAL");

select lpad("sql tutuorial",20,"abc");

select rpad("sql tutuorial",20,"abc");

select ltrim("      sql lab");

select replace("sql tutorial","sql","java");

select ucase("it is fun");

select strcmp("sql tutorial","sql tutorial");

select trim("   sql tutorial   ");

select substr("sql tutorial",5,3);

-- --select repeat("sql task",3);

--------------------------------------------------------------------------------------------------

select sysdate();

select current_date();

select current_time();

select month("2017-06-15");

select hour("2017-06-20 09:34:00");

----------------------------------------------------------------------------------------------------------

CREATE TABLE EmployeeUK (
    EmployeeID INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Gender VARCHAR(10),
    Department VARCHAR(50)
);

CREATE TABLE EmployeeUSA (
    EmployeeID INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Gender VARCHAR(10),
    Department VARCHAR(50)
);
INSERT INTO EmployeeUK (EmployeeID, FirstName, LastName, Gender, Department)
VALUES
    (1, 'Pranaya', 'Rout', 'Male', 'IT'),
    (2, 'Priyanka', 'Dewangan', 'Female', 'IT'),
    (3, 'Preety', 'Tmary', 'Female', 'HR'),
    (4, 'Subrat', 'Sahoo', 'Male', 'HR'),
    (5, 'Anurag', 'Mohanty', 'Male', 'IT'),
    (6, 'Rajesh', 'Pradhan', 'Male', 'HR'),
    (7, 'Hina', 'Sharma', 'Female', 'IT');


INSERT INTO EmployeeUSA (EmployeeID, FirstName, LastName, Gender, Department)
VALUES
(1, 'James', 'Pattrick', 'Male', 'IT'),
    (2, 'Priyanka', 'Dewangan', 'Female', 'IT'),
(3, 'Sara', 'Taylor', 'Female', 'HR'),
    (4, 'Subrat', 'Sahoo', 'Male', 'HR'),
    (5, 'Sushanta', 'Jena', 'Male', 'HR'),
    (6, 'Mahesh', 'Sindhey', 'Female', 'HR'),
    (7, 'Hina', 'Sharma', 'Female', 'IT');
   
SELECT * FROM EmployeeUSA;
select * from EmployeeUK;

SELECT EmployeeID, FirstName, LastName FROM EmployeeUK
UNION
SELECT EmployeeID, FirstName, LastName FROM EmployeeUSA;

SELECT EmployeeID,FirstName,LastName FROM EmployeeUSA INTERSECT
SELECT EmployeeID,FirstName,LastName FROM EmployeeUK;

SELECT EmployeeID, FirstName, LastName FROM EmployeeUK
WHERE Department = 'HR' AND Gender = 'Female'
except
SELECT EmployeeID, FirstName, LastName FROM EmployeeUSA
WHERE Department = 'HR' AND Gender = 'Female';

/**SELECT EmployeeID, FirstName, LastName FROM EmployeeUSA
WHERE Department = 'IT' 
MINUS
SELECT EmployeeID, FirstName, LastName FROM EmployeeUK
WHERE Department = 'IT';

SELECT EmployeeID, FirstName, LastName
FROM EmployeeUK
WHERE Department = 'HR' 
INTERSECT
SELECT EmployeeID, FirstName, LastName
FROM EmployeeUSA
WHERE Department = 'HR';
**/

SELECT EmployeeID, FirstName, LastName
FROM EmployeeUK
UNION ALL
SELECT EmployeeID, FirstName, LastName
FROM EmployeeUSA;

----------------------------------------------------------------------------------------------------------

-- 1. Create a user with the name 'Student' with their own password
CREATE USER 'Student'@'localhost' IDENTIFIED BY 'student@123';

-- 2. Grant only select, delete, update privilege on the result table for the user 'Student'
GRANT SELECT, DELETE, UPDATE ON result TO 'Student'@'localhost';

-- 3. Grant select, insert, update only privilege on the student table for the user 'Student'
GRANT SELECT, INSERT, UPDATE ON student TO 'Student'@'localhost';

-- 4. Grant all privilege on the dept table for the user 'Student'
GRANT ALL PRIVILEGES ON deptartment TO 'Student'@'localhost';

-- 5. Revoke delete, update privilege on the result table for the user 'Student'
REVOKE DELETE, UPDATE ON results FROM 'Student'@'localhost';

----------------------------------------------------------------------------------------------------
begin;
savepoint A;
delete from student_2 where sid=5;
savepoint B;
update student_2 set stotal=0 where sid=1;
rollback to A;
commit;