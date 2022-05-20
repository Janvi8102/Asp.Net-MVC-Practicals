Create table Designation (
Id int NOT NULL IDENTITY (1,1) PRIMARY KEY,
Designation varchar(50) NOT NULL
);

Create table Employee (
Id int NOT NULL IDENTITY (1,1) PRIMARY KEY,
First_Name varchar(50) NOT NULL,
Middle_Name varchar(50) ,
Last_Name varchar(50) NOT NULL,
DOB Date NOT NULL,
MobileNumber varchar(10) NOT NULL,
Address varchar(100),
Salary Decimal NOT NULL,
DesignationId int foreign key references Designation(Id)
);

select * from Designation;

select * from employee;

insert into Designation values('Asp.Net Developer');
insert into Designation values('UI Designer');
insert into Designation values('ROR Developer');
insert into Designation values('QA Engineer');
insert into Designation values('BlockChain Developer');

insert into Employee values('Janvi','Gh','Khatrani','2000-11-11',9658743265,'Ahmedabad',32000,2);
insert into Employee values('Karan','H','Kanani','2001/03/12',65879246125,'Rajkot',29000,5);
insert into Employee values('Riya',Null,'Patel','1999/09/09',9865742253,Null,30000,4);
insert into Employee values('Suraj','D','Amin','2000/04/07',8651458965,'Bharuch',35000,1);
insert into Employee values('Dhyani',Null,'Shah','1998/08/21',7526854652,'Rajkot',31000,3);
insert into Employee values('Rahul','D','Mehta','1999/08/21',9587632145,'Surat',37000,5);
insert into Employee values('Dhruv','A','Dhorajiya','2000/08/21',9654782135,Null,29000,2);
insert into Employee values('Khushi','H','Shah','1997/08/21',8542632145,'Ahmedabad',27000,3);

select count(Designation) from Designation;

select e.First_Name,e.Middle_Name,e.Last_Name,d.Designation from Employee as e,Designation as d where d.id=e.DesignationID;

create view Emp as select e.Id,e.First_Name,e.Middle_Name,e.Last_Name,d.Designation,e.DOB,e.MobileNumber,e.Address,e.Salary from Employee as e,Designation as d where d.id=e.DesignationID;
select * from Emp;

--Stored Procedure to insert data into designation
create PROCEDURE InsertDesignation (@Designation varchar(50))
AS
BEGIN; 
INSERT INTO Designation(Designation) VALUES(@Designation)
END;

--Stored Procedure to insert data into Employee
create PROCEDURE EmployeeInsert (@firstname varchar(50),@middlename varchar(50),@lastname varchar(50),@dob date,@mobilenumber varchar(10),@address varchar(100),@salary decimal,@designationid int)
AS
BEGIN; 
INSERT INTO Employee(First_Name,Middle_Name,Last_Name,DOB,MobileNumber,Address,Salary,DesignationId) VALUES(@firstname,@middlename,@lastname,@dob,@mobilenumber,@address,@salary,@designationid)
END;

SELECT D.Designation FROM Designation D WHERE (SELECT COUNT(*)FROM Employee E WHERE E.DesignationID = D.id) > 1;

--Stored Procedure to return Employee
create PROCEDURE SelectEmployee
As
BEGIN;
SELECT e.id,e.First_Name,e.Middle_Name,e.Last_Name,d.Designation,e.DOB,e.MobileNumber,e.Address,e.salary from employee e left join designation d on e.designationid=d.id order by dob;
END;

execute SelectEmployee;

--Stored Procedure to return Employee with DesignationId
create PROCEDURE EmployeebyDesignationID(@designationid int)
As
Begin;
SELECT e.* from employee e where e.DesignationId=@designationid order by First_Name;
END;

execute EmployeebyDesignationID 4;

create index DesignationId on employee(DesignationId);

select * from Employee where salary=(select max(salary) from Employee);
