drop table if exists serviceCategory;
drop table if exists itemCategory;
drop table if exists userServices;
drop table if exists userItems;
drop table if exists users;

create table users (userID int IDENTITY (1,1) not null primary key clustered, firstName varchar(40) not null, lastName varchar (40) not null, 
email varchar(100) not null check (email like '%.edu'), passwordHash binary(64) not null);

create table userItems (itemID int IDENTITY (1,1) not null primary key clustered, itemName varchar(100) not null, itemDescription varchar(300) not null, 
itemCategoryName varchar(15), postedDate smalldatetime, itemImages image, userID int foreign key references users(userID))

create table userServices (serviceID int IDENTITY (1,1) not null primary key clustered, serviceName varchar(100) not null, serviceDescription varchar(300),
postedDate smalldatetime, removalDate date, userID int foreign key references users(userID))

create table itemCategory (serviceCategoryID int IDENTITY (1,1) not null primary key clustered, itemCategoryName varchar(15))

create table serviceCategory (serviceCategoryID int IDENTITY (1,1) not null primary key clustered, serviceCategoryName varchar(15))