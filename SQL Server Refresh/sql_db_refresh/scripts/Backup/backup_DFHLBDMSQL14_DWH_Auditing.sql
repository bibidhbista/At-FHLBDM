USE master
BACKUP DATABASE [DWH_Auditing] TO  DISK = N'\\pfs02\SQLtempBackup\DEV\DWH_Auditing.bak' WITH NOFORMAT, NOINIT,  NAME = N'DWH_Auditing-Full Database Backup', SKIP, NOREWIND, NOUNLOAD, COMPRESSION,  STATS = 10
GO
