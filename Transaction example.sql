insert Student
	(Firstname, Lastname, StateCode, SAT, GPA)
values
	('Jared', 'Burgoyne', 'OH', 1250, 3.0);

select * from Student;

update Student set
	MajorId = 3
	where Lastname = 'Burgoyne';

begin transaction;

update Student set
	MajorId = 1
	where MajorId is null;

rollback transaction