create or alter procedure AddStudent
	@firstname varchar(30) = null,
	@lastname varchar(30) = null, 
	@statecode char(2) = 'OH',
	@sat int = null,
	@gpa dec(4,2) = 0,
	@majorcode varchar(4) = null
as
begin
	if @firstname is null
	begin
		print 'Firstname is required';
		return;
	end
	if @lastname is null
	begin
		print 'Lastname is requird'
		return;
	end

	declare @majorid int = 0
	select @majorid = id from Major where code = @majorcode

	if @majorid = 0
	begin
		print 'Major Required';
		return;
	end


	insert Student (Firstname, Lastname, StateCode, GPA, SAT, MajorId)
		values (@firstname, @lastname, @statecode, @gpa, @sat, @majorid);

	if @@rowcount != 1
	begin
		print 'Insert Failed'
		return;
	end

	print 'Insert Successful!'

end
go
exec AddStudent @firstname = 'Josh', @lastname = 'Monning', @gpa = 4, @sat = 1600, @majorcode = 'Math';

go
select * from Student order by Id desc;