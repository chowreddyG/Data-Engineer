/* String function or test functions
UPPER 
    Converts text into uppercase
        Syntax: SELECT UPPER('HELLO')
                SELECT UPPER(< COLUMN_NAME >) FROM TABLE_NAME
*/

SELECT UPPER(NAME) FROM EMPLOYEE

/*          
LOWER
    Converts text into lower case
        Syntax: SELECT LOWER("HELLO")
                SELECT LOWER(< COLUMN_NAME >) FROM TABLE_NAME

*/
SELECT LOWER(NAME) FROM EMPLOYEE
/*
LEFT 
    Returns a specified number of characters from the left side.
        Syntax: SELECT LEFT(EXP,NUMBER)
                SELECT LEFT('HELLO',2) -- OUTPUT: HE

RIGHT
    Returns a specified number of characters from the right side.
        Syntax: SELECT RIGHT(EXP,NUMBER)
                SELECT RIGHT('HELLO',2) --OUTPUT: LO

*/

SELECT LEFT('CHOWREDDY',3)  -- CHO

SELECT RIGHT('CHOWREDDY',3) -- DDY
/*
SUBSTRING 
    Extract characters from specific position.
        Syntax: SELECT SUBSTRING('HELLO',2,2) -- OUTPUT: EL
        HERE: H E L L O
              1 2 3 4 5

              START AT 2 AND TAKE 2 CHARACTERS - EL

*/

SELECT SUBSTRING('CHOWREDDY',4,3)  WRE

/*
LEN()
    Returns number of characters in a string.
        Syntax: SELECT LEN('HELLO')  -- OUTPUT: 5
*/

SELECT LEN('CHOWREDDY')  -- OUTPUT: 9


/*
TRIM
    Removes the spaces from both the beginning and end of the string.
        Syntax: SELECT TRIM(' HELLO ')  -- OUTPUT: 'HELLO'

LTRIM
    Removes the spaces from left side of the string

RTRIM
    Removes the spaces from right side of the string

*/

/*

REPLACE 
    Replace one string/characters to another string/character
        Syntax: REPLACE(EXPR,OLD_CHARACTER,NEW_CHARACTER)
            SELECT REPLACE('HELLO','E','A')
*/

/*
REVERSE 
    Reverse the characters in a string
        Syntax: REVERSE(EXP)
            SELECT REVERSE('HELLO') -- OUTPUT: OLLEH
*/

/*
STUFF
    Deletes characters from a specific position and inserts another string.
        Syntax: STUFF(EXP,START,LENGTH,REPLACE_WITH)
                SELECT STUFF('HELLO',2,2,'XX') -- OUTPUT: HXXLO
                Here: H E L L O
                      1 2 3 4 5
                        EL as removed added in xx
                        H + XX + LO
*/

/*
CONCAT
    Joins one or more strings together
        Syntax: CONTACT('A'+' '+'B') -- OUTPUT: A B

    
        SELECT CONCAT ---SPACE(5) CONCAT(FIRST,MIDDLE,LAST)
CONCAT_WS 
ISNULL -- ISNULL(EXP,' ')

EXTRACT FIRST AND LAST NAMES

CHARINDEX()
*/

SELECT GETDATE()  -- Returns the corrent date and time of the sql server

SELECT SYSDATETIME() -- Returns the current date and time it is more accurance of the seconds

SELECT GETUTCDATE()  -- Returns the date and time but when working with application/data across the different zones

-- CAST()  -- Convert one datatype into another

SELECT CAST(GETDATE() AS DATE)

SELECT CAST(258168.2855 AS INT)

-- CONVERT It also same like as cast convert data type to another

SELECT CONVERT(DATE, GETDATE())

SELECT YEAR('2026-09-24')

SELECT MONTH('2026-09-24')

SELECT DAY('2026-09-24')

SELECT DATENAME(MONTH,'2026-09-24')

SELECT DATENAME(WEEKDAY,'2026-09-24')

SELECT DATENAME(YEAR,'2026-09-24')

SELECT DATEPART(YEAR,'2026-09-24')

SELECT DATEADD(DAY,2,'2026-09-24')


SELECT DATEADD(MONTH,2,'2026-09-24')

SELECT DATEADD(YEAR,2,'2026-09-24')

SELECT DATEADD(DAY,-1,'2026-09-24')

SELECT DATEADD(MONTH,-1,'2026-09-24')

SELECT DATEADD(YEAR,-1,'2026-09-24')

SELECT DATEDIFF(DAY,'2026-09-24','2025-08-24')

SELECT DATEDIFF(YEAR,'2026-09-24','2025-08-24')

SELECT DATEDIFF(MONTH,'2026-09-24','2025-08-24')


/*FORMAT
Format is used to format date,time and numeric values into a specific presentation
format. its mainly useful for reporting and display purpose.
*/

SELECT FORMAT(GETDATE(),'yy') -- OUTPUT: 2026

SELECT FORMAT(GETDATE(),'yyyy')
SELECT FORMAT(GETDATE(),'MMMM')

SELECT FORMAT(GETDATE(),'dddd')
