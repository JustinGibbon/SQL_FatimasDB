USE FatimasDB;
Go
Select EmployeeID,FirstName,LastName,HireDate,DATEDIFF(Year,HireDate,GETDATE()) 'Years Working'  
From Employees
ORDER BY DATEDIFF(day,HireDate,GETDATE()) Desc;
Go