/*
  Rainbow School Database
  School Management System Database Design
  Project for Rainbow School
*/

-- Step 1: Set up the Database
CREATE DATABASE SchoolManagement;
USE SchoolManagement;

-- Step 2: Create the Student Table
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    ClassID INT
);

-- Step 3: Create the Subjects Table
CREATE TABLE Subjects (
    SubjectID INT PRIMARY KEY,
    SubjectName NVARCHAR(50)
);

-- Step 4: Create the Classes Table
CREATE TABLE Classes (
    ClassID INT PRIMARY KEY,
    ClassName NVARCHAR(50)
);

-- Step 5: Create Indexes
CREATE INDEX IX_Student_ClassID ON Student (ClassID);

-- Step 6: Insert Sample Data
-- Insert sample data into Classes table
INSERT INTO Classes (ClassID, ClassName) VALUES
(1, 'Class 9'),
(2, 'Class 10'),
(3, 'Class 11');

-- Insert sample data into Subjects table
INSERT INTO Subjects (SubjectID, SubjectName) VALUES
(1, 'Math'),
(2, 'Science'),
(3, 'English'),
(4, 'History');

-- Insert sample data into Student table
INSERT INTO Student (StudentID, FirstName, LastName, ClassID) VALUES
(1, 'Siva', 'Reddy', 1),
(2, 'Liki', 'Reddy', 2),
(3, 'Pawan', 'naidu', 1),
(4, 'Lahari', 'Bandi', 3),
(5, 'Ramya', 'Boyilla', 2);

-- Step 7: Query to Retrieve Information
-- Retrieve students along with their class and subjects
SELECT 
    s.StudentID,
    s.FirstName,
    s.LastName,
    c.ClassName,
    sub.SubjectName
FROM 
    Student s
JOIN 
    Classes c ON s.ClassID = c.ClassID
CROSS JOIN 
    Subjects sub;
