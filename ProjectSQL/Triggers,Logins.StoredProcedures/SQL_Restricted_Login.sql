USE FatimasDB;

CREATE LOGIN [Daniel_Deng] WITH PASSWORD = 'password123'

CREATE USER [Daniel_Deng] FOR LOGIN [Daniel_Deng]

GRANT SELECT, INSERT, UPDATE ON Product TO [Daniel_Deng]