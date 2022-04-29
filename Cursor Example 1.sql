DECLARE myCur cursor for 
	select * from Major;
	
declare @id int, @code varchar(4), @desc varchar (50), @minsat int;
declare @countsat int = 0, @totalsat int = 0;

open myCur;

fetch next from mycur into @id, @code, @desc, @minsat;

while @@FETCH_STATUS = 0
begin
	print 'Major: ' + str(@id) + '|' + @code + '|' + @desc + '|' + str(@minsat);

	set @totalsat = @totalsat + @minsat;
	set @countsat = @countsat + 1;
	
	fetch next from mycur into @id, @code, @desc, @minsat;
end

print 'Done....';

close myCur;

deallocate myCur;

select 'Avg of minSat', @totalsat / @countsat;

select avg(minsat) from Major;