create table Dept(Deptno int,Dname varchar(20),Loc varchar(20));
create table Employee(Empno int,Ename varchar(20),Job varchar(20),Hiredate date,Mgr int,Sal int,Comm int,Deptno int);
insert into Dept values
(10,"Accounting","New York"),
(20,"Research","Dallas"),
(30,"Sales","Chicago"),
(40,"Operations","Boston")
;
insert into Employee values
(7369,"Smith","Clerk","1980-10-17",7902,800,Null,20),
(7499,"Allen","Salesman","1981-02-20",7698,1600,300,30),
(7521,"Ward","Salesman","1981-02-22",7698,1250,500,30),
(7566,"Jones","Manager","1981-04-02",7839,2975,Null,20),
(7654,"Martin","Salesman","1981-09-28",7698,1250,1400,30),
(7698,"Blake","Manager","1981-05-01",7839,2850,Null,30),
(7782,"Clark","Manager","1981-06-09",7839,2450,Null,10),
(7788,"Scott","Analyst","1981-04-19",7566,3000,Null,20),
(7839,"King","President","1981-11-17",Null,5000,Null,10),
(7844,"Turner","Salesman","1981-09-08",7698,1500,0,30),
(7896,"Adams","Clerk","1987-05-23",7788,1100,Null,20),
(7900,"James","Clerk","1981-12-03",7698,950,Null,30),
(7902,"Ford","Analyst","1981-12-03",7566,3000,Null,20),
(7934,"Miller","Clerk","1982-01-23",7782,1300,Null,0)
;
select avg(Sal) from Employee where Job="Clerk";
select sum(Sal) from Employee where Mgr is not null;
select max(sal) from Employee;
select avg(sal) from Employee where Job="Clerk";
select 
select 
 

