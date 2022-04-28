	
update Student set 
	GPA = gpa - 0.1,
	SAT = sat + 10
	where MajorId = (select id from Major where Description like 'Math%');

select *
	from Student;