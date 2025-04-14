 --Q1: What is the total Sales Quantity for each Customer Segment during the Festival season?
-- A1: Question goes on the previous line, intoduction to the answer goes on this line...

TRUNCATE TABLE FestivalSalesBySegment;          -- Step 1: Truncate the existing table to remove old data
INSERT INTO FestivalSalesBySegment              -- Step 2: Insert fresh data from the corresponding view   
SELECT *
FROM vw_FestivalSalesBySegment;
