USE master
BACKUP DATABASE [fhlb] TO  DISK = N'\\pfs02\SQLtempBackup\PROD\fhlb.bak' WITH NOFORMAT, NOINIT,  NAME = N'fhlb-Full Database Backup', SKIP, NOREWIND, NOUNLOAD, COMPRESSION,  STATS = 10
GO
