use FatimasDB
go 
CREATE  PROCEDURE   sp_Customers    
		@CustomerID INT = NULL, 
		@CustomerTitle VARCHAR(60) = NULL,
		@FirstName VARCHAR(60) = NULL,
		@Lastname VARCHAR(60) = NULL,
		@Phone Int = NULL,
		@Address VARCHAR(60) = NULL ,
		@City VARCHAR(60) = NULL

AS  
BEGIN  
 SET NOCOUNT ON  
 INSERT INTO dbo.Customer
      (                    
		CustomerID,
		CustomerTitle ,
		FirstName, 
		Lastname, 
		Phone,
		Address,
		City
   )     

 VALUES 
      ( 
		@CustomerID, 
		@CustomerTitle,
		@FirstName,
		@Lastname,
		@Phone,
		@Address,
		@City

   )
 END 
 exec sp_Customers
		@CustomerID = '1', 
		@CustomerTitle  = 'Mr',
		@FirstName  = 'Long',
		@Lastname = 'Wong',
		@Phone = '0725650448',
		@Address = 'Constansia' ,
		@City ='PTA'

    go
