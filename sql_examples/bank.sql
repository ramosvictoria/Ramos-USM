create database if not exists Bank;

use Bank;

/*-----------------START-CREATING-DATABASE--------------------*/

/*
*Creating tables for bank database
*Took from PDF on blackboard
*Format follows bank database schema handout
*/

create table if not exists Branch
(Branch_name varchar(10) not null primary key,
Branch_city varchar(10),
Assets double
);

create table if not exists Customer
(
Customer_name varchar(20) not null primary key,
Customer_street varchar(20),
Customer_city varchar(10)
);

create table if not exists Account
(Account_number char(5) not null primary key,
Branch_name varchar(10),
Balance double
);

create table if not exists Loan
(Loan_number varchar(5) not null primary key,
Branch_name varchar(10),
Amount double
);

create table if not exists Depositor
(Customer_name varchar(20) not null,
Account_number char(5) not null,
primary key(Customer_name, Account_number)
);

create table if not exists Borrower
(Customer_name varchar(20) not null,
Loan_number varchar(5) not null,
primary key(Customer_name, Loan_number)
);

create table if not exists Employee
(Employee_name varchar(20) not null,
Branch_name varchar(10) not null,
Salary double,
primary key(Employee_name,Branch_name)
);

--End tables--

/*-----------------START-POPULATING-DATABASE--------------------*/

/*
*Populating tables for bank database
*Took from PDF on blackboard
*/

use Bank;

--Populating "Branch" table
insert into Branch values('Brighton', 'Brooklyn', 7100000);
insert into Branch values('Downtown', 'Brooklyn', 9000000);
insert into Branch values('Mianus', 'Horseneck', 400000);
insert into Branch values('North Town', 'Rye', 3700000);
insert into Branch values('Perryridge', 'Horseneck', 1700000);
insert into Branch values('Pownal', 'Bennington', 300000);
insert into Branch values('Redwood', 'Palo Alto', 2100000);
insert into Branch values('Round Hill', 'Horseneck', 8000000);

--Populating "Customer" table
insert into Customer values('Adams', 'Spring',
'Pittsfield');
insert into Customer values('Brooks', 'Senator',
'Brooklyn');
insert into Customer values('Curry', 'North', 'Rye');
insert into Customer values('Glenn', 'Sand Hill',
'Woodside');
insert into Customer values('Green', 'Walnut',
'Stamford');
insert into Customer values('Hayes', 'Main',
'Harrison');
insert into Customer values('Johnson', 'Alma', 'Palo
Alto');
insert into Customer values('Jones', 'Main',
'Harrison');
insert into Customer values('Lindsay', 'Park',
'Pittsfield');
insert into Customer values('Smith', 'North', 'Rye');
insert into Customer values('Turner', 'Putnam',
'Stamford');
insert into Customer values('Williams', 'Nassau',
'Princeton');

--Populating "Account" table
insert into Account values('A-101', 'Downtown', 500);
insert into Account values('A-102', 'Perryridge', 400);
insert into Account values('A-201', 'Brighton', 900);
insert into Account values('A-215', 'Mianus', 700);
insert into Account values('A-217', 'Brighton', 750);
insert into Account values('A-222', 'Redwood', 700);
insert into Account values('A-305', 'Round Hill', 350);

--Populating "Loan" table
insert into Loan values('L-11', 'Round Hill', 900);
insert into Loan values('L-14', 'Downtown', 1500);
insert into Loan values('L-15', 'Perryridge', 1500);
insert into Loan values('L-16', 'Perryridge', 1300);
insert into Loan values('L-17', 'Downtown', 1000);
insert into Loan values('L-23', 'Redwood', 2000);
insert into Loan values('l-93', 'Mianus', 500);

--Populating "Depositor" table
insert into Depositor values('Hayes', 'A-102');
insert into Depositor values('Johnson', 'A-102');
insert into Depositor values('Johnson', 'A-201');
insert into Depositor values('Jones', 'A-217');
insert into Depositor values('Lindsay', 'A-222');
insert into Depositor values('Smith', 'A-215');
insert into Depositor values('Turner', 'A-305');

--Populating "Borrower" table
insert into Borrower values('Adams', 'L-16');
insert into Borrower values('Curry', 'L-93');
insert into Borrower values('Hayes', 'L-15');
insert into Borrower values('Jackson', 'L-14');
insert into Borrower values('Jones', 'L-17');
insert into Borrower values('Smith', 'L-11');
insert into Borrower values('Smith', 'L-23');
insert into Borrower values('Williams', 'L-17');

--Populating "Employee" table
insert into Employee values('Adams', 'Perryridge', 1500);
insert into Employee values('Brown', 'Perryridge', 1300);
insert into Employee values('Gopal', 'Perryridge', 5300);
insert into Employee values('Johnson', 'Downtown', 1500);
insert into Employee values('Loreena', 'Downtown', 1300);
insert into Employee values('Peterson', 'Downtown', 2500);
insert into Employee values('Rao', 'Austin', 1500);
insert into Employee values('Sato', 'Austin', 1600);

--End
