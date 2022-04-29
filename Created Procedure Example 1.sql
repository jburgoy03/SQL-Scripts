create or alter procedure Counter
	@max int = 5
as 
begin
	declare @nbr int = 0;
	declare @sum int = 0;
	while @nbr <= @max
	begin
		set @sum = @sum + (@nbr * @nbr);
		print str(@nbr) + ' sum is' + str(@sum);
		set @nbr = @nbr + 1;
	end
	print 'Done....'
end
go
execute Counter @max = 15;

