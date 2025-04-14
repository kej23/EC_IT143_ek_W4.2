GO
CREATE VIEW dbo.v_top3_startup_failures
AS
/*****************************************************************************************************************
NAME:    EC_IT143_W4.2_Startup Failures_s4_ek.sq
PURPOSE: Turn the ad hoc SQL query into a view.

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     04/10/2025   ELVIS KIRUNDA       1. Built this script for EC IT143


RUNTIME: 
Xm Xs

NOTES: 
This script will help me understand step 4 better for my T-SQL Data Manipulation.
 
******************************************************************************************************************/

-- Q1: Name the Sectors with the top 3 startup failures.
-- A1: Let us ask sql and find out....
            
SELECT TOP 3 Sector, COUNT(*) AS failure_count     --This picks from the sector column, counts and returns the top 3 as ''FailureCount.''
FROM startup_failures                       --This specifies the data source.
GROUP BY Sector                             --This groups all the rows that belong to the same Sector.
ORDER BY failure_count DESC;                  --This sorts the grouped results in descending order with the highest number of failures coming first.