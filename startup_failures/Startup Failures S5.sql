
-- Q1: Name the Sectors with the top 3 startup failures.
-- A1: Let us ask sql and find out....
SELECT TOP 3 Sector, COUNT(*) AS FailureCount
INTO Top3FailedSectorsTable                  --This tells SQL Server to create a new table named Top3FailedSectorsTable and insert the result of the query into it
FROM startup_failures
GROUP BY Sector
ORDER BY FailureCount DESC;

