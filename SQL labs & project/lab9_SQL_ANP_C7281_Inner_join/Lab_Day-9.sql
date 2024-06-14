Lab_Day-9(Inner Join,Outer Join,Left Outer Join)

Lab: Use the Student Management System Database and table from previous lab.Perform the following commands on the table Student and Enrollment. 

1. Let's consider a scenario where you have a database tracking student enrollments and some students may not be enrolled in any courses. 

John Doe (StudentID: 1) is enrolled in courses with EnrollmentIDs 101 and 102. 

Jane Smith (StudentID: 2) is enrolled in courses with EnrollmentIDs 103 and 104. 

Bob Johnson (StudentID: 3) is not enrolled in any courses. 

Now,run RIGHT OUTER JOIN query to retrieve data. 

CODE:

-- Task 1: RIGHT OUTER JOIN query to retrieve data
SELECT Student.StudentID, Student.FirstName, Student.LastName, Enrollment.EnrollmentID, Enrollment.CourseID
FROM Student
RIGHT OUTER JOIN Enrollment ON Student.StudentID = Enrollment.StudentID;

OUTPUT:
+-----------+-----------+----------+--------------+----------+
| StudentID | FirstName | LastName | EnrollmentID | CourseID |
+-----------+-----------+----------+--------------+----------+
|         1 | Anil      | Kumar    |            1 |        1 |
|         2 | Ashok     | Kumar    |            2 |        2 |
|         3 | Dimbu     | Mastan   |            3 |        3 |
|         4 | Vamsi     | Bunny    |            4 |        4 |
|         5 | Joo       | Joo      |            5 |        5 |
|         1 | Anil      | Kumar    |            6 |        1 |
|         2 | Ashok     | Kumar    |            7 |        2 |
|         3 | Dimbu     | Mastan   |            8 |        3 |
|         4 | Vamsi     | Bunny    |            9 |        4 |
|         5 | Joo       | Joo      |           10 |        5 |
+-----------+-----------+----------+--------------+----------+
10 rows in set (0.01 sec)


2. Assume a university where students can enroll in various courses. 

Here are some fictional details: Student Information: 

Student with ID 1: John, email: john@email.com 

Student with ID 2: Jane, email: jane@email.com 

Student with ID 3: Bob, email: bob@email.com Enrollment Information: 

Enrollment with ID 101: John (StudentID: 1) enrolls in Math (CourseID: MATH101). 

Enrollment with ID 102: John (StudentID: 1) enrolls in History (CourseID: HIST201). 

Enrollment with ID 103: Jane (StudentID: 2) enrolls in Physics (CourseID: PHYS301). 

Enrollment with ID 104: Bob (StudentID: 3) enrolls in Chemistry (CourseID: CHEM401). 

Enrollment with ID 105: Alice (StudentID: 4) enrolls in English (CourseID: ENG501). 

Now, write a LEFT JOIN query to retrieve the data.

CODE:

-- Task 2: LEFT JOIN query to retrieve data
SELECT Student.StudentID, Student.FirstName, Student.LastName, Enrollment.EnrollmentID, Enrollment.CourseID
FROM Enrollment
LEFT JOIN Student ON Student.StudentID = Enrollment.StudentID;

OUTPUT:

+-----------+-----------+----------+--------------+----------+
| StudentID | FirstName | LastName | EnrollmentID | CourseID |
+-----------+-----------+----------+--------------+----------+
|         1 | Anil      | Kumar    |            1 |        1 |
|         2 | Ashok     | Kumar    |            2 |        2 |
|         3 | Dimbu     | Mastan   |            3 |        3 |
|         4 | Vamsi     | Bunny    |            4 |        4 |
|         5 | Joo       | Joo      |            5 |        5 |
|         1 | Anil      | Kumar    |            6 |        1 |
|         2 | Ashok     | Kumar    |            7 |        2 |
|         3 | Dimbu     | Mastan   |            8 |        3 |
|         4 | Vamsi     | Bunny    |            9 |        4 |
|         5 | Joo       | Joo      |           10 |        5 |
+-----------+-----------+----------+--------------+----------+
10 rows in set (0.00 sec)


ChatGPT Exercise:

Using ChatGPT generates SQL queries of the below problem . 

Scenario 1:You have two tables, employees and departments. Retrieve a list of employees along with their department names using an inner join. 

QUERY:
SELECT e.EmployeeName, d.DepartmentName
FROM employees e
INNER JOIN departments d ON e.DepartmentID = d.DepartmentID;


Scenario 2:In an employee database, join the employees table with itself to display each employee along with their manager, including employees without managers, using a left join. We have an "Employee" table with the following columns: EmployeeID,EmployeeName,ManagerID(Foreign Key) and "Manager" table with following columns:ManagerID,ManagerName.You want to retrieve each employee along with your manager.Generate a chatGPT prompt for the scenario.

QUERY:
SELECT e.EmployeeName, COALESCE(m.ManagerName, 'No Manager') AS ManagerName
FROM employees e
LEFT JOIN managers m ON e.ManagerID = m.ManagerID;

