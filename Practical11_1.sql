Create table Employee (
Id int NOT NULL IDENTITY (1,1) PRIMARY KEY,
First_Name varchar(50) NOT NULL,
Middle_Name varchar(50) ,
Last_Name varchar(50) NOT NULL,
DOB Date NOT NULL,
MobileNumber varchar(10) NOT NULL,
Address varchar(100) 
);

select * from employee;

insert into Employee values('Janvi','Gh','Khatrani','2008-11-11',9658743265,'Ahmedabad');
insert into Employee values('Karan','H','Kanani','1998/03/12',65879246125,'Rajkot');
insert into Employee values('Riya','J','Patel','1989/09/09',9865742253,Null);
insert into Employee values('Suraj','D','Amin','1979/04/07',8651458965,'Bharuch');
insert into Employee values('Dhyani','Bh','Shah','1969/08/21',7526854652,'Rajkot');
insert into Employee values('Rahul','D','Mehta','1969/08/21',9587632145,'Surat');
insert into Employee values('Dhruv','A','Dhorajiya','1969/08/21',9654782135,Null);
insert into Employee values('Khushi','H','Shah','1969/08/21',8542632145,'Ahmedabad');

update Employee set First_Name='SQLPerson' where id=1;
update Employee set Middle_Name='I';

delete from Employee where id<2;
delete from Employee;
