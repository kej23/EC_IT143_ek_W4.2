/*****************************************************************************************************************
NAME:    EC_IT143_W4.2_demand_forecasting_s7_ek.sq
PURPOSE: Turn the ad hoc SQL script into a stored procedure..

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     04/10/2025   ELVIS KIRUNDA       1. Built this script for EC IT143


RUNTIME: 
Xm Xs

NOTES: 
This script will help me understand step 7 better.
 
******************************************************************************************************************/

 --Q1: What is the total Sales Quantity for each Customer Segment during the Festival season?
-- A1: Question goes on the previous line, intoduction to the answer goes on this line...

CREATE PROCEDURE usp_Load_FestivalSalesBySegment
AS
BEGIN
    SET NOCOUNT ON;

    -- Step 1: Truncate the existing table
    TRUNCATE TABLE FestivalSalesBySegment;

    -- Step 2: Load fresh data from the view
    INSERT INTO FestivalSalesBySegment
    SELECT *
    FROM vw_FestivalSalesBySegment;
END;
GO
