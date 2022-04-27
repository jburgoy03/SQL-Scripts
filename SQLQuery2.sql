--group by
select c.Name as 'Company', COUNT(c.name) as 'Orders'
	from Customers c
	join Orders o
		on o.CustomerId = c.Id
	group by c.Name 
	having count (*) > 1
	order by 'Orders';



select c. name, o.Id, o.Date, o.Description
	from Orders o
	join Customers c
		on o.CustomerId = c.Id
	order by c.Name;

