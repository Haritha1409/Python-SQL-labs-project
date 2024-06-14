                                                                               LAB-4
Lab 1:
Consider a simple database with one tables: BankAccount. 
BankAccount Table: ● Columns: account_id (Primary Key), account_holder_name, account_balance
Task 1: Insert Data Write an SQL INSERT statement to insert data into the BankAccount table. 
Task 2: Retrieving Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance of all account holders from the BankAccount table. 
Task 3: Filtering Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance where the account_balance is more than 30,000. 
Task 4: Updating Data Write an SQL UPDATE statement to change the account_balance of the account holder whose ID is 101.
Program:
CREATE TABLE IF NOT EXISTS BankAccount (
    Account_id INT PRIMARY KEY AUTO_INCREMENT,
    Account_holder_name VARCHAR(100),
    Account_balance DECIMAL(10,2)
);
USE studentmanagementsystem;
	Task 1: Insert Data into the BankAccount table
INSERT INTO BankAccount (account_holder_name, account_balance)
VALUES
    (‘John Doe’, 50000),
    (‘Jane Smith’, 75000),
    (‘David Lee’, 30000);

	Task 2: Retrieving Data from the BankAccount table
SELECT account_holder_name, account_balance
FROM BankAccount;

	Task 3: Filtering Data from the BankAccount table
SELECT account_holder_name, account_balance
FROM BankAccount
WHERE account_balance > 30000;

	Task 4: Updating Data in the BankAccount table
UPDATE BankAccount
SET account_balance = 35000
WHERE account_id = 101;

OUTPUT:

mysql> CREATE TABLE IF NOT EXISTS BankAccount (
    ->     account_id INT PRIMARY KEY AUTO_INCREMENT,
    ->     account_holder_name VARCHAR(100),
    ->     account_balance DECIMAL(10,2)
    -> );
Query OK, 0 rows affected (0.07 sec)

mysql> USE studentmanagementsystem;
Database changed
mysql> -- Task 1: Insert Data into the BankAccount table
mysql> INSERT INTO BankAccount (account_holder_name, account_balance)
    -> VALUES
    ->     ('John Doe', 50000),
    ->     ('Jane Smith', 75000),
    ->     ('David Lee', 30000);
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql>
mysql> -- Task 2: Retrieving Data from the BankAccount table
mysql> SELECT account_holder_name, account_balance
    -> FROM BankAccount;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| John Doe            |        50000.00 |
| Jane Smith          |        75000.00 |
| David Lee           |        30000.00 |
+---------------------+-----------------+
3 rows in set (0.00 sec)

mysql>
mysql> -- Task 3: Filtering Data from the BankAccount table
mysql> SELECT account_holder_name, account_balance
    -> FROM BankAccount
    -> WHERE account_balance > 30000;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| John Doe            |        50000.00 |
| Jane Smith          |        75000.00 |
+---------------------+-----------------+
2 rows in set (0.00 sec)

mysql>
mysql> -- Task 4: Updating Data in the BankAccount table
mysql> UPDATE BankAccount
    -> SET account_balance = 35000
    -> WHERE account_id = 101;
Query OK, 0 rows affected (0.00 sec)
Rows matched: 0  Changed: 0  Warnings: 0


Using ChatGPT generates SQL queries of the below problem . 

Scenario 1: In an employee database, you want to retrieve information about employees who belong to the "Sales" department and have a salary greater than 50,000. 
Program:
SELECT * FROM employees
WHERE department = ‘Sales’ AND salary > 50000;

Scenario 2: An employee has resigned, and you need to remove their record from the "employees" table. Write an SQL DELETE query for this. 
Program:
DELETE FROM employees
WHERE employee_id = ‘employee_id_here’;

Scenario 3: You want to delete all orders placed before '2022-01-01' that are still in the 'Pending' status. Write an SQL DELETE query for this. 
Program:
DELETE FROM orders
WHERE order_date < ‘2022-01-01’ AND status = ‘Pending’;

Scenario 4: You want to remove all products from the "Discontinued" category as they are no longer available. Write an SQL DELETE query for this. 
Program:
DELETE FROM products
WHERE category = 'Discontinued';

Scenario 5: Employees in the "Sales" department are getting a bonus, and you want to add 1000 to the bonus column for all employees in that department. Write an SQL UPDATE query for this.
Program:
UPDATE employees
SET bonus = bonus + 1000
WHERE department = 'Sales';
