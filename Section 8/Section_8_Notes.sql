/* Section 8: Creating Databases and Tables */


/* Data Types */
/* Used for specify data to be stored in table when we are making a table.*/
/* Example of Data Types
   Boolean : True or False
   Character : char, varchar, and text
   Numeric : integer and floating-point number
   Temporal : date, time, timestamp, and interval */


/* Primary Keys and Foreign Keys */
/* A primary key is a column or a group of column used to identify a row uniquely in a table.
   A foreign key is a field or group of fields in a table that uniquely identifies a row in another table. */


/* Constraints */
/* Constraints are the rules enforced on data columns on table and used to prevent invalid data from being
   entered into the database. There is column constraints (affect just for specific column) and table constrains (affect to entire table). */

/* Column Constrains */
NOT NULL /* Ensures that a column can't have NULL value */
UNIQUE /* Ensures that all values in a column are different */
PRIMARY KEY /* Uniquely identifies each row/record in a databes table */
FOREIGN KEY /* Constrains data based on columns in other tables */
CHECK /* Ensures that all values in a column satisfy certain conditions */

/* Table Constrains */
CHECK /* To check condition when inserting or updating data */
REFERENCES /* To constrains the value stored in the column that must exist in a column in another table */


/* CREATE Table */
/* Making a Table */
CREATE TABLE account(
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(50) NOT NULL,
    created_on TIMESTAMP NOT NULL,
    last_login TIMESTAMP
);


/* INSERT */
/* Adding a data into the table */
INSERT INTO account(username,password,email,created_on)
VALUES
('Jose', 'password', 'jose@mail.com', CURRENT_TIMESTAMP);


/* UPDATE */
/* Updated the current value into the new value */
UPDATE account
SET last_login = CURRENT_TIMESTAMP;


/* DELETE */
/* Deleting value from row */
DELETE FROM account
WHERE username = 'Jose';


/* ALTER Table */
/* Adding, dropping, or renaming columns; Changing datatype; CHECK constrains; Rename table */
ALTER TABLE account
RENAME COLUMN username TO uname;


/* DROP Table */
/* Removing entire columns */
ALTER TABLE account
DROP COLUMN last_login;


/* CHECK Constraints */
/* Allows us to create more customized constrains that adhere to a certain condition */
CREATE TABLE employees(
    emp_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name  VARCHAR(50) NOT NULL,
    birthdate DATE CHECK (birthdate > '1900-01-01')
);
