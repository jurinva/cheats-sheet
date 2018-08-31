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