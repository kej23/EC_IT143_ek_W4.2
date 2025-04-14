-- Q1: Name the Sectors with the top 3 startup failures.
-- A1: Let us ask sql and find out....


TRUNCATE TABLE Top3FailedSectorsTable;              --Truncate the table to remove existing data
INSERT INTO Top3FailedSectorsTable (Sector, FailureCount)   -- Step 2: Insert fresh data from the view
SELECT Sector, failure_count                     --Inserts rows from the view (Top3FailedSectors) into the table with the same name.
FROM dbo.v_top3_startup_failures;

