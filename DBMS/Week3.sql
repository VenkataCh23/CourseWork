create table student_2(sid numeric,
					   sname varchar(20),
                       branch varchar(20),
                       DBMS numeric,
                       DAA numeric,
                       COA numeric,
                       TOC numeric,
                       OOPS numeric,
                       stotal numeric,
                       sgpa double
);

insert into student_2 values 
	(1,'ram','cse',30,null,20,null,15,360,8.2),
	(2,'raju','ece',50,19,23,18,19,250,8.1),
    (3,'ravi','mech',10,14,null,12,25,200,6.1),
    (4,'surya','cse',30,25,30,28,32,380,8.5),
    (5,'rahul','cse',50,50,50,50,50,500,10),
    (6,'john','mech',34,23,45,12,19,400,9),
	(7,'rani','ece',40,41,38,42,null,430,9.5);

select count(*) from student_2;

select sum(DBMS) from student_2 where DBMS<17.5;

select count(*) from student_2 where DBMS<17.5;

select sid,sname from student_2 where DAA=(select max(DAA) from student_2);

select sid,sname ,sgpa from student_2 where OOPS=(select min(OOPS) from student_2);

select avg(DBMS) from student_2;

select sid,sname,OOPS,DAA from student_2 where DAA<17.5 and OOPS>17.5;

select max(DBMS),max(DAA),max(COA),max(TOC),max(OOPS) from student_2;

select min(DBMS),min(DAA),min(COA),min(TOC),min(OOPS) from student_2;

select count(*) as non_cse from student_2 where branch!='cse';

select count(*) as cgpa_gt_8 from student_2 where sgpa>8;

select count(*) as stotal_gt_50 from student_2 where stotal>350;

select count(OOPS) from student_2 where sgpa<6.0;

select count(*) from student_2 where TOC<17.5 and COA>17.5;

select count(*) from student_2 where DBMS>17.5 AND DAA>17.5 AND COA>17.5 AND TOC>17.5 AND OOPS>17.5;

select count(DBMS),count(DAA),count(TOC),count(COA),count(OOPS) 
from student_2 
where DAA>17.5 and DBMS>17.5 and TOC>17.5 and COA>17.5 and OOPS>17.5;

select max(DBMS),max(DAA),max(TOC),max(COA),max(OOPS) from student_2;
 
select min(DBMS),min(DAA),min(TOC),min(COA),min(OOPS) from student_2; 

select branch ,count(*) as student_count from student_2 group by branch;

#2nd Table:

CREATE TABLE RESULT(
   SID   INT,
   SNAME VARCHAR(20),
   SBRANCH VARCHAR(20),
   SUB  VARCHAR(20),
   SMARKS FLOAT,
   STOTAL  FLOAT,
   SCGPA  FLOAT
);
INSERT INTO RESULT VALUES
   (1,'Pardhu','CSE','DBMS',40,450,8.5),
   (2,'Karthik','ECE','DBMS',38,326,8),
   (3,'Simhadri','CSE','DBMS',45,425,8.5),
   (1,'Pardhu','CSE','DAA',26,450,8.5),
   (2,'Karthik','ECE','DAA',17,326,8),
   (3,'Simhadri','CSE','DAA',48,425,8.5),
   (4,'Rajesh','MECH','DBMS',12,320,7),
   (4,'Rajesh','MECH','DAA',17,250,6);
   
SELECT SUB, COUNT(*) AS FailedCount
FROM RESULT
WHERE SMARKS < 17.5
GROUP BY SUB;

SELECT SUB, MAX(SMARKS) AS MaxMarks
FROM RESULT
GROUP BY SUB;

SELECT SUB, MIN(SMARKS) AS MinMarks
FROM RESULT
GROUP BY SUB;

SELECT SBRANCH, COUNT(*) AS StudentCount
FROM RESULT
GROUP BY SBRANCH;

SELECT SUB, COUNT(*) AS AbsentCount
FROM RESULT
WHERE SMARKS = null
GROUP BY SUB;

SELECT SBRANCH, COUNT(*) AS FailureCount
FROM RESULT
WHERE SMARKS < 17.5
GROUP BY SBRANCH;

SELECT SBRANCH, MAX(SCGPA) AS Max_cgpa, MIN(SCGPA) AS Min_cgpa
FROM RESULT
GROUP BY SBRANCH;

SELECT SBRANCH, COUNT(*) AS Abs
FROM RESULT
WHERE SMARKS = NULL
GROUP BY SBRANCH;

SELECT SUB, SUM(SMARKS) AS Total
FROM RESULT
GROUP BY SUB;
 
SELECT SBRANCH, SUM(SMARKS) AS STable
FROM RESULT
GROUP BY SBRANCH;

SELECT SUB, MAX(SMARKS) AS Max
FROM RESULT
GROUP BY SUB
HAVING MAX(SMARKS) > 35;

SELECT SUB, MIN(SMARKS) AS MinMarks
FROM RESULT
GROUP BY SUB
HAVING MIN(SMARKS) > 17.5
ORDER BY MinMarks DESC;

SELECT SUB, AVG(SMARKS) AS Avrg
FROM RESULT
GROUP BY SUB
HAVING AVG(SMARKS) > 30
ORDER BY Avrg ASC;

SELECT SBRANCH, MAX(SCGPA) AS Max, MIN(SCGPA) AS Min
FROM RESULT
WHERE SCGPA > 6.0
GROUP BY SBRANCH
ORDER BY Max DESC, Min DESC;

SELECT SBRANCH, COUNT(*) AS FailureCount
FROM RESULT
WHERE SMARKS < 35
GROUP BY SBRANCH
HAVING COUNT(*) > 4
ORDER BY FailureCount DESC;

SELECT SID, SNAME, SCGPA
FROM RESULT
ORDER BY SCGPA DESC;

SELECT SID, SNAME, STOTAL, SCGPA
FROM RESULT
ORDER BY STOTAL DESC;

SELECT SUB, MAX(SNAME) AS MaxName
FROM RESULT
GROUP BY SUB;

SELECT SBRANCH, SID
FROM RESULT
WHERE SCGPA = (SELECT MAX(SCGPA) FROM RESULT);  

SELECT SUB, SID
FROM RESULT
WHERE SMARKS = (SELECT MAX(SMARKS) FROM RESULT);