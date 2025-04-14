/*****************************************************************************************************************
NAME:    EC_IT143_W4.2_Startup Failures_s7_ek.sq
PURPOSE: Turn the ad hoc SQL script into a stored procedure.

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     04/10/2025   ELVIS KIRUNDA       1. Built this script for EC IT143


RUNTIME: 
Xm Xs

NOTES: 
This script will help me understand step 7 better for my T-SQL Data Manipulation.
 
******************************************************************************************************************/

-- Q1: Name the Sectors with the top 3 startup failures.


CREATE PROCEDURE RefreshTop3FailedSectors        --Defines a new stored procedure named RefreshTop3FailedSectors.
AS
BEGIN
    SET NOCOUNT ON;                               --Suppresses the "X rows affected" messages for cleaner execution, especially in scripts or jobs   
    TRUNCATE TABLE Top3FailedSectorsTable;              --Step 1: Clear out existing data

   
    INSERT INTO Top3FailedSectorsTable (Sector, FailureCount)   -- Step 2: Load fresh data from the view
    SELECT Sector, failure_count
    FROM v_top3_startup_failures;
END;
GO
