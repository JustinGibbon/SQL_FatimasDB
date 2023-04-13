use FatimasDB
go 
CREATE  PROCEDURE   sp_Employee    
		@EmployeeID INT = NULL,
		@FirstName VARCHAR(50) = NULL,
		@Lastname VARCHAR(50) = NULL,
		@JobTitle VARCHAR(50) = NULL,
		@BirthDate DATE = NULL,
		@HireDate DATE = NULL,
		@City VARCHAR(50) = NULL,
		@Address VARCHAR(50) = NULL

AS  
BEGIN  
 SET NOCOUNT ON  
 INSERT INTO dbo.Employees
      (                    
		EmployeeID,
		FirstName,
		LastName ,
		JobTitle ,
		BirthDate ,
		HireDate ,
		City ,
		Address 
		)

 VALUES 
      ( 
		@EmployeeID,
		@FirstName,
		@LastName ,
		@JobTitle ,
		@BirthDate ,
		@HireDate ,
		@City ,
		@Address  
   )
 END 
 exec sp_Employee
		@EmployeeID = '1',
		@FirstName = 're',
		@LastName = 'r',
		@JobTitle = 'mr',
		@BirthDate ='2008-11-11' ,
		@HireDate ='2008-11-11' ,
		@City = 'pta',
		@Address = 'afsds'
    go