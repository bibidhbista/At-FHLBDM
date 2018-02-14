-- [-- DB CONTEXT --] --
USE [JournalVoucherApplication]
 
-- [-- DB USERS --] --
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'dbo') BEGIN CREATE USER  [dbo] FOR LOGIN [sa] WITH DEFAULT_SCHEMA = [dbo] END; 
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'FHLBDM\G-SQL MLP') BEGIN CREATE USER  [FHLBDM\G-SQL MLP] FOR LOGIN [FHLBDM\G-SQL MLP] WITH DEFAULT_SCHEMA = [dbo] END; 
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'FHLBDM\G-SQL-HUB Developers') BEGIN CREATE USER  [FHLBDM\G-SQL-HUB Developers] FOR LOGIN [FHLBDM\G-SQL-HUB Developers] WITH DEFAULT_SCHEMA = 
[dbo] END; 
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'FHLBDM\psvc_journalvoucher') BEGIN CREATE USER  [FHLBDM\psvc_journalvoucher] FOR LOGIN [FHLBDM\psvc_journalvoucher] WITH DEFAULT_SCHEMA = 
[dbo] END; 
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'FHLBDM\psvc_JVAHUB') BEGIN CREATE USER  [FHLBDM\psvc_JVAHUB] FOR LOGIN [FHLBDM\psvc_JVAHUB] WITH DEFAULT_SCHEMA = [dbo] END; 
-- [-- ORPHANED USERS --] --
-- [-- DB ROLES --] --
EXEC sp_addrolemember @rolename = 'db_datareader', @membername = 'FHLBDM\G-SQL MLP'
EXEC sp_addrolemember @rolename = 'db_datareader', @membername = 'FHLBDM\G-SQL-HUB Developers'
EXEC sp_addrolemember @rolename = 'db_datareader', @membername = 'FHLBDM\psvc_journalvoucher'
EXEC sp_addrolemember @rolename = 'db_datareader', @membername = 'FHLBDM\psvc_JVAHUB'
EXEC sp_addrolemember @rolename = 'db_datawriter', @membername = 'FHLBDM\psvc_journalvoucher'
 
-- [-- OBJECT LEVEL PERMISSIONS --] --
-- [-- TYPE LEVEL PERMISSIONS --] --
 
-- [--DB LEVEL PERMISSIONS --] --
GRANT CONNECT TO [FHLBDM\G-SQL MLP]
GRANT CONNECT TO [FHLBDM\G-SQL-HUB Developers]
GRANT CONNECT TO [FHLBDM\psvc_journalvoucher]
GRANT CONNECT TO [FHLBDM\psvc_JVAHUB]
 
-- [--DB LEVEL SCHEMA PERMISSIONS --] --
