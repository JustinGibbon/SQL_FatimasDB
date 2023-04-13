USE MASTER
--Creating Database-
CREATE DATABASE	FatimasDB
ON Primary
(
NAME = 'FatsDBfile',
FILENAME = 'C:\SQLDATA\ FatsdbFile1.mdf',
SIZE = 10mb,
MAXSIZE = 20,
FILEGROWTH = 10%
)

LOG ON
(
NAME = 'FatsdbLogFile',
FILENAME ='C:\SQLLOG\FatsbLogfile1.ldf',
SIZE = 10mb,
MAXSIZE = 200,
FILEGROWTH = 20%
);
ALTER DATABASE FatimasDB
ADD FILEGROUP FatimasDBfilegroup1;

ALTER DATABASE FatimasDB
ADD FILE
(
NAME = 'Fatsdbfile2',
FILENAME = 'C:\SQLDATA\FatimasDB.ndf',
SIZE = 20mb,
MAXSIZE = 10GB,
FILEGROWTH = 10%
)
TO FILEGROUP FatimasDBfilegroup1
