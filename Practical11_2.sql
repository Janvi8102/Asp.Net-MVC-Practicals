Create table Employee (
Id int NOT NULL IDENTITY (1,1) PRIMARY KEY,
First_Name varchar(50) NOT NULL,
Middle_Name varchar(50) ,
Last_Name varchar(50) NOT NULL,
DOB Date NOT NULL,
MobileNumber varchar(10) NOT NULL,
Address varchar(100),
Salary Decimal NOT NULL
);

select * from Employee;

insert into Employee values('Janvi','Gh','Khatrani','2000-11-11',9658743265,'Ahmedabad',32000);
insert into Employee values('Karan','H','Kanani','2001/03/12',65879246125,'Rajkot',29000);
insert into Employee values('Riya',Null,'Patel','1999/09/09',9865742253,Null,30000);
insert into Employee values('Suraj','D','Amin','2000/04/07',8651458965,'Bharuch',35000);
insert into Employee values('Dhyani',Null,'Shah','1998/08/21',7526854652,'Rajkot',31000);
insert into Employee values('Rahul','D','Mehta','1999/08/21',9587632145,'Surat',37000);
insert into Employee values('Dhruv','A','Dhorajiya','2000/08/21',9654782135,Null,29000);
insert into Employee values('Khushi','H','Shah','1997/08/21',8542632145,'Ahmedabad',27000);

select SUM(Salary) as "Total Salary" from Employee;
select * from Employee where DOB<'01-01-2000';
select count(*) as MiddleNameNull from Employee where Middle_Name is null;
