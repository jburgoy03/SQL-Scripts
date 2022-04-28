select * 
	from Customers
	where Sales < (select AVG(sales) from Customers);