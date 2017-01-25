DROP database if exist "decodemtl_addressbook"; 
CREATE database "decodemtl_addressbook"; 
USE "decodemtl_addressbook"; 

CREATE TABLE Address(
    id int auto_increment primary key,
    entryId int, 
    type ENUM("home","work","other"),
    addressLine1 varchar(255),
    addressLine2 varchar(255),
    city varchar(255),
    province varchar(128),
    country varchar(128),
    postalCode varchar(10));

CREATE TABLE ElectronicMail(
	id int auto_increment primary key,
	entryId int,
	type ENUM("home", "work", "other"),
	content varchar(255));

CREATE TABLE Phone(
	id int auto_increment primary key,
	entryId INT,
	type ENUM("home", "work", "other"),
	subtype ENUM("landline", "cellular", "fax"),
	content varchar(255));

CREATE TABLE Entry(
	id int auto_increment primary key,
	addressBookId int,
	firstName varchar(255),
	lastName varchar(255),
	birthday datetime,
	type ENUM("phone", "address", "electronic-mail"));

CREATE TABLE AddressBook(
	id int auto_increment primary key,
	accountId int,
	name varchar(255),
	createdOn datetime,
	modifiedOn datetime);

CREATE TABLE Account(
	id int auto_increment primary key,
	email varchar(255),
	password varchar(40),
	createdOn datetime,
	modifiedOn DATETIME);



