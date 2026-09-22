/*
Sort : In SQL Server order by is used to sort query results
    ASC sorts in ascending order  -- Smallest to largest
    DESC sorts in descending order -- largest to smallest

    Syntax: SELECT * FROM EMPLOYEE ORDER BY SALARY 
    NOTE: Above query by default it returns the ascending order
        SELECT * FROM EMPLOYEE ORDER BY SALARY DESC
*/

SELECT * FROM EMPLOYEE
ORDER BY SALARY ASC

SELECT * FROM EMPLOYEE
ORDER BY SALARY DESC


/*
Filter --- WHERE
Where is used to filter the records based on one or more condition
It is commonly used with operators such as 
    = (equal)
    > (Greater than)
    < (Less than)
    <> (Not Equal)
    IN,BETWEEN,AND LIKE
*/

SELECT SALARY FROM EMPLOYEE
WHERE SALARY = 6000;

SELECT SALARY FROM EMPLOYEE
WHERE SALARY > 2000;

SELECT SALARY FROM EMPLOYEE
WHERE SALARY BETWEEN 5000 AND 7000

/*
Group by is used to group rows with same values and perform the aggregate
calculation such as COUNT(),MIN(),MAX(),AVG() for each group

   Syntax: SELECT DEPT,SUM(SALARY) AS TOTAL_SALARY FROM EMPLOYEE GROUP BY DEPT 
*/

SELECT DEPT,SUM(SALARY) AS TOTAL_SALARY,
    AVG(SALARY) AS AVG_SALARY,
    MAX(SALARY) AS MAX_SALARY,
    MIN(SALARY) AS MIN_SALARY
FROM EMPLOYEE
GROUP BY DEPT;

/*
Like operator is used to perform pattern matching on string values
% represents zero or more chars 
_ represents exactly one char

    Syntax: SELECT * FROM EMPLOYEE WHERE ENAME LIKE 'A%'

    'A%' Starting 
    '%A' Ending
    '_' each _ represents exactly one char
    '%A%' Contains
*/