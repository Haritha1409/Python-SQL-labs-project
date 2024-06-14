Lab 1: Database Schema Already we have created an Employee table in day 2 lab,let’s utilize this. 

Task: Add two more columns in the Employee table named Salary and department and add data into it. Now Imagine you work for a company with various departments, and there is a need to analyze employee salaries within the IT department. Write a query to retrieve all employees from the "employee" table who have a salary greater than 50000 and are in the 'IT' department 

Hint: Use AND operator to retrieve details. 

Submission: Create an SQL script file containing your solutions for the task. Name the file "lab_assignment1.sql" Provide comments above the query to indicate the query's purpose.


Code:

-- Add two more columns in the Employee table named Salary and Department and add data into it
ALTER TABLE Employee
ADD COLUMN Salary DECIMAL(10, 2),
ADD COLUMN Department VARCHAR(50);

-- Update data in the Employee table with salary and department information
UPDATE Employee
SET Salary = 60000, Department = 'IT'
WHERE emp_id = 101;

UPDATE Employee
SET Salary = 55000, Department = 'Sales'
WHERE emp_id = 102;

UPDATE Employee
SET Salary = 70000, Department = 'IT'
WHERE emp_id = 103;

UPDATE Employee
SET Salary = 48000, Department = 'HR'
WHERE emp_id = 104;

-- Write a query to retrieve all employees from the "employee" table who have a salary greater than 50000 and are in the 'IT' department
SELECT *
FROM Employee
WHERE Salary > 50000 AND Department = 'IT';


OUTPUT:

emp_id	first_name	last_name	age	email			Salary	Department
101	John		Doe		35	john@example.com	60000	IT
103	David		Lee		40	david@example.com	70000	IT


ChatGPT Exercise:

Using ChatGPT generates SQL queries of the below problem . Scenario 1: Determine the average age of employees in each department from the "employees" table. We have an "Employee" table with the following columns: employee_id, employee_name, department, and salary and you want to find the average salary for each department. Generate the chatGPT prompt for the above scenario.

SQL query:

SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department;

