create table Users
(
	Id int not null primary key identity (1,1),
	Username varchar(30) not null unique,
	Password varchar(30) not null,
	Firstname varchar(30) not null,
	Lastname varchar(30) not null,
	Phone varchar(12),
	Email varchar(255),
	IsReviewer bit not null default 0,
	IsAdmin bit not null default 0
)

create table Vendors
(
	Id int not null primary key identity (1,1),
	Code varchar(30) not null unique, 
	Name varchar(30) not null, 
	Adrdress varchar(30) not null, 
	City varchar(30) not null, 
	State varchar(2) not null, 
	Zip varchar(5) not null,
	Phone varchar(12) null,
	Email varchar(255) null
)

create table Products
(
	Id int not null primary key identity (1,1),
	PartNBR varchar(30) not null unique, 
	Name varchar(30) not null,
	Price decimal(9,2) not null default 0,
	Unit varchar(30) not null default 'Each',
	PhotoPath varchar(255) null,
	VendorID int not null foreign key references Vendors(id)
)

create table Requests
(
	Id int not null primary key identity (1,1),
	Description varchar(80) not null,
	Justification varchar(80) not null,
	RejectionReason varchar(80),
	DeliveryMode varchar(20) not null,
	Status varchar(10) not null default 'New',
	Total decimal (10,2) not null default 0,
	UserID int not null foreign key references Users(id)
)

create table Requestlines
(
	Id int not null primary key identity (1,1),
	RequestId int not null foreign key references Requests(id),
	ProductId int not null foreign key references Products(id),
	Quantity int not null default 1
)	

insert Users (Username, Password, Firstname, Lastname, Phone, Email, IsReviewer, IsAdmin)
	values ('Omega01', 'password123', 'Alex', 'Hamilton', '513-123-4567', 'alexh@yahoo.com', 1, 0),
			('Gamma02', 'password345', 'Johnathon', 'Groff', '882-976-0123', 'johngroff@enron.com', 1, 0),
			('Zeta03', 'password678', 'Rachel', 'Venson', '513-543-6789', 'rachelv@gmail.com', 1, 0),
			('Kappa', 'password01', 'Jared', 'Burgoyne', '513-288-4509', 'jaredburgoyne3gmail.com', 1, 1);

insert Vendors (Code, Name, Adrdress, City, State, Zip, Phone, Email)
	values ('ENR', 'Enron', '11 Wall St', 'New York', 'NY', '10005', '212-656-3000', 'enron@collapse.com'),
			('AMZN', 'Amazon', '410 Terry Ave N', 'Seattle', 'WA', '98109', '818-280-4331', 'jeffbezos@amazon.com'),
			('SHLDQ', 'Sears', '3333 Beverly Rd', 'Hoffman Estates', 'IL', '60179', '513-612-9206', 'sears@yahoo.com');

insert Products (PartNBR, Name, Price, Unit, VendorID)
	values ('123', 'Enron Hat', 20.50, 1, (select id from Vendors where code = 'ENR')),
			('100', 'Bidet', 150.00, 2000, (select id from Vendors where code = 'AMZN')),
			('456', 'Soccer Ball', 45, 2500, (select id from Vendors where code = 'AMZN')),
			('789', 'Flower Pot', 100, 45, (select id from Vendors where code = 'SHLDQ')),
			('10', 'GPU', 2225.99, 165, (select id from Vendors where code = 'AMZN')),
			('111', 'Energy', 150000.00, 160, (select id from Vendors where code = 'ENR')),
			('66', 'Outdoor Table', 6499.99, 12, (select id from Vendors where code = 'SHLDQ')),
			('50', 'Willow Tree', 5000, 45, (select id from Vendors where code = 'SHLDQ')),
			('1789', 'Golf Clubs' , 2199.99, 9271, (select id from Vendors where code = 'AMZN')),
			('999', 'LoTR Book Series', 50, 3848, (select id from Vendors where code = 'AMZN'));
