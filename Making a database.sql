
create table Authors
(
	Id int not null primary key identity (1,1),
	FirstName varchar (15) not null,
	Lastname varchar (15) not null,
	Genre varchar (10) null,
	Alive bit not null default 1,
	AmountOfWorks int not null,
)

Create table Works
(
	Id int not null primary key identity (1,1),
	Title varchar (25) not null, 
	Genre varchar (20) not null,
	YearReleased varchar (4) not null,
	AuthorID int null foreign key references Authors(iD)
)

insert Authors (FirstName, Lastname, Genre, AmountOfWorks)
	values ('Paulo', 'Coehlo', 'Fiction', 15),
			('Brandon', 'Sanderson', 'Fantasy', 20),
			('Frankopan', 'Peter', 'History', 8),
			('Smith', 'Kind-Zierski', 'Philosophy', 4),
			('Christopher', 'Hitchens', 'History', 32),
			('Emily', 'Bronte', 'Fiction', 12),
			('Haruki', 'Murakami', 'Fiction', 23),
			('Edith', 'Hamilton', 'Mythology', 9),
			('Frank', 'Herbert', 'Fantasy', 16),
			('Sir Arthur', 'Conan Doyle', 'Mystery', 24);

select * from Authors a
	right join Works w
		on a.Id = w.AuthorID; 

update Authors set
	Alive = 0
	where Lastname = 'Coehlo';