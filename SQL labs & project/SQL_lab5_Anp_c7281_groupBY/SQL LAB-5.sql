                                               LAB-5
Lab 1- Database Schema: Use the same database scheme created in Previous Lab. 
Task: Let’s consider a scenario where you want to retrieve information about students from a database table named student and display the results in ascending order based on their last names. 
Program:
SELECT *
FROM student
ORDER BY LastName ASC;

OUTPUT:

mysql> -- Task: Retrieve information about students from the 'student' table and display the results in ascending order based on their last names
mysql> SELECT *
    -> FROM student
    -> ORDER BY LastName ASC;
+-----------+-----------+----------+-------------+--------+-----------------------------+--------------+
| StudentID | FirstName | LastName | DateOfBirth | Gender | Email                       | Phone        |
+-----------+-----------+----------+-------------+--------+-----------------------------+--------------+
|         4 | Vamsi     | Bunny    | 1996-11-25  | Female | emily.brown@example.com     | 789-012-3456 |
|         9 | Vamsi     | Bunny    | 1997-11-25  | Male   | vamsi@example.com           | 9999999999   |
|         5 | Joo       | Joo      | 1999-07-03  | Male   | david.lee@example.com       | 321-654-0987 |
|        10 | Joo       | Joo      | 1998-04-30  | Female | joo@example.com             | 7777777777   |
|         1 | Anil      | Kumar    | 1995-05-15  | Male   | john.doe@example.com        | 123-456-7890 |
|         2 | Ashok     | Kumar    | 1998-09-20  | Female | jane.smith@example.com      | 987-654-3210 |
|         6 | Anil      | Kumar    | 1995-05-15  | Male   | anil@example.com            | 1234567890   |
|         7 | Ashok     | Kumar    | 1996-08-20  | Male   | ashok@example.com           | 9876543210   |
|         3 | Dimbu     | Mastan   | 1997-03-10  | Male   | michael.johnson@example.com | 456-789-0123 |
|         8 | Dimbu     | Mastan   | 1994-02-10  | Male   | dimbu@example.com           | 5555555555   |
+-----------+-----------+----------+-------------+--------+-----------------------------+--------------+
10 rows in set (0.01 sec)


CHAT-GPT Exercise: 

Scenario 1 : Library Books Given a table called books with columns book_id, title, and author_id, write a query to count the number of books written by each author, ordering the results by the author’s name without using a join clause.
Program:
SELECT author_id, COUNT(*) AS num_books
FROM books
GROUP BY author_id
ORDER BY author_id;



