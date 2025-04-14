DROP VIEW IF EXISTS dbo.v_hello_world_load;
GO
CREATE VIEW dbo.v_hello_world_load
AS

/*****************************************************************************************************************
NAME:    dbo.v_hello_world_load
PURPOSE: Create the Hello World - Load view

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     04/10/2025   JJAUSSI       1. Built this script for EC IT440


RUNTIME: 
Xm Xs

NOTES: 
The script exists to help me learn step 4 of 8 in the Answer focused approach for T-SQL Data Manipulation.
 
******************************************************************************************************************/
-- Q: What is the current date and time?
-- A: Let's ask SQL Server and find out...

SELECT 'Hello World' AS Message, 
       GETDATE() AS CurrentDateTime;
