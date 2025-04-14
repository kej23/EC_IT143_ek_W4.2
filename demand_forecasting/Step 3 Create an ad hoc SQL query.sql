 --Q1: What is the total Sales Quantity for each Customer Segment during the Festival season?
 --A1: Question goes on the previous line, intoduction to the answer goes on this line...
 
 SELECT 
    [Customer_Segments], 
    SUM([Sales_Quantity]) AS Total_Sales
FROM 
    demand_forecasting
WHERE 
    [Seasonality_Factors] = 'Festival'
GROUP BY 
    [Customer_Segments];
