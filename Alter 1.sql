alter table customers
	alter column name varchar (50) not null;

alter table customers
	add Updated datetime default null;

alter table customers
	drop column updated;
