use Bank;

--RETRIEVAL QUERIES

/*
*Question 1
*Find all loan number for loans made at the Perryridge branch with loan amounts
*greater than $1100
*/

SELECT Loan_number FROM Loan
WHERE Branch_name = 'Perryridge'
AND Amount >1100;

/*Question 2
*Find the loan number of those loans with loan amounts between $1,000 and $1,500
*(that is, >=$1,000 and <=$1,500)
*/

SELECT Loan_number from Loan
WHERE Amount BETWEEN 1000 AND 1500;

/*Question 3
*Find the names of all branches that have greater assets than some branch located in
*Brooklyn.
*/

SELECT DISTINCT T.Branch_name FROM Branch as T, Branch as S
WHERE T.Assets > S.Assets and S.Branch_city = 'Brooklyn';

/*Question 4
*Find the customer names and their loan numbers for all customers having a loan at
*some branch.
*/

SELECT Customer_name, T.Loan_number, S..Amount
FROM Borrowers as T, Loan as S
WHERE T.Loan_number = S.Loan_number

/*Question 5
*Find all customers who have a loan, an account, or both
*/

(SELECT Customer_name FROM Depositor) UNION
(SELECT Customer_name FROM Borrower);

/*Question 6
*Find all customers who have an account but no loan.
*/

SELECT Customer_name FROM Depostior
WHERE Customer_name NOT IN
(SELECT Customer_name FROM Borrower);

/*Question 7
*Find the number of depositors for each branch.
*/

SELECT Branch_name, COUNT (DISTINCT Customer_name)
FROM Depositor, Account
WHERE Depositor.Account_number = Account.Account_number
GROUP BY Branch_name;

/*Question 8
* Find the names of all branches where the average account balance is more than $500.
*/

SELECT Branch_name, AVG(Balance)
FROM Account
GROUP BY Branch_name
HAVING AVG(Balance) > 500;

/*Questiion 9
* Find all customers who have both an account and a loan at the bank
*/

SELECT DISTINCT Customer_name
FROM Borrower
WHERE Customer_name IN
	(SELECT Customer_name FROM Depositor);

/*Question 10
* Find all customers who have a loan at the bank but do not have an account at the
*bank
*/

SELECT DISTINCT Customer_name
FROM Borrower
WHERE Customer_name NOT IN
	(SELECT Customer_name FROM Depositor);

/*Question 11
*Find the names of all branches that have greater assets than all branches located in
*Horseneck. (using both non-nested and nested select statement)
*/

SELECT Branch_name
FROM Branch_name
WHERE Assets > all
(SELECT Assets
FROM Branch_name
Where Branch_city = 'Horseneck');

/*Question 12
*1 query of your choice involving aggregate functions
*/

SELECT MAX(Account_number) AS HighestAccountNumber FROM Account;

/*Question 13
* 1 query of your choice involving group by feature.
*/

SELECT DISTINCT Branch_city FROM Branch;

--INSERT QUERIES

/*Question 1
* Create a HighLoan table with loan amount >=1500.
*/

CREATE TABLE HighLoan
(
	Loan_number varchar,
	Amount double (>= 1500)
);

/*Question 2
*. Create a HighSalaryEmployee table with employee having salary more than 2000.
*/

CREATE TABLE HighSalaryEmployee
(
	Employee_name varchar,
	Branch_name varchar,
	Salary double(2000)
);

/*Question 3
* 1 more query (meaningful) of your choice on any table.
*/

CREATE TABLE HighestLoanAmount
(
	Loan_number varchar,
	Branch_name varchar,
	Amount double (<= 2000);
)

--UPDATE QUERIES
/*Question 1
*Increase all accounts with balances over $800 by 7%, all other accounts receive 8%.
*/

UPDATE Account
SET Balance = Balance * 1.07
WHERE Balance > 800;

UPDATE Account
SET Balance = Balance * 1.07
WHERE Balance <= 800;

/*Question 2
* Do 2 update queries, each involving 2 tables.
*/
UPDATE Customer
SET Customer_name = 'John Thomas'
INNER JOIN
SET Account
WHERE Account_number = 808;

/* Question 3
* 1 more update query of your choice on any table.
*/

UPDATE Customer
SET Customer_name = 'Victoria Ramos',

--DELETE QUERIES

/*Question 1
* Delete the record of all accounts with balances below the average at the bank.
*/

DELETE FROM Account
WHERE Balance < (SELECT AVG (Balance) FROM Account);

/*Question 2
* Do 2 update queries, each involving 2 tables.
*/

UPDATE Customer
SET Customer_name = "John"
WHERE Branch_city = "Brooklyn"

UPDATE Branch
SET Branch_name  = "The Best Bank"
WHERE Branch_city = "Baltimore"

/*Question 3
* 1 more delete query of your choice from any table.
*/

DELETE FROM Branch
WHERE Assets >= 300000;

--VIEWS QUERIES

/*Question 1
* A view consisting of branches and their customers
*/

CREATE VIEW all_Customer AS
(SELECT Branch_name, Customer_name
FROM Depositor, Account
WHERE Depositor.Account_number = Account.Account_number)
UNION
(SELECT Branch_name, Customer_name
FROM Borrower, Loan
WHERE Borrower.Loan_number = Loan.Loan_number);

/*Question 2
* Create a view of HQEmployee who work in downtown branch.
*/

CREATE VIEW HQEmployee AS
SELECT Employee FROM Branch
WHERE Branch_city = 'Downtown';

/*Question 3
*  Do one insert, delete, update, and select queries on HQEmployee view.
*/

INSERT INTO HQEmployee (Employee_name, Branch_name, Salary)
	Values ("Victoria Ramos", "Brighton", 10000)

UPDATE HQEmployee
	SET Phone = "None"

DELETE FROM HQEmployee
	Value Phone

UPDATE HQEmployee
	SET Value = Null
