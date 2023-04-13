USE master;
GO
Create LOGIN login_test_1 With Password = 'test',
Check_EXPIRATION = ON;
Go
GRANT VIEW SERVER STATE TO login_test_1;
Go
CREATE Trigger login_trigger_1
ON ALL SERVER WITH EXECUTE AS 
'login_test_1'
For LOGON AS
BEGIN
IF ORIGINAL_LOGIN()='login_test_1' AND
(Select Count(*) From sys.dm_exec_sessions
where is_user_process = 1 AND
original_login_name = 'login_test_1') > 1
ROLLBACK;
END;