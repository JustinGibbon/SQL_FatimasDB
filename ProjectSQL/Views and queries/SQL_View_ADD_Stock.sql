USE FatimasDB;
Go
	CREATE VIEW v_addStock_
	AS Select * 
	From Product
	WHERE Quantity <= 20
Go 
UPDATE Product 
Set Quantity =	Quantity + 20
Where Quantity <= 20;