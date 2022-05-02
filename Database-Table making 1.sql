create table Customers
(
	Id int not null primary key identity (1,1),
	code varchar (10) not null unique,
	Name varchar (30) not null,
	Sales decimal(9,2) not null default 0
		check (sales >= 0),
	Active bit not null default 1,
	Created datetime not null default getdate()
)
insert Customers (code, Name, Sales)
	values ('TQL', 'Total Quality Logistics', 100000);

select * from Customers;
