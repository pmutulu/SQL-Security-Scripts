SELECT CASE WHEN EXISTS
( SELECT *
    FROM sys.databases
    WHERE name = db_name()
    AND is_encrypted = 0)
THEN 1
ELSE 0
END AS [Violation]