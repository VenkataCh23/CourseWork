select * from emp;
INSERT INTO emp VALUES
(7769, 'Sam', 'Clerk', '1981-05-20', 7839, 2000, 0, NULL),
(7469, 'Ram', 'Analyst', '1982-06-10', 7698, 3000, 0, NULL),
(7596, 'Rahul', 'Clerk', '1981-11-13', 7639, 2500, 200, NULL),
(7367, 'Rajesh', 'Salesman', '1982-08-11', 7769, 3200, 500, NULL),
(7473, 'Aman', 'Analyst', '1982-07-07', 7839, 2700, 300, NULL),
(7639, 'Vishal', 'Salesman', '1981-12-08', 7473, 2000, 0, NULL);

 
 insert into dept values 
 (50, 'HR', 'California'),
(60 ,'Web&Network' ,'San Francisco');


select e.*,d.* from emp e  left join dept d on e.DEPTNO=d.DEPTNO; 

select e.*,d.* from emp e  left join dept d on e.DEPTNO=d.DEPTNO where e.DEPTNO is null;

select count(e.EMPNO) from emp e  left join dept d on e.DEPTNO=d.DEPTNO where e.DEPTNO is null;

select e.*,d.* from emp e  left join dept d on e.DEPTNO=d.DEPTNO where e.DEPTNO is null and e.JOB='CLERK' and e.SAL>2000;

select e.*,d.* from emp e  left join dept d on e.DEPTNO=d.DEPTNO where e.DEPTNO is null AND e.COMM is null;

select e.*,d.* from emp e  left join dept d on e.DEPTNO=d.DEPTNO where e.DEPTNO is null AND e.JOB='SALESMAN' and year(e.HIREDATE)=1981;

select e.*,d.* from emp e  left join dept d on e.DEPTNO=d.DEPTNO where e.DEPTNO is null and year(e.HIREDATE)=1981;

select sum(e.SAL) from emp e  left join dept d on e.DEPTNO=d.DEPTNO where e.DEPTNO is null;

SELECT e.*, d.*
FROM emp e
LEFT JOIN dept d ON e.Deptno = d.Deptno;

SELECT d.*
FROM dept d
LEFT JOIN emp e ON d.DEPTNO = e.DEPTNO
WHERE e.DEPTNO is NULL;


select e.ENAME,e.EMPNO from emp e  left join dept d on e.DEPTNO=d.DEPTNO where e.DEPTNO is null and d.LOC is null;

SELECT e.*,d.*
FROM emp e
LEFT JOIN dept d ON e.DEPTNO = d.DEPTNO
WHERE e.DEPTNO IS NULL

UNION

SELECT e.*,d.*
FROM dept d
LEFT JOIN emp e ON d.DEPTNO = e.DEPTNO
WHERE e.EMPNO IS NULL;

SELECT count(d.DEPTNO)
FROM dept d
LEFT JOIN emp e ON d.DEPTNO = e.DEPTNO
WHERE e.EMPNO IS NULL;

SELECT d.DEPTNO,count(e.EMPNO)
FROM dept d
LEFT JOIN emp e ON d.DEPTNO = e.DEPTNO
group by d.DEPTNO;


SELECT e.*,d.*
FROM emp e
LEFT JOIN dept d ON e.DEPTNO = d.DEPTNO
WHERE e.DEPTNO IS NULL and e.JOB='CLERK'

UNION

SELECT e.*,d.*
FROM dept d
LEFT JOIN emp e ON d.DEPTNO = e.DEPTNO
WHERE e.EMPNO IS NULL;

SELECT e.*,d.*
FROM emp e
LEFT JOIN dept d ON e.DEPTNO = d.DEPTNO
WHERE e.DEPTNO IS NULL and e.JOB='SALESMAN'

UNION

SELECT e.*,d.*
FROM dept d
LEFT JOIN emp e ON d.DEPTNO = e.DEPTNO
WHERE e.EMPNO IS NULL;

SELECT e.*,d.*
FROM emp e
LEFT JOIN dept d ON e.DEPTNO = d.DEPTNO
WHERE e.DEPTNO IS NULL and e.JOB='ANALYST' and e.SAL<3000; 