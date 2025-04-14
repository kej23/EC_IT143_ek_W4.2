CREATE VIEW vw_FestivalSalesBySegment AS

/*****************************************************************************************************************
NAME:    EC_IT143_W4.2_demand_forecasting_s4_ek.sq
PURPOSE: Turn the ad hoc SQL query into a view.

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     04/10/2025   ELVIS KIRUNDA       1. Built this script for EC IT143


RUNTIME: 
Xm Xs

NOTES: 
This script will help me understand step 4 better.
 
******************************************************************************************************************/

 --Q1: What is the total Sales Quantity for each Customer Segment during the Festival season?
-- A1: Question goes on the previous line, intoduction to the answer goes on this line...

SELECT 
    [Customer_Segments], 
    SUM([Sales_Quantity]) AS Total_Sales
FROM 
    demand_forecasting
WHERE 
    [Seasonality_Factors] = 'Festival'
GROUP BY 
    [Customer_Segments];
