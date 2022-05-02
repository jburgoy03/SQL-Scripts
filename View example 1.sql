Create View CustomerSalesOrder as
select so.id, so.description, so.date, so.total, c.Name 
	from salesorder so
	join Customers c
		on c.Id = so.customerid;

select * from CustomerSalesOrder;
	