University Management System

Overview

This project sets up a relational database schema for managing various aspects of a university system. The SQL script creates tables for students, modules, degrees, and their relationships. It then populates these tables with sample data to demonstrate their correct creation and functionality.

Features

STUDENT Table: Stores information about students, including personal details and degree enrollment.
MODULE Table: Stores information about academic modules.
DEGREE Table: Stores information about degree programs.
BRIDGE Table: Manages the relationships between students and the modules they have taken, including their final marks.

Database Schema

STUDENT

S_ID VARCHAR(10) NOT NULL
S_NAME VARCHAR(50) NOT NULL
S_SURNAME VARCHAR(50) NOT NULL
S_DOB DATE NOT NULL
S_GENDER VARCHAR(1) NOT NULL
D_CODE VARCHAR(8) NOT NULL
Primary Key: (S_ID)

MODULE

M_CODE VARCHAR(7) NOT NULL
M_NAME VARCHAR(50) NOT NULL
M_CREDIT INT NOT NULL
M_DURATION INT
Primary Key: (M_CODE)
DEGREE

D_CODE VARCHAR(7) NOT NULL
D_NAME VARCHAR(60) NOT NULL
D_MIN_APS INT NOT NULL
Primary Key: (D_CODE)

BRIDGE

S_ID CHAR(9) NOT NULL
M_CODE VARCHAR(9) NOT NULL
FINAL_MARK INT NOT NULL
Primary Key: (S_ID, M_CODE)
Foreign Key: (M_CODE) REFERENCES MODULE(M_CODE)
Foreign Key: (S_ID) REFERENCES STUDENT(S_ID)

Sample Data

The script includes sample data to illustrate the use of the database schema:

Modules

APM1A10: Introduction to Statics
CSC1A10: Introduction to Algorithm Development

Students

Tami Davis (201465128)
Grace Peterson (201547623)

Degrees

BSIT01: Information Technology
BSIT02: Computer Science and Informatics

Bridge (Student-Module Relationship)

Tami Davis (201465128) - IFM1A10: 60
Grace Peterson (201547623) - IFM1A10: 68

Usage

Execute the SQL script to create the database schema and populate it with sample data.
Verify the creation of tables and insertion of sample data by querying the database.
Use the provided sample queries to explore the relationships and data within the system.

Conclusion

This SQL script provides a structured approach to managing a university's academic data, ensuring data integrity and establishing clear relationships between students, modules, and degree programs. Use this as a foundation to build more complex database systems for educational institutions or similar projects.
