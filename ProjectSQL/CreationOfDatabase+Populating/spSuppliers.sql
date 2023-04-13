use FatimasDB
go 
CREATE  PROCEDURE   sp_Suppliers   
		@SupplierID INT = NULL,
		@ProductID INT = NULL,
		@ContactTitle VARCHAR(5) = NULL,
		@ContactName VARCHAR(50) = NULL,
		@Phone int = NULL,
		@City VARCHAR(50) = NULL,
		@Address VARCHAR(50) = NULL

AS  
BEGIN  
 SET NOCOUNT ON  
 INSERT INTO dbo.Suppliers
      (                    
		SupplierID,
		ProductID,
		ContactTitle,
		ContactName,
		Phone,
		City,
		Address
   )     

 VALUES 
      ( 
		@SupplierID,
		@ProductID,
		@ContactTitle,
		@ContactName,
		@Phone,
		@City,
		@Address

   )
 END 
 exec sp_Suppliers
		@SupplierID  = '1',
		@ProductID  = '1',
		@ContactTitle  = 'Mr',
		@ContactName = 'Chody',
		@Phone = '0456820559',
		@City  = 'JHB',
		@Address  = 'Brynston'

    go
