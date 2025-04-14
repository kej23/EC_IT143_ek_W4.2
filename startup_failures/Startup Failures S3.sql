
-- Q1: Name the Sectors with the top 3 startup failures.
-- A1: Let us ask sql and find out....

SELECT TOP 3 Sector, COUNT(*) AS failure_count     --Retrieves only the top three sectors
FROM startup_failures
GROUP BY Sector                                    --Groups startups by sector.
ORDER BY failure_count DESC;                       -- Ensures results are sorted in descending order, showing sectors with the highest startup failures first        