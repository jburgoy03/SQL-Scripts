select name, format(sales, 'C', 'en-US') 'US Monetary'
	from Customers
	order by 'US Monetary' desc;