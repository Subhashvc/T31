
--DDL/Structure/table/columns...tables ///create table, drop table, truncate table
--create ,drop, truncate

--DML/data/row/records insert, delete, update

---------------------------------------------------------------------------------

--select
--data types
--int-int
--varchar-num, special char

--------------------------------------------------------------------------------

--table	- employee
--1. Emp_id-int
--2. Emp_name-varchar-15
--3. city-varchar-10
--4. salary-int
--5. age-int
--6. DOJ-varchar-20

--------------------------------------------------------------------

create table Employee(emp_id int, Emp_name varchar (15), city varchar (10), salary int, age int, DOJ varchar (20), commision_pct int);

--insert values
insert into Employee values(101, 'amit', 'pune', 20000, 30, '20-6-2016',0.1);
insert into Employee values(102, 'pooja', 'mum', 30000, 45, '20-10-2017',0.15);
insert into Employee values(103, 'amit', 'pune', 15000,200, '20-12-2016',0.1);
insert into Employee values(104, 'anil', 'nashik', 18000, 30, '21-10-2016',0.2);
insert into Employee values(105, 'sanket', 'pune', 20000, 30, '20-9-2021',0.1);
insert into Employee values(101, 'amit', 'pune', 22000, 30, '20-6-2016',0.1);

--fetch datafrom database

select * from Employee;
select city from Employee;
select DOJ, * from Employee; 

--clause
--1. where
--a] comp,=,!=,(<>),<,<=,>,=>,
-- select 8 from table_name where col_name='condition';
select * from Employee where Emp_name='amit';
select * from Employee where Emp_name!='amit';

--IN/NOT IN
--SELECT * from table_name 



select * from Employee;


--logical AND/OR
Select * from employee where emp_name='amit' and city='mum';
Select * from employee where emp_name='amit' or city='mum' or salary='25000';


d] like
select * from Employee where Emp_name like'p%';
select * from Employee where Emp_name like'%a';
select * from Employee where Emp_name like'%a%';
select * from Employee where Emp_name like'N%t';
select * from Employee where Emp_name like'[ap]%';
select * from Employee where Emp_name like'[^ap]%';

select * from Employee;


e] Arithmatic +,-,*,/

select *, Updated_salary=salary+5000 from Employee1;
select *, Updated_salary=salary-5000 from Employee1 where Emp_name='amit';
select *, Updated_salary=salary*2 from Employee1;
select *, Updated_salary=salary/2, Updated_salary=salary+2000 from Employee1;

--2.0 -order by clause
 select * from Employee order by salary desc;
  select * from Employee order by salary;	

------------------------------------------------------------------------------------------------------------------------------------------
  
create table practice (id int,
name varchar(10), 
city varchar(10),
age int, 
dept varchar(10), salary int);

select * from practice; 

select name,salary from practice;

insert into practice values(1, 'amit', 'pune', 27, 'mech', 20000);
insert into practice values(2, 'pooja', 'mumbai', 27, 'Entc', 20000);
insert into practice values(3, 'pooja', 'nashik', 29, 'it', 30000);
insert into practice values(4, 'amit', 'pune', 27, 'mech', 22000);
insert into practice values(5, 'pooja', 'pune', 25, 'it', 20000);
insert into practice values(6, 'amit', 'nashik', 27, 'civil', 25000);
insert into practice values(7, 'pooja', 'pune', 27, 'mech', 20000);
insert into practice values(8, 'amit', 'pune', 29, 'mech', 20000);

-- example of comparative operator

select * from practice where dept='it';
select * from practice where id > 5;
select * from practice where id < 4;
select * from practice where id >=6;
select * from practice where id <=6;
 
 --example of logical operator AND

 select * from practice where id=3 and dept = 'it';
 select * from practice where id=5 and dept = 'mech';

 --example of logical operator OR



 --example of like operator
 select * from practice where name like'A%'; --for 1st character A
 select * from practice where name like'%A'; -- for last character A
 select * from practice where name like'A%T'; --for 1st and  last character
 select * from practice where name like '%A%'; -- anywhere
select * from practice where name like 'Am%';
select * from practice where name like '_m%'; --for 2nd character
select * from practice where name like '%i_' -- for 2nd last char
select * from practice where salary like '_5%'; --for salary 2nd digit
select * from practice where salary like '__5%'; -- for 3rd digit 

