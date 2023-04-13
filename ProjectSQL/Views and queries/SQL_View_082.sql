USE FatimasDB;
GO
   CREATE VIEW v_082_num
    AS SELECT *
    FROM Customer
    WHERE Phone LIKE '82%';
GO