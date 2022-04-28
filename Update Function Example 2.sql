insert Student
	(Firstname, Lastname, StateCode, GPA, MajorId)
	values	
	('Jennifer', 'Burgoyne', 'OH', 3.0, '6'),
	('Garrett', 'Dougherty', 'OH', 1.4, '6');

update student set
	MajorId = (select id from Major where Description = 'Education')
	where Lastname = 'Burgoyne' or Lastname = 'Dougherty'
 
 insert Major
	(Code, Description, MinSAT)
	values
	('UWBW', 'Underwater Basket Weaving 101', 40); 

select * from Major

select * from Student