select * from practice where name like '[ap]%'; --name starting with a and p
select * from practice where name like '[^ap]%'; -- not starting with a and p
select * from practice where name like '[a-d]%'; -- name starting between a and d
select * from practice where name like '[^a-p]%'; -- name not starting betwwen a and p

--for arithmatic operator
--+,-,*,/;

select * from practice;
select city, salary from practice;
--select *, marks ..........
--new_salary=salary+5000
-- select *,new_col=col + condition from table_name
select *,new_salary=salary+5000,new_salary=salary-5000,new_salary=salary*2,new_salary=salary/2 from practice; --all arithmatic operation in one table
select *,new_salary=salary+salary*0.1 from practice; --salary increase by 10%

--order by clause
--select * from table_name order by col_name desc/asc
select * from practice order by salary desc; --for salary descending order
select * from practice order by city desc; --for city descending order

select * from practice where name is null; -- for null we can't use = sign we have use 'is null'
select * from practice where name is not null;

--create-DDL
--insert-DML
--for delete statement
--delete-DML-Data
--delete table_name
--delete table_name where col_name='condition' --for ex condition is amit. 

select * from practice;

delete practice where name='amit'; --for delete particular condition
delete practice; --for delete complete table data

-- for drop statement
--DDL/drop/structure
--drop table table_name
drop table practice;

--for trumcate statement


--update statement
--update-DML-data   --for update data or change data

--update table_name set col_name='condition'; --syntax

create table Exercise (roll int,
name varchar(10), 
city varchar(10),
age int, 
dept varchar(10), salary int);

select * from Exercise;
insert into Exercise values(1, 'manoj', 'pune', 27, 'mech', 20000);
insert into Exercise values(2, 'Rani', 'mum', 22, 'it', 25000);
insert into Exercise values(3, 'amol', 'pune', 25, 'entc', 20000);
insert into Exercise values(4, 'Anu', 'Jalna', 23, 'entc', 22000);
insert into Exercise values(5, 'ram', 'pune', 25, 'mech', 20000);
insert into Exercise values(6, 'Amar', 'pune', 30, 'civil', 25000);
update Exercise set name='pooja';
select * from Exercise;

update Exercise set name='poonam' where age=27;

update Exercise set name='poonam' where salary=20000;


--alter statement
--alter-DDL-structure
--add col./drop col/ change data types
--alter table table_name add column_name datatype;  --syntax for add col
alter table practice add marks int;
alter table practice add pin_code int, loc varchar(10);

--drop col
-- alter table table_name drop column col_name;
alter table practice drop column marks,pin_code,loc;

--datatype
--alter table table_name alter column col_name datatype; --syntax --to change datatype

alter table practice alter column id varchar (10);
alter table practice alter column name varchar (25);

---**functions**

--min, max, avg,sum,top,count,distict

select * from Exercise;

--select min(col_name) as new col_name from table_name
select min (age) as min_value from Exercise;

--select max(col_name) as new col_name from table_name
select max (age) as new from Exercise;

--select avg(col_name) as new col_name from table_name
select avg (age) as  new1 from Exercise;


--select sum(col_name) as new col_name from table_name
select sum (age) as sum_value from Exercise;
 
--count --counting rows 
select count(*) from Exercise;  -- including null values
select count (salary) from Exercise; --excluding null values

--top

select * from Exercise;


--select top * number from table_name;
select top 2 * from Exercise;

select top 2 salary from Exercise;

select top 2 salary from Exercise order by salary;

select top 2 * from Exercise;

select * from Exercise order by salary;

select top 2 salary from Exercise order by salary desc;

-- Distinct

---select distinct(col_name) from table_name;

select distinct(name) from Exercise;
select distinct (city) from Exercise;
select distinct (city) from Exercise;




--Constraints
--add condition at the time of create table

--1] Primary key- unique/not null

-- create table table_name (id int primary key)

create table T1 (id int primary key, age int);
insert  into T1 values (101,30);
insert into T1 values (101,35);
insert into T1 values (102,null);
select * from T1;

--2] unique

--create table table_name (col_name unique)
create table T2 (id int, age int unique);

insert into T2 values (101,30);
insert into T2 values (102,30); -- not allowed
insert into T2 values (101,null); -- null value allowed one time
select * from T2;


-- 3] Not null
create table T3 (id int, name varchar(10) not null);
insert into T3 values(101,'amit');
insert into T3 values(101,null);
select * from T3;
	
--4] check
create table T4 (id int, marks int check (marks>40));
insert into T4 values(101,43);
insert into T4 values(101,39);
select * from T4;

--id, name,gender(m/f)



-- CHECK (gender m or f)
--gen in(f,m)

-- 5] Default

create table T5 (id int, city varchar(10) default 'pune'); -- jis database ko create table me default lagaoge us database ki values by default run hogi
insert into T5 values (101,'pune');
--insert into T5 values (101,default);
select * from T5;

insert into T5 values (102,'mum');

insert into T5 (id) values (102);

--6] auto increment

()X,Y)-X- starting position
y-interval

--METHOD 1
create table T6(id int identity, name varchar (10));
insert into T6 values ('amit');
insert into T6 values ('Pooja');
select * from T6;

-- METHOD 2
create table T7 (id int identity(10,10), name varchar (10)); -- in real practice identity used for int datatype only
insert into T7 values ('amit');
insert into T7 values ('pooja');
select * from T7;


--7] foreign key

create table department2(DID int primary key identity, Dept varchar(20));

insert into department2 values('CIVIL');
insert into department2 values('Mech');
insert into department2 values('IT');
insert into department2 values('ECE');

select * from department2;

create table students(SID int, name varchar(10),DID int foreign key references department(DID));

insert into students values(2,'Praveen');
insert into students values ('amit',2);
insert into students values ('Ronit',1)
insert into students values ('shanmuka',3);
insert into students values ('monika',Null);
insert into students values ('monika',7);

select * from department2;
select * from students;


-- 8] group by

select * from Exercise;

--dept--mech,it   -- departwise max salary
--select col_name,aggregate_function(col_name) from table_name group by col_name
select id, min(salary) as new_salary from exercise group by id;

select name, min(salary) as new_salary from exercise group by name;

select name, id, avg(salary) as new from exercise group by name,id; --use 

-- display count 
select name, count(name) from exercise group by name; -- Query is display no. of count for particualr col_name;

select salary,count(*) as new2 from Exercise group by salary; -- query - display no. of count for salary for whole table

--where clause and having clause has same function but where clause used for single row and having used for group
--where.. group by.. having...order by
--having 

select name, count(name) from exercise group by name having count(name)>1;

select name, avg(salary) as new_salary from exercise group by name having avg(salary)>20000;

select name, avg(salary) as new_salary from exercise group by name having avg(salary)>20000 order by avg(salary);


select id, avg(salary) as new_salary from exercise group by id having avg(salary)  between 20000 and 30000; --querry id ke liye salary ko filter lagao 20000 to 30000


--where.. group by.. having...order by

select * from Exercise;

--dept sum(salary) as new_salary
where dept();
group by dept
having sum(sal)>
order by new_sal desc

select dept, sum(salary) as new_salary from exercise where dept in (mech, it)


--24/3/22 
--set operator
--union, 2. union all 3. intersect , 4.except/minus

--A-[1,2,3,4]
--b-[3,4,5,6]

--A union B-[1,2,3,4,5,6]
--A union all B[1,2,3,4,3,4,5,6]
--A intersect B-[3,4] -- dono me common hai
--A except B-[[1,2] -- A me hai par B me nahi
--B except A-[5,6]  --B me hai par A me nahi

create table set1(S_ID int ,SNAME varchar(20));

create table set2(S_ID int ,SNAME varchar(20));

insert into set1 values(1,'A');
insert into set1 values(2,'B');
insert into set1 values(3,'C');
insert into set1 values(4,'D');
insert into set2 values(4,'D');
insert into set2 values(5,'E');
insert into set2 values(6,'F');
insert into set2 values(7,'G');
insert into set2 values(8,'H');
insert into set2 values(9,'Ha');

select * from set1;
select * from set2;
-- select * from table_1 union select * from table_2;
select * from set1 union select * from set2;
select * from set1 union all select * from set2;
select * from set1 intersect select * from set2;
select * from set1 except select * from set2;
select * from set2 except select * from set1;


-- datatime --
-- getdate
select getdate(); -- today's date
select getdate()+1; -- tomorrow date
select getdate()-1; -- yesterday's date

--interval
--hour -hh
--min-N
--year -yy
--Quater-Q
--month-M-mm
--weak-ww
--second-ss
--milisec-ms
--Day-y/
--


--Queries 
-- 1] HOW TO DISPLAY EMPLOYEES WHOSE SALARY BETWEEN 15000 AND 25000 WITHOUT USING BETWEEN OPERATERS?
select * from Employee1;
select * from Employee1 where salary>=15000 and salary<=25000;

--2] Display employyes whose commision_pct is other 0.1;

create table Employee6(emp_id int, Emp_name varchar (15), city varchar (10), salary int, age int, DOJ varchar (20), commision_pct int);

--insert values
insert into Employee6 values(101, 'amit', 'pune', 20000, 25, '20-6-2016', 0.00);
insert into Employee6 values(102, 'pooja', 'mum', 28000, 45, '20-10-2017', 0.1);
insert into Employee6 values(103, 'amit', 'pune', 15000,20, '20-12-2016',0.0);
insert into Employee6 values(104, 'anil', 'nashik', 18000, 30, '21-10-2016',0.2);
insert into Employee6 values(105, 'sanket', 'pune', 20000, 28, '20-9-2021',0.1);
insert into Employee6 values(101, 'amit', 'pune', 22000, 30, '20-6-2016',0.1);

select * from Employee6;
select * from Employee2 except select * from Employee2 where commision_pct= 0.1; 

--3] display list of employees having first name 'david' or 'diana' without using like operator

create table Employee7(emp_id int, Emp_name varchar (15), city varchar (10), salary int, age int, DOJ varchar (20));

--insert values
insert into Employee7 values(101, 'david', 'pune', 20000, 25, '20-6-2016');
insert into Employee7 values(102, 'sam', 'mum', 28000, 45, '20-10-2017');
insert into Employee7 values(103, 'diana', 'pune', 15000,20, '20-12-2016');
insert into Employee7 values(104, 'happy', 'nashik', 18000, 30, '21-10-2016');
insert into Employee7 values(105, 'jack', 'pune', 20000, 28, '20-9-2021');
insert into Employee7 values(106, 'david', 'pune', 22000, 30, '20-6-2016');

select * from Employee7;

select * from Employee7 where Emp_name in('david','diana')

--4] display employees having salary less than 2400 and hiring year greater than 2005

create table Employee8(emp_id int, Emp_name varchar (15), city varchar (10), salary int, age int, DOJ varchar (20));

--insert values
insert into Employee8 values(101, 'david', 'pune', 2000, 25, '20-6-2004');
insert into Employee8 values(102, 'sam', 'mum', 28000, 45, '20-10-2017');
insert into Employee8 values(103, 'diana', 'pune', 1500,20, '20-12-2016');
insert into Employee8 values(104, 'happy', 'nashik', 18000, 30, '21-10-2016');
insert into Employee8 values(105, 'jack', 'pune', 20000, 28, '20-9-2021');
insert into Employee8 values(106, 'david', 'pune', 2200, 30, '20-6-2016');

select * from Employee8;

select * from Employee8 where salary < 2400 and DOJ > '01-01-2005';

--5] display department wise total count of employees.

create table Employee9(id int,
name varchar(10), 
city varchar(10),
age int, 
dept varchar(10), salary int);

select * from Employee9;

insert into Employee9 values(1, 'manoj', 'pune', 27, 'mech', 20000);
insert into Employee9 values(2, 'Rani', 'mum', 22, 'it', 25000);
insert into Employee9 values(3, 'amol', 'pune', 25, 'entc', 20000);
insert into Employee9 values(4, 'Anu', 'Jalna', 23, 'entc', 22000);
insert into Employee9 values(5, 'ram', 'pune', 25, 'mech', 20000);
insert into Employee9 values(6, 'Amar', 'pune', 30, 'civil', 25000);

select dept, count(dept) from employee9 group by dept having count(dept)='mech';
select dept, count(dept) from employee9 group by dept having count(dept)='it';
select dept, count(dept) from employee9 group by dept having count(dept)='entc';
select dept, count(dept) from employee9 group by dept having count(dept)='civil';

-----------------------------------------------------------------------------------------------------------------------------------------
--date- 25/03/2022

--1. datediff
--2. datepart
--3. dateadd

Create table Account_details (
ACCT_NUMBER int primary key identity(11112881,1),
ACCT_NAME varchar(20),
ACCT_OPEN_DATE date,
BRANCH Varchar(20));

insert into Account_details values ('Shubham','2015/12/09','MUMBAI');
insert into Account_details values ('Rihan','2016/01/12','Jaipur');
insert into Account_details values ('Sheetal','2017/08/11','GOA');
insert into Account_details values ('Priyanka','2017/01/01','Chennai');
insert into Account_details values ('Manik','2015/01/08','Agra');
insert into Account_details values ('Veena','2021/01/01','Patna');
insert into Account_details values ('Rohan','2019/07/01','Pune');
insert into Account_details values ('Laxmi',GETDATE(),'rohatak');
insert into Account_details values ('Jinal',GETDATE(),'Indore');

select * from Account_details;

--1. datediff
--2. datepart
--3. dateadd

--1. datediff

--select datediff(interval,date1,date2) -- interval-day,month,year;

select datediff(yy,'1990/07/07',getdate()); --my date diff (yy-mm-dd)---(yy-dd-mm)

select acct_number,acct_name,datediff(yy,acct_open_date,getdate()) as age from account_details;

--2. datepart

select * from Account_details where acct_open_date in('2021');--varchar

-- select datepart (interval,date/col_name) --two arguments required
select *, datepart(YY,acct_open_date) as date_1 from account_details;  -- where datepart (yy,acct_open_date)=''2021';

select *, datepart(yy,acct_open_date) as date_1 from account_details where datepart (yy,acct_open_date)='2021'; --to fetch particular calendar year
select *, datepart(mm,acct_open_date) as date_1 from account_details where datepart (mm,acct_open_date)='1'; -- to fetch particular calendar month
select *, datepart(dd,acct_open_date) as date_1 from account_details where datepart (dd,acct_open_date)='1'; -- to fetch particular calendar day

-- '' used due to date type

--dateadd

select * from Account_detail;

select dateadd(interval,value, date/col);

select dateadd (yy,-30,getdate());

select dateadd (yy,+10,acct_open_date)from account_detail where acct_name in('laxmi','jinal');

-----------------------------------------------------------------------------------------------------------------
28/03/22

--Subquery and corelational query
--inner query 
--outer query
--(nested query)- query inside query

select * from employees;

select max(salary) from employees;-- max salary
select max(salary) from employees where salary<(select max(salary) from employees);-- 2nd max salary
select salary from employees where salary< (select max(salary) from employees);
select salary from employees where salary>(select max(salary) from employees);-- 2nd min salary

select max(salary) from employees where salary < (select max(salary) from employees where salary<(select max(salary) from employees));-- 3rd max salary


--OUTER
select Emp_name from table where loc<> mh( select name from table where lang in ('marathi','hindi');



Create Table customers(C_ID varchar(5) primary key ,CNAME varchar(20),Loc varchar(20));


insert into customers values('C1','AMIT','PUNE')
insert into customers values('C2','Sumit','Delhi')
insert into customers values('C3','varun','Mumbai')
insert into customers values('C4','snehal','Latur')
insert into customers values('C5','Raj','Sangli')
insert into customers values('C6','Mohit','Satara')

select * from customers;

create table order2(OID int primary key, CID varchar(5),groceries varchar(20))

--insert 
insert into order2 values(1,'C2','almonds')
insert into order2 values(2,'C3','deo')
insert into order2 values(3,'C1','milk')
insert into order2 values(4,'C2','soap') 
insert into order2 values(5,'C4','dishes')
insert into order2 values(6,'C2','rice')

select * from customers;
select * from order2;

select * from customers where exists (select * from order2 where customers.C_ID=order2.CID);

select * from customers as C where exists (select * from order2 as O where C.C_ID=O.CID);

select * from customers as C where not exists (select * from order2 as O where C.C_ID=O.CID);

--in corelational querries inner & outer query has relation between each other



-----------------------------------------------------------------------------------------------------------------------------------------------------
29/03/22

--join
--1.inner join
--2. outer join---a left b. right c.full
--3.equi join 
--4.self 
--5.cross




Create Table A1 (Aid int, Name varchar(20));
Create Table B1 (Bid int, Name varchar(20),Aid int);

insert Into A1 values(1,'Sam');
insert Into A1 values(2,'tom');
insert Into A1 values(3,'harry');
insert Into A1 values(4,'katich');
insert Into A1 values(5,'kate');


insert Into B1 values(11,'harry',3);
insert Into B1 values(12,'katich',4);
insert Into B1 values(13,'kate',5);
insert Into B1 values(14,'mate',6);
insert Into B1 values(15,'sat',7);

Create Table C1 (Cid int, Name varchar(20),Bid int);
insert Into C1 values(21,'harry',13);
insert Into C1 values(22,'katich',14);
insert Into C1 values(23,'kate',15);
insert Into C1 values(24,'mate',16);
insert Into C1 values(25,'sat',17);

select * from A1;
select * from B1;
select * from C1;

--inner join
--select * from table_1 join table_2 on table_1.col=table_2.col
select * from A1 join B1 on A1.Aid=B1.Aid;
select A1.Aid,B1.name,B1.Bid from A1 join B1 on A1.Aid=B1.Aid;
select A1.Aid from A1 join B1 on A1.Aid=B1.Aid;
select B1.Aid from A1 join B1 on A1.Aid=B1.Aid;

--left outer (inner + left)
select * from A1 left join B1 on A1.Aid=B1.Aid;
select A1.Aid,A1.name from A1 left join B1 on A1.Aid=B1.Bid;   --(result me 3,4,5 is inner and 1,2 is outer)

--right

select * from A right join B on A.Aid=B.Aid;
select A.Aid,A.name, B.Aid from A right join B on A.Aid=B.Aid; 

--full

select * from A full join B  on A.Aid=B.Bid;

---------------------------------------------------------------
--for three table

select *from A join B on a.aid=B.aid join C on B.bid=C.bid; --- FOR THREE TABLE

create table A1 (id int);
create table B1 (id int);
insert into A1 values(1);
insert into A1 values(1);
insert into A1 values(null);
select * from A1;


create table EMP_new2 (id int, name varchar (10),Company varchar (10),Work varchar (10));
insert into EMP_new2 values (1,'Amit','Info','pune')
insert into EMP_new2 values (2,'Puja','Tcs','Mumbai')
insert into EMP_new2 values (3,'Poonam','Tech','Pune')
insert into EMP_new2 values (4,'Abhi','Logic','Nagpur')
insert into EMP_new2 values (5,'Kirti','Lim','Nagar')

select * from EMP_new2

create table Job2 (salary int,base varchar (10),id int)
insert into Job2 values (10000,'Pune',1)
insert into Job2 values (10000,'Pune',1)
insert into Job2 values (20000,'Mumbai',3)
insert into Job2 values (30000,'Nagpur',4)
insert into Job2 values (40000,'Pune',5)
insert into Job2 values (35000,'Nagar',2)

select * from Job2;

select * from EMP_new2 join Job2 on EMP_new2.id=Job2.id;

--in inner join multi condition is not possible

--------------------------------------------------------------------------------------------------------------
--EQUIJOIN
---Equijoin  join =>, on => where
-- in this we can use multi condition due to where clause

--select * from A,B where = condition
select * from Emp_new1,job1 where Emp_new1.id=job1.id;

select * from Emp_new1,job1 where Emp_new1.id=job1.id and Emp_new1.work=job1.base;

-----------------------------------------------------------------------------------------------------------------------------

--cross join

select * from A cross join B cross join C;
 

-------------------------------------------------------------------------------------------------------
--self join

create table SELF_TEST_EMP2(EID int, ENAME varchar(20),ManagerID varchar(20))

insert into SELF_TEST_EMP2 values(1,'Shivam',2)
insert into SELF_TEST_EMP2 values(2,'krishna',4)
insert into SELF_TEST_EMP2 values(3,'meera',NULL)
insert into SELF_TEST_EMP2 values(4,'radha',2)
insert into SELF_TEST_EMP2 values(5,'bali',1)

select * from SELF_TEST_EMP2;

--syntax; select * from table1 as new1, table1 as new2 where =condition
select * from self_test_emp2 as T1, self_test_emp2 as T2 where T1.managerID=T2.EID;


Create table student2 (id int, name varchar(20), city varchar(20));

insert into student2 values(1,'ram','pune');
insert into student2 values(2,'manoj','mum');
insert into student2 values(3,'ajay','thane');
insert into student2 values(4,'ram','pune');

select * from student2;

select * from student2 as T1, student2 as T2 where T1.city = T2.city ;



----------------------------------------------------------------------------------------------------------------------------------
--5.4.22

--ROWNUMBER,RANK,Dense_Rank

select * from employee9;

select *, row_number() over (order by age desc) as new_row from employee9;
select *, rank() over (order by age desc) as new_row from employee9;
select *, dense_rank() over (order by age desc) as new_row from employee9;

select *, row_number() over (order by age desc) as new_row,rank() over (order by age desc) as new_row2, dense_rank() over (order by age desc) as new_row3 from employee9;


select *, row_number() over (order by age desc) as new_row,rank() over (order by salary desc) as new_row2, dense_rank() over (order by id desc) as new_row3 from employee9;


--CTE

--with CTE_table as
--(query)
--select * from CTE_table as
	
with new_table as 
(select *,dense_rank() over (order by age desc) as new_row from employee9) -- to find out 2nd highest rank -- for highest use desc
select * from new_table where new_row='2';--- to create virtual table 

with new_table as 
(select *,dense_rank() over (order by age) as new_row from employee9) --- to find out 4th minimum rank  -- for lowest use asce
select * from new_table where new_row='4';--- to create virtual table 

select * from employee9;


with new_table as 
(select *,dense_rank() over (order by age desc) as new_row from employee9) -- by using two condition
select * from new_table where new_row='4'or age='30';


--note: for aggregate function related query use group by clause
--note: 


--group by me no of rows redused




--partition by

with new_table as 
(select *,dense_rank() over (partition by dept order by age) as new_row from employee9) -- partition for dept
select * from new_table where new_row='1';   --- dept wise 1st rank

with new_table as 
(select *,dense_rank() over (partition by name order by age) as new_row from employee9) --partition for name
select * from new_table where new_row='1';   --- dept wise 1st rank

with new_table as 
(select *,dense_rank() over (partition by city order by age) as new_row from employee9) --partition for name-- for partition by
select * from new_table where new_row='1';   --- dept wise 1st rank

select dept, max(age) from employee9 group by dept; ---for group by

--for top three
with new_table as 
(select *,dense_rank() over (partition by city order by age) as new_row from employee9) --partition for name-- for partition by
select top 3 age from new_table where new_row='1';   --- dept wise 1st rank


create table over_Tests(EMPID int, FirstName varchar(20),Gender varchar(2),salary int)

 insert into over_Tests values(1,'Mohini','F',1000)
 insert into over_Tests values(2,'Rohit','M',2000)
 insert into over_Tests values(3,'Amit','M',4000)
 insert into over_Tests values(4,'Sonal','F',5000)
 insert into over_Tests values(5,'Minal','F',6000)
 insert into over_Tests values(6,'Amar','M',3600)
 insert into over_Tests values(7,'Shital','F',4500)
 insert into over_Tests values(8,'Sohil','M',6000)
 insert into over_Tests values(9,'praveen','F',9000)
 insert into over_Tests values(10,'Mithali','F',9000)
 insert into over_Tests values(11,'seema','F',9000)
 insert into over_Tests values(12,'meena','F',10000)

 select * from over_Tests

 select gender, max(salary)

 with record as
 (select *, ROW_NUMBER () over (partition by gender order by gender desc) as row1 from over_tests) -- for display output as F,F,F,M,M,M
 select * from record order by row1, gender;

 with record as
 (select *, dense_rank () over (partition by gender order by gender desc) as row1 from over_tests) -- for display output as F,F,F,M,M,M
 select * from record order by row1, gender;

 ---------------------------------------------------------------------------------------------------------------------------------------------
 --6.4.22

 create table Exercise1 (roll  int,
name varchar(10), 
city varchar(10),
age int, 
dept varchar(10), salary int);

select * from Exercise1;
insert into Exercise1 values(1, 'manoj', 'pune', 27, 'mech', 20000);
insert into Exercise1 values(2, 'Rani', 'mum', 22, 'it', 25000);
insert into Exercise1 values(3, 'amol', 'pune', 25, 'entc', 20000);
insert into Exercise1 values(4, 'Anu', 'Jalna', 23, 'entc', 22000);
insert into Exercise1 values(5, 'ram', 'pune', 25, 'mech', 20000);
insert into Exercise1 values(6, 'Amar', 'pune', 30, 'civil', 25000);
update Exercise1 set name='pooja';
select * from Exercise1;


with new_table1 as 
(select *,dense_rank() over (partition by city order by age) as new_row from employee9) --partition for name-- for partition by
select top 3 age from new_table1 where new_row='1';



--SQL server function

---upper

select upper('Class');

select *, upper(name) as new from exercise1;
select *, upper(name) as new from exercise1 where name='rani';


select lower('Class');

select *, lower(name) as new from exercise1;
select *, lower(name) as new from exercise1 where name='rani';

select lower(name) as new1, upper(city) as new from exercise1;

--initcap

--3.substring
--x-4 --start point
--y-2--length
select substring('ABCDEFG',4,2);
select*, substring (name,2,3) from exercise1;


--4. length -- length of char i.e. no. of char
select len('ABCDEFG');
SELECT*, len(city) from exercise1;

--5. reverse

select reverse('class');
select*, reverse (name) from exercise1;

--6. replicate 
select replicate ('class',4)
select *, replicate(name,2) from exercise1;

--7. replace

select replace('scodeen','o','p');

select replace('scodeen','s','S');

select replace('scodeen','e','a');

select replace('scodeen','cod','abcd');

select*, replace (name,'o','x') from exercise1;

----------------------------------------------------------------------------------------------------------------------------
--Date 7.4.22

--concat -- to connect two table

select * from Exercise1;

select *, name+city as full_name from exercise1;

select *, name+''+city as full_name from exercise1;

select *, concat(name,'    ',city ) as full_name from exercise1;

select *, concat(roll,'_',dept ) as full_name from exercise1; ---for coonect two column


--trim
--leftside trim - ltrim
--right side trim--rtrim
Class
select('                   class')
  '                        class'
  select('             class            ');
  '            class             '
  select ltrim('           class            ');
  'class                     '

select rtrim('           class            ');
'                               class'

select ltrim(rtrim('           class            '));
'class'


--Round

--select round(num expression,length);
select round(74.8,0);

select round(74.876,0);
select round(74.876,1);
select round(74.876,2);
select round(74.8769,3);
select round(74.4,0);

--convert
--select convert(datatype,col_name,style)

create table DOJ (id int, NAME varchar(20),DOJ datetime);

insert into DOJ values (1,'Mansa','2020-01-01 10:10:10');
insert into DOJ values (2,'Vasavi','2015-06-01 10:20:10');
insert into DOJ values (3,'Pravlika','2014-04-01 11:10:10');
insert into DOJ values (4,'Jyoti','2017-08-01 12:10:10');
insert into DOJ values (5,'Pushpa','2016-05-01 01:23:10');
insert into DOJ values (6,'Seema',GETDATE());
select * from DOJ;
select GETDATE(); --yy--mm--dd
select round (-79.45,-1);

--select convert(varchar,getdata(),2)

select convert(varchar, getdate());

select*, convert (varchar,DOJ) from DOJ;

select convert(varchar, getdate(),3);--dd/mm/yy

select convert(varchar, getdate(),4);--dd.mm.yy

select convert(varchar, getdate(),5);--dd--mm--yy

select convert(varchar, getdate(),6);--dd month yy

select convert(varchar, getdate(),7);--month dd yy

select convert(varchar, getdate(),9);--month dd yy with time

select convert(varchar, getdate(),14); --hh:mm:sec:ms

------------------------------------------------------------------------------------------------------------------------------------------
100	Default for datetime and smalldatetime	SELECT CONVERT(VARCHAR(20), GETDATE(), 100)	mon dd yyyy hh:miAM (or PM)
101	U.S.	SELECT CONVERT(VARCHAR(10), GETDATE(), 101) AS [MM/DD/YYYY]	mm/dd/yyyy
102	ANSI	SELECT CONVERT(VARCHAR(10), GETDATE(), 102) AS [YYYY.MM.DD]	yyyy.mm.dd
103	British/French	SELECT CONVERT(VARCHAR(10), GETDATE(), 103) AS [DD/MM/YYYY]	dd/mm/yyyy
104	German	SELECT CONVERT(VARCHAR(10), GETDATE(), 104) AS [DD.MM.YYYY]	dd.mm.yyyy
105	Italian	SELECT CONVERT(VARCHAR(10), GETDATE(), 10
--------------------------------------------------------------------------------------------------------------------------
--is null

select * 



--HOW  TO DELETE CONSTRAINTS

select * from account;

insert into account values (1, 'A');

[PK__Account___F699E7FF40AAA196

alter table account drop constraint [PK__Account___F699E7FF40AAA196];

--alter table table_name add constraint pk_new primary key();

[PK__customer__A9FDEC1294C59A86]
select * from customer;
insert into customer values(1,'A');

alter table customer drop constraint [PK__customer__A9FDEC1294C59A86]

-----------------------------------------------------------------------------------------------------------------------

--store procedure ke sath inter link hai

sp_rename  'info.city','loc'  --rename col_name
sp_rename 'exercise1','Class';-- rename table name 
select * from Exercise1;

select * from Class;