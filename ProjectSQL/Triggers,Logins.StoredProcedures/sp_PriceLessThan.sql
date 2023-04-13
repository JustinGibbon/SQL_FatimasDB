Use FatimasDB
Go

CREATE PROCEDURE sp_PriceLessThan
          @maxPrice INT
AS
       BEGIN
                    IF @maxPrice <0 
                          BEGIN 
                               SET @maxPrice = 0
                          END
                    SELECT *
                    FROM Product
                    WHERE @maxPrice < UnitPrice 
END
exec sp_PriceLessThan
		@maxPrice ='15'