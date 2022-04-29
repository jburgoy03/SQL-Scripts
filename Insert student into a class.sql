select *
	from Student s
	join StudentClass sc
	on sc.StudentId = s.Id
	join Class c
	on sc.ClassId = c.Id;

select *
	from Class;

insert StudentClass (StudentId, ClassId)
	values (
		(select id from Student where Lastname = 'Ephram'), (select id from Class where Code = 'UWBW')
	)