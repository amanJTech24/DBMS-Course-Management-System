# College Course Management System

## 📌 About

This project demonstrates a basic College Course Management System using MySQL.

The database contains two main tables:

- Faculty
- Course

The project demonstrates database creation, table creation, constraints, data insertion, retrieval, updating, deletion, and alteration of tables.

## 🛠️ Technologies Used

- MySQL
- MySQL Workbench
- SQL

## 📚 Concepts Covered

- CREATE DATABASE
- CREATE TABLE
- PRIMARY KEY
- FOREIGN KEY
- NOT NULL
- UNIQUE
- DEFAULT
- CHECK
- INSERT
- SELECT
- BETWEEN
- LIKE
- IN
- DISTINCT
- UPDATE
- DELETE
- ALTER TABLE

## 🗂️ Database Structure

### Faculty Table

| Column | Description |
|---|---|
| Faculty_ID | Primary key |
| Faculty_Name | Name of faculty |
| Email | Unique faculty email |
| Department | Faculty department |

### Course Table

| Column | Description |
|---|---|
| Course_ID | Primary key |
| Course_Name | Name of course |
| Credits | Course credits |
| Department | Course department |
| Faculty_ID | Foreign key referencing Faculty |
| Duration | Course duration |

## 🔑 Constraints Used

### Primary Key
Uniquely identifies each faculty and course.

### Foreign Key
`Course.Faculty_ID` references `Faculty.Faculty_ID`.

### NOT NULL
Used for important fields such as course name and department.

### UNIQUE
Used for faculty email addresses.

### DEFAULT
Default values are provided for credits and duration.

### CHECK
Credits are restricted between 1 and 6.

## ▶️ How to Run

1. Open MySQL Workbench.
2. Open `College_Course_Management.sql`.
3. Execute the complete script.
4. The `College_CM` database will be created.
5. The Faculty and Course tables will be created.
6. Records will be inserted and SQL operations will be performed.

## 👨‍💻 Project Type

DBMS Practical / Mini Project