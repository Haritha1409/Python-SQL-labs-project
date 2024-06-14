Lab_Day-8(Table Aliases,Joins,Cross Join)

Lab 1: Use the Student management system Database and table from our previous lab and write a sql query to achieve the below scenario. Assume you are managing a university database that tracks student enrollments in various courses. You have two tables, "Student" and "Enrollment". The goal is to retrieve information about each student's ID, first name, last name, and their enrollment details, including the enrollment ID and the associated course ID. 
Hint:Use inner join to retrieve data. 

CODE:
SELECT Student.StudentID, Student.FirstName, Student.LastName, Enrollment.EnrollmentID, Enrollment.CourseID
FROM Student
INNER JOIN Enrollment ON Student.StudentID = Enrollment.StudentID;

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
10 rows in set (0.03 sec)


ChatGPT Exercise:

Using ChatGPT generates SQL queries of the below problem . Scenario 1:Imagine you have tables for students and courses. Use an inner join to generate a list of all possible student-course combinations, displaying the student name and course name. We have a "Student" table with the following a columns:StudentId,FirstName,lastName and "Course" table with the following a columns: CourseId,CourseName and Enrollment table with the following a columns:EnrollmentID,StudentID(Foreign key),CourseID(Foreign Key).You want to use inner join to generate a list of all possible student-course combinations.Generate the ChatGPT prompt for the above scenario

SELECT s.FirstName || ' ' || s.LastName AS StudentName, c.CourseName
FROM Student s
INNER JOIN Enrollment e ON s.StudentId = e.StudentID
INNER JOIN Course c ON e.CourseID = c.CourseId;