USE FatimasDB;
Go
Select ProductName,UnitCost,UnitPrice,(UnitPrice*100/UnitCost*100)/100-100 AS PercentageProfit 
From Product
Order by ProductName ASC;
Go