create or alter procedure AddMajor
	@Code varchar (4) = null,
	@Description varchar(10) = null,
	@MinSat int = null
as
begin
	insert Major (Code, Description, MinSAT)
	values(@Code, @Description, @MinSat)

end
go
	exec AddMajor 222,'Coding 101',1000; --following the syntax listed after instert and values

select * from Major

update Major set 
	code = 'CODE'
	where ID = 9; 