use FatimasDB
go 
CREATE  PROCEDURE   sp_Product  
		@ProductID INT = NULL,
		@ProductName Varchar(50) = Null,
		@UnitPrice int = NULL,
		@UnitCost int = NULL,
		@Quantity int = NULL

AS  
BEGIN  
 SET NOCOUNT ON  
 INSERT INTO dbo.Product
      (                    
		ProductID,
		ProductName,
		UnitCost,
		UnitPrice,
		Quantity
   )     

 VALUES 
      ( 
		@ProductID,
		@ProductName,		
		@UnitCost,
		@UnitPrice,
		@Quantity

   )
 END 
 exec sp_Product
		@ProductID = '2',
		@ProductName = 'Stumbo Pops',
		@UnitCost = '2',
		@UnitPrice ='4' ,
		@Quantity = '150'
    go
