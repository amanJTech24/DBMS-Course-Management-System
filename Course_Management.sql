#Create a College Course Management System using Course and Faculty tables.
#Create Course and Faculty tables with suitable attributes.
#Apply appropriate Primary Key and Foreign Key constraints.
#Apply suitable NOT NULL, UNIQUE, DEFAULT, and CHECK constraints.
#Insert at least 5 faculty records and 5 course records.
#Display courses having credits between 2 and 4.
#Display courses whose names start with a particular letter using LIKE.
#Display courses belonging to a selected set of departments using IN.
#Display unique department names using DISTINCT.
#Update the faculty assigned to a particular course.
#Delete a course based on a suitable condition.
#Add a new column to the Course table using ALTER.
#Display the final Course records.

CREATE DATABASE College_CM;
USE COLLEGE_CM;

#1.
CREATE TABLE Faculty (
    Faculty_ID INT PRIMARY KEY,
    Faculty_Name VARCHAR(50) NOT NULL ,
    Email VARCHAR(100) UNIQUE,
    Department VARCHAR(50) NOT NULL
);




#2.
CREATE TABLE Course (
    Course_ID INT PRIMARY KEY,
    Course_Name VARCHAR(100) NOT NULL,
    Credits INT DEFAULT 3 CHECK (Credits BETWEEN 1 AND 6),
    Department VARCHAR(50) NOT NULL,
    Faculty_ID INT,
    FOREIGN KEY (Faculty_ID)REFERENCES Faculty(Faculty_ID)
);

#3.
INSERT INTO Faculty VALUES
(101,'Dr. Sharma','sharma@gmail.com','CSE'),
(102,'Dr. Verma','verma@gmail.com','ECE'),
(103,'Dr. Singh','singh@gmail.com','CSE'),
(104,'Dr. Gupta','gupta@gmail.com','IT'),
(105,'Dr. Kumar','kumar@gmail.com','AI');


#4.
INSERT INTO Course VALUES
(201, 'Database Management System', 4, 'CSE', 101),
(202, 'Computer Networks', 3, 'CSE', 103),
(203, 'Digital Electronics', 4, 'ECE', 102),
(204, 'Web Development', 3, 'IT', 104),
(205, 'Artificial Intelligence', 5, 'AI', 105);


#5.
SELECT * FROM Course
WHERE Credits BETWEEN 2 AND 4;


#6. 
SELECT * FROM Course
WHERE Department IN ('CSE', 'IT');


#7
SELECT DISTINCT Department FROM Course;


#8
UPDATE Course
SET Faculty_ID = 105
WHERE Course_ID = 202;


#9
DELETE FROM Course
WHERE Credits = 5;


#10
ALTER TABLE Course ADD Duration INT DEFAULT 4;


#11
SELECT * FROM Course;

SET SQL_SAFE_UPDATES = 0;