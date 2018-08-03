#Restore DB

##Restore dbname to dbnamenew
```RESTORE DATABASE dbnamenew
FROM DISK = 'E:\dbname-20120814_015000-FULL.BAK'
WITH MOVE 'dbname' TO 'D:\dbnamenew\dbnamenew.mdf',
MOVE 'dbname_log' TO 'D:\dbnamenew\dbnamenew_log.ldf',
REPLACE```

##List files in backup
```RESTORE FILELISTONLY
FROM DISK = 'E:\BPRO_ARC\zaogfz708-20110825_021700-FULL.BAK'```