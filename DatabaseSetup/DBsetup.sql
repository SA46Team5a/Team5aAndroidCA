USE master; 
IF EXISTS(SELECT name FROM sys.databases WHERE name = 'BookStore') 
	BEGIN     
		ALTER DATABASE BookStore SET SINGLE_USER WITH ROLLBACK IMMEDIATE;     
		DROP DATABASE BookStore; 
	END 
GO 

CREATE DATABASE BookStore; 
GO

use BookStore;

create table Categories (
	CategoryID	int		not null	identity(1,1),
	Category	nvarchar(64)	not null,
	primary key (CategoryID)
);
go

create table Authors (
	AuthorID	int		not null	identity(1,1),
	Author		nvarchar(64)	not null,
	primary key (AuthorID)
);
go

create table Books (
	Title		nvarchar(128)	not null,
	AuthorID	int		not null,
	CategoryID	int		not null,
	ISBN		nchar(13)	not null,
	Price		numeric(8,2)	not null,
	StockLevel	int		not null,
	Synopsis	nvarchar(1000)	not null,
	primary key (ISBN),
	foreign key (CategoryID) references Categories(CategoryID),
	foreign key (AuthorID) references Authors(AuthorID)
);
go

create table Discounts (
	DiscountID	int		not null	identity(1,1),
	CategoryID	int, -- if null, discount applies to all categories
	StartDate	datetime	not null,
	EndDate		datetime	not null,
	DiscountPercent	numeric(4,2)	not null,
	primary key (DiscountID),
	foreign key (CategoryID) references Categories(CategoryID)
);
go

create table UserDetails (
	UserName	nvarchar(64)	not null,
	Email		nvarchar(64)	not null,
	Name		nvarchar(64)	not null,
	ContactNumber	nvarchar(8)	not null,
	primary key (UserName)
);

create table Advertisements (
	AdID		int		not null	identity(1,1),
	AdImage		nvarchar(100)	not null,
	TargetURL	nvarchar(100)	not null,
	primary key (AdID)
);
go

create table Carts (
	CartID		int		not null	identity(1,1),
	UserName	nvarchar(64)	not null, 
	CheckedOut	bit		not null 	default 0,
	PaymentMode	nvarchar(10), --null if not paid
	primary key (CartID),
	foreign key (UserName) references UserDetails(UserName),
);
go

create table CartItems (
	CartItemID	int		not null	identity(1,1),
	CartID		int		not null,
	ISBN		nchar(13)	not null,
	TimeAdded	datetime	not null,
	Quantity	int		not null,
	primary key (CartItemID),
	foreign key (CartID) references Carts(CartID),
	foreign key (ISBN) references Books(ISBN)
);
go




