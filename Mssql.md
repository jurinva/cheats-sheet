#Restore DB

RESTORE DATABASE fulldbnamenew
FROM DISK = 'E:\fulldbname-20120814_015000-FULL.BAK'
WITH MOVE 'fulldbname' TO 'D:\fulldbnamenew\fulldbnamenew.mdf',
MOVE 'fulldbname_log' TO 'D:\fulldbnamenew\fulldbnamenew_log.ldf',
REPLACE
