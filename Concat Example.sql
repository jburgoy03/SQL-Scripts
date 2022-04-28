select CONCAT(Firstname, ' ', Lastname) as 'Name', upper(isnull(m.Description, 'Undeclared')) 'Majors'
	from Student s
	left join Major m
		on s.MajorId = m.Id
