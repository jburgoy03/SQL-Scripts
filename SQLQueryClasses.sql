select * from  Major m
	where m.MinSAT >= 1000
	order by MinSAT desc;

select * from Student
	where SAT < 1000
	order by SAT desc;

select firstname, lastname, yearsexperience from Instructor
	order by Lastname;
	
select s.Lastname 'Student Last Name', m.Description 'Major'
	from Student s
	join Major m 
	on s.MajorId = m.Id;

select s.Lastname as 'Name', c.Subject, c.Code
	from Student s
	join StudentClass sc on sc.studentID = s.ID
	join Class c
		on c.Id = sc.classid
	where s.Lastname = 'Ant';

select s.Lastname, c.Code
	from Class c
	join StudentClass sc 
		on c.Id = sc.ClassId
	join Student s 
		on s.Id = sc.StudentId
	where c.Code like 'ENG%';
	
select m.Description as 'Major', c.Code, c.Subject
	from Major m
	join MajorClass mc
		on m.Id = mc.MajorId
	join Class c
		on c.Id = mc.ClassId
	where m.Description = 'General Business';

select *
	from Student s left join major m
		on m.Id = s.MajorId;

select * 
	from class c
	join Instructor i
		on i.Id = c.InstructorId;

select *
	from Instructor i
	left join Class c
		on c.InstructorId = i.Id
	where c.InstructorId is null;

select * from Student
	where GPA < (select AVG(GPA) from Student);