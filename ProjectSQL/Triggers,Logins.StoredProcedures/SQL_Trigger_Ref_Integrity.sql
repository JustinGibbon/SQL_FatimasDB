USE FatimasDB;
GO
Create TRIGGER t_integrity
ON Product After Update
AS
IF UPDATE(UnitCost)
Begin
	IF (Select Count(*)
	From Product,inserted
	Where Product.UnitCost = inserted.UnitCost)>0
	Begin
	ROLLBACK TRANSACTION
	PRINT 'No Deleted Row'
END
ELSE PRINT 'Row Deleted'
END
GO