CREATE PROCEDURE dbo.usp_hello_world_load
AS

/*****************************************************************************************************************
NAME:    dbo.v_hello_world_load
PURPOSE: Hello World - User Stored Procedure

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     04/10/2025   JJAUSSI       1. Built this script for EC IT440


RUNTIME: 
Xm Xs

NOTES: 
The script exists to help me learn step 7 of 8 in the Answer focused approach for T-SQL Data Manipulation.
 
******************************************************************************************************************/
-- Q: What is the current date and time?
-- A: Let's ask SQL Server and find out...

BEGIN
  -- 1) Reload data
  TRUNCATE TABLE dbo.t_hello_world;

  INSERT INTO dbo.t_hello_world;
       SELECT v.my message,
	          v.current_date_time
          FROM dbo.v_hello_world_load AS v;
   -- 2) Review results
  SELECT t.*
     FROM dbo.t_hello_world AS t;
  END;
GO