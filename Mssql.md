# Errors

## SQL Server Error: The proposed new database owner is already a user or aliased in the database
```sql
USE MyDB
GO
--  Dropping test_user from the user database
SP_DROPUSER 'test_user'
GO
-- Changing the OWNER of the database
SP_CHANGEDBOWNER 'test_user'
```

# Shrink DB

```sql
DECLARE @sql varchar(1000)
SET @sql = 'ALTER DATABASE '+QUOTENAME(DB_NAME())+'
SET RECOVERY SIMPLE DBCC SHRINKDATABASE('''+DB_NAME()+''')
ALTER DATABASE '+QUOTENAME(DB_NAME())+' 
SET RECOVERY FULL WITH NO_WAIT'
EXEC (@sql)
```


# Restore DB

## Restore dbname to dbnamenew
```sql
RESTORE DATABASE dbnamenew
FROM DISK = 'E:\dbname-20120814_015000-FULL.BAK'
WITH MOVE 'dbname' TO 'D:\dbnamenew\dbnamenew.mdf',
MOVE 'dbname_log' TO 'D:\dbnamenew\dbnamenew_log.ldf',
REPLACE
```

## List files in backup
```sql
RESTORE FILELISTONLY
FROM DISK = 'E:\BPRO_ARC\dbname-20110825_021700-FULL.BAK'
```

# Drop all tables in DB
```sql
DECLARE @Sql NVARCHAR(500) DECLARE @Cursor CURSOR

SET @Cursor = CURSOR FAST_FORWARD FOR
SELECT DISTINCT sql = 'ALTER TABLE [' + tc2.TABLE_SCHEMA + '].[' +  tc2.TABLE_NAME + '] DROP [' + rc1.CONSTRAINT_NAME + '];'
FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS rc1
LEFT JOIN INFORMATION_SCHEMA.TABLE_CONSTRAINTS tc2 ON tc2.CONSTRAINT_NAME =rc1.CONSTRAINT_NAME

OPEN @Cursor FETCH NEXT FROM @Cursor INTO @Sql

WHILE (@@FETCH_STATUS = 0)
BEGIN
Exec sp_executesql @Sql
FETCH NEXT FROM @Cursor INTO @Sql
END

CLOSE @Cursor DEALLOCATE @Cursor
GO

EXEC sp_MSforeachtable 'DROP TABLE ?'
GO
```