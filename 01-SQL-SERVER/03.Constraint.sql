/* PRIMARY KEY
Primary key is a constraint used to uniquely identify each record in a table.
Its does not allow NULL values and 
A table can have only one primary key constraint

    Syntax: CREATE TABLE < TABLE_NAME >(
            ID INT PRIMARY KEY,
            NAME VARCHAR(20),
            DOB DATETIME,
            SALARY FLOAT
            );
*/

 CREATE TABLE EMPLOYEE(
            ID INT PRIMARY KEY,
            NAME VARCHAR(20),
            DOB DATETIME,
            SALARY FLOAT
            );

INSERT INTO EMPLOYEE(ID,NAME,DOB,SALARY)
VALUES(1,'REDDY','2023-10-15',12244)

INSERT INTO EMPLOYEE(ID,NAME,DOB,SALARY)
VALUES(1,'CHOWREDDY','2023-01-11',30000)  -- It will throw an error duplicate id

INSERT INTO EMPLOYEE(ID,NAME,DOB,SALARY)
VALUES(null,'CHOWREDDY','2023-01-11',30000) -- It will throw an error does not allow null values


/* NOT NULL CONSTRAINT
NOT NULL is a constraint that prevents a column from storing null values 
It is used when a value is mandatory for each record

    Syntax: CREATE TABLE EMPLOYEE(
            ID INT PRIMARY KEY,
            NAME VARCHAR(20) NOT NULL,
            DOB DATETIME NOT NULL,
            SALARY FLOAT NOT NULL
            );

*/

/* UNIQUE
Unique is constraint make sure that duplicate values are not allowed in a column
It does not allow for null duplicate
    
   Syntax: CREATE TABLE EMPLOYEE(
            ID INT PRIMARY KEY,
            NAME VARCHAR(20) NOT NULL,
            DOB DATETIME NOT NULL,
            SALARY FLOAT NOT NULL,
            EMAIL VAR(50) UNIQUE
            );

*/

CREATE TABLE EMPLOYEE(
            ID INT PRIMARY KEY,
            NAME VARCHAR(20) NOT NULL,
            DOB DATETIME NOT NULL,
            SALARY FLOAT NOT NULL,
            EMAIL VAR(50) UNIQUE
            );


/* CHECK
A check constraint is used to make sure that value entered into a column satisfies a specific
condition.
*/


/*Default
    Default constraint to automatically provides a predefined value when no value is specified
    for a column during insert

*/

/* Auto increment
    Auto Increment we use to identity property for auto increment it automatically to generates 
    a numeric value for each new row IDENTITY(1,1) 
    The values start form one and increments by one

*/


/* update
    Update is a DML command is used to modify the existing records in a table
    we normally use the where clause to update specific records

*/

/*
 =========Interview Question========

 
DROP

    DROP permanently removes the entire table from the database.
    It removes both the table structure (schema) and the data.
    After using DROP, the table no longer exists.

DELETE

    DELETE removes records/rows from a table.
    The table structure and columns remain in the database.
    DELETE supports the WHERE clause, so we can delete specific records.
    Without a WHERE clause, DELETE removes all rows from the table.
    DELETE generally removes rows individually and can be slower than TRUNCATE for removing all records.
    After DELETE, the identity/auto-increment value is generally not reset automatically. A newly inserted row continues from the previous identity value.

TRUNCATE

    TRUNCATE removes all records from a table but keeps the table structure/schema.
    TRUNCATE does not support the WHERE clause.
    TRUNCATE is generally faster than DELETE when removing all records.
    In databases that reset identity values on TRUNCATE, inserting a new row starts the identity value again from its initial value.

*/