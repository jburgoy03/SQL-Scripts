update student set
	MajorId = (select id from major where code = 'ACCT')
	where MajorId = (select id from Major where Description = 'General Studies')

--delete Major 
	--where id = (select id from major where Description = 'General Studies');

select * from Major

select * from Student s
	join Major m
		on m.Id = s.MajorId;