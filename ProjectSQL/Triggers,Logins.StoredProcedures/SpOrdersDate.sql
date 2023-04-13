uSE FatimasDB
go
CREATE PROCEDURE SP_Orders_Date
          @startDate SMALLDATETIME,
          @endDate   SMALLDATETIME
AS
    BEGIN
              IF @startDate>@endDate
                      BEGIN
                              SET @endDate=GETDATE();
                     END

              SELECT  OrderID, OrderDate, ShipDate, City
              FROM Orders
               WHERE OrderDate BETWEEN @startDate AND @endDate
END

exec SP_Orders_Date
	@startDate = '2009-10-11',
	@endDate = '2010-8-12'