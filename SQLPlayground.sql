-- SQL : Structured Query Language. 
-- Different Database management systems --> MySQL, PostgreSQL, Oracle SQL, IBM db2, MS SQL
-- Problem in the IT world, is that every second, terabytes of data are being stored all the time. 
-- SQL Sub languages -> Conception Categories of the functionality of SQL standard.
-- DDL: 
-- DML:
-- DQL:
-- DCL:
-- TCL:

-- Table is in the form of Rows and Columns.
-- Table is called "Entity"
-- Columns are called "fields or attributes"
-- Rows are called "Records or Tuples"alter
-- MySQL is a DBMS (DataBase Management System)

-- Use queries to get the data, or insert the data, or update data, delete data.
-- create, delete databases and tables.

-- DDL -> Data definition Language
-- its defines the overall data structures. -> tables and columns
-- schemas are nothing but a database structure.
-- two meanings -> database structure a schema is like a folder or package in java.
-- -> a conceptual term refers to the full structural design of the database.
-- Commands ;
-- create - used to create a new database or tables.
-- alter -> changes the existing database or table.
-- drop -> removes the database or table
-- truncate -> delete all of the data inside a table but not the structure of the table


-- DML -> Data Manipulation Language
-- its about handling the data inside a table
-- crud operations -> create, read, update, delete
-- Commands ;
-- insert -> it will insert the new data or recrods or rows in the table
-- update -> change the record from a table
-- delete -> removes the record from a table
-- Select -> Accesses or reads the data from a table

-- DQL -> Data Query Language
-- Select -> Accesses or read the data from a table;

-- MySQL DataTypes
-- Datatype -> constraint upon a column in a table, indicating that only that type of data can be held in that column.
-- ----------> VARCHAR(size) It is a set of characters(string), we can limit the number of characters with size.
-- BOOL / BOOLEAN -> stored as a byte value, 0 -> false, any other value is true;
-- INT / INTEGER -> A medium sized integer value -2147484648 2147413648
-- FLOAT(size, decimal) -> size -> defines the max number of digits
-- -> decimal -> defined the number that are after the decimal point
-- ex: 34.56 -> FLOAT(4, 2)
-- ex: 467.5612 -> FLOAT(7, 4)
-- -----------------------------------------------------------------------------------------------------------------------------


-- Creating a Database [GOLD STANDARD COMMAND -> create]
create database school;

-- Delete a Database -> DON'T DO this in work.
drop database school; 

create database school1;
create database school2;
create database school3;

-- Points to the database. Simply saying "This is where I am going to work!" [GOLD STANDARD COMMAND -> use]
use school1;

-- Create a table in the database
create table student(
id int(3),
firstname varchar(10),
lastname varchar(20),
phoneNumber int(10),
email varchar(30),
city varchar(10)
);

-- Show ALL of the tables in your database. [GOLD STANDARD COMMAND -> show]
show tables;

-- Drop or remove a Table. 'Drop' can remove anything, table, database, column, row, etc. [GOLD STANDARD COMMAND -> drop]
drop table student;

-- How to Change something, for example, the column phonenumber to mobilenumber. [GOLD STANDARD COMMAND -> alter]
alter table student rename column phonenumber to mobilenumber;

-- How to add a column [GOLD STANDARD COMMAND -> add]
alter table student add column zipcode int(5);

-- Adding data [GOLD STANDARD COMMAND -> insert]
insert into student(id, firstname, lastname, mobilenumber, email, city, zipcode)
values (1, 'Kamil', 'Khan', 20347394, 'kras@hotmail.com', 'Chantilly', 20151);

-- Select EVERYTHING from a table [GOLD STANDARD COMMAND -> *, [GOLD STANDARD COMMAND -> select]
select * from student;

-- Inserting without all the values for all the columns, creates null values
insert into student(id, firstname, lastname)
values (2, 'Jack', 'khan');

-- Deleting the data but not the table [GOLD STANDARD COMMAND -> truncate]
truncate table student;

-- Deleting a row

-- Inserting multiple rows at once
insert into student(id, firstname, lastname)
values (3, 'Mike', 'Nui'), 
(4, 'Lila', 'Kiana');


-- -----------------------------------------------------------------
-- Teacher table
create table teacher(
id int(3), 
firstname varchar(20), 
lastname varchar(20), 
course varchar(20), 
degree varchar(20));

alter table teacher add column zipcode int(5);

insert into teacher
values (1, 'Mike', 'Senator', 'MechEngineering', 'Mechanical Eng', 20151), 
(2, 'Laura', 'Mitchell', 'Biology', 'Science B.S.', 20151),
(3, 'Paul', 'Geio', 'Chemistry', 'Science B.S.', 20151),
(4, 'Michael', 'Baker', 'History', 'History B.S.', 20151),
(5, 'Meera', 'Mop', 'Electrical', 'Circuitry B.S.', 20151),
(6, 'Jolo', 'Boy', 'Billing', 'Economics B.S.', 20151);

show tables;
select * from teacher;

















