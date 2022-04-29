select *	
	from Student s
	join StudentClass sc
		on sc.StudentId = s.Id
	join Class c
		on c.Id = sc.Id

insert Instructor (Firstname, Lastname, YearsExperience, IsTenured)
	values('Greg', 'Doud', 15, 1)

select * from Student


insert Class (code, subject, section, InstructorId)
	values('UWBW', 'Underwater Basket Weaving', 101, 11)