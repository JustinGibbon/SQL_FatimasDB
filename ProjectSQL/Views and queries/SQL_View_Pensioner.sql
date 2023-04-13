Go 
CREATE VIEW v_Discount
AS 
SELECT Orders.CustomerID, Customer.FirstName, Customer.Lastname
From Orders
Join Customer 
ON Orders.CustomerID = Customer.CustomerID
Where Orders.DiscountID = 1;
GO
Print 'Pensioner Discount'