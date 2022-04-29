
create table Employees
(
	Id int not null primary key identity (1,1),
	Name varchar (50) not null,
	Phone varchar (12) null,
	Salary dec(9,2) not null default 0,
	Active bit not null default 1,
	DepartmentId int null foreign key references Department(id)
)

create table Department
(
	Id int not null primary key identity (1,1),
	Description varchar (50) not null,
	Location varchar(80) not null
)