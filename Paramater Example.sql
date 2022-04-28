declare @lowgpa decimal(7,2) = 2.0;
declare @highgpa decimal(7,2) = 3.5;

select *
	from Student
	where GPA >= @lowgpa
	and GPA <= @highgpa
	order by GPA desc;
	