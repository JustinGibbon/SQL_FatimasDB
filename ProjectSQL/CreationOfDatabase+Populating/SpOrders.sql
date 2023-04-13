use FatimasDB
go 
CREATE  PROCEDURE   sp_Orders    
   @OrderID						int     = NULL   ,     
   @OrderDate               Date = NULL   ,    
   @ShipDate					Date = NULL,
   @City					VARCHAR(60)  = NULL, 
   @Address						VARCHAR(60)  = NULL,
   @Phone						int  = NULL
 
AS  
BEGIN  
 SET NOCOUNT ON  
 INSERT INTO dbo.Orders 
      (                    
   OrderID,     
   OrderDate,    
   ShipDate,
   City, 
   Address,
   Phone
   )     

 VALUES 
      ( 
   @OrderID,     
   @OrderDate,    
   @ShipDate,
   @City, 
   @Address,
   @Phone  
   )
 END 
 exec sp_Orders
   @OrderID ='1',     
   @OrderDate ='2008-11-11',    
   @ShipDate ='2008-11-11',
   @City = 'pta', 
   @Address = 'dwarsweg',
   @Phone = '0725650444' 
    go