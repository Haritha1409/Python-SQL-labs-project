                                                                             LAB-3
Lab 1. For this assignment, please use the same tables created in your previous lab session. 
Task 1: Update the Student table with the following information: Change the email to ‘jane_Smith@example.com’ Where FirstName is ‘Jane’ and LastName is ‘Smith’; Update the Instructor with the following information: Change the email to ‘rogerwhite@example.com’ Where FirstName of the instructor is ‘Roger’ and LastName is ‘White’;
Task 2: Delete record from the Student table on following condition: Delete student/students records from the Student table where last name is Smith. 
Task 3: List the student whose first name starts with J. Submission: Create an SQL script file containing your solutions for all tasks (queries). Name the file “lab_assignment1.sql” Provide comments above each query to indicate the task number and the query’s purpose.
Program:
	Task 1: Update the Student table
UPDATE Student
SET Email = ‘jane_Smith@example.com’
WHERE FirstName = ‘Jane’ AND LastName = ‘Smith’;
	Task 1: Update the Instructor table
UPDATE Instructor
SET Email = ‘rogerwhite@example.com’
WHERE FirstName = ‘Roger’ AND LastName = ‘White’;
	Task 2: Delete records from the Student table
DELETE FROM Student
WHERE LastName = ‘Smith’;
	Task 3: List the students whose first name starts with J
SELECT *
FROM Student
WHERE FirstName LIKE ‘J%’;

Output:

mysql>
mysql> -- Task 3: List the students whose first name starts with J
mysql> SELECT *
    -> FROM Student
    -> WHERE FirstName LIKE 'J%';
+-----------+-----------+----------+-------------+--------+-----------------------+--------------+
| StudentID | FirstName | LastName | DateOfBirth | Gender | Email
      | Phone        |
+-----------+-----------+----------+-------------+--------+-----------------------+--------------+
|         5 | Joo       | Joo      | 1999-07-03  | Male   | david.lee@example.com | 321-654-0987 |
|        10 | Joo       | Joo      | 1998-04-30  | Female | joo@example.com       | 7777777777   |
+-----------+-----------+----------+-------------+--------+-----------------------+--------------+
2 rows in set (0.00 sec)






