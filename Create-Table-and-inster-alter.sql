create table SalesOrder
(
	Id int not null primary key identity (1,1),
	Description varchar(80) not null,
	Date datetime not null default GETDATE(),
	Total decimal(9,2) not null default 0, 
	CustomerID int null foreign key references Customers(id)
)

insert SalesOrder (Description, Total, CustomerID)
	values ('First Sales Order', 1000, (select id from Customers where code = 'TQL'))

alter table salesorder
	alter column Customerid int not null;


update SalesOrder set CustomerID =1;

select * from SalesOrder;

alter table salesorder
	drop column customerid;