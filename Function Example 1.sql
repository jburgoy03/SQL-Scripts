select statecode 'State', COUNT(*) 'Number of Students'
	from Student
	group by StateCode
	having COUNT(*) <= 10
	order by COUNT(*) desc;

select statecode, count(*) 'Number of Student'
	from Student
	where MajorId is not null
	group by StateCode
	having StateCode in ('OH', 'IN', 'KY')
	order by StateCode;

select concat (Firstname,' ',Lastname) 'Name', GPA, SAT
	from Student
	order by Lastname;