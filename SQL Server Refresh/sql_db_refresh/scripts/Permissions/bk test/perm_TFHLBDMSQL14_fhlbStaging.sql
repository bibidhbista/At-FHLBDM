
--stmt                                                                                                                     
------                                                                                                                     
-- [-- DB CONTEXT --] --                                                                                                   
USE [fhlbStaging]                                                                                                          
                                                                                                                           
-- [-- DB USERS --] --                                                                                                     
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'dbo') BEGIN CREATE USER  [dbo] FOR LOGIN [FHLBDM\SFurness] WITH DEFAULT_SCHEMA = [dbo] END; 
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'FHLBDM\ETLUser') BEGIN CREATE USER  [FHLBDM\ETLUser] FOR LOGIN [FHLBDM\ETLUser] WITH DEFAULT_SCHEMA = [dbo] END; 
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'FHLBDM\G-FHLB-Developers') BEGIN CREATE USER  [FHLBDM\G-FHLB-Developers] FOR LOGIN [FHLBDM\G-FHLB-Developers] WITH DEFAULT_SCHEMA = [dbo] END; 
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'FHLBDM\G-SQL-HUB Developers') BEGIN CREATE USER  [FHLBDM\G-SQL-HUB Developers] FOR LOGIN [FHLBDM\G-SQL-HUB Developers] WITH DEFAULT_SCHEMA = [dbo] END; 
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'FHLBDM\G-SQL-HUB Testers') BEGIN CREATE USER  [FHLBDM\G-SQL-HUB Testers] FOR LOGIN [FHLBDM\G-SQL-HUB Testers] WITH DEFAULT_SCHEMA = [dbo] END; 
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'FHLBDM\IT-QA-Admin-Testers') BEGIN CREATE USER  [FHLBDM\IT-QA-Admin-Testers] FOR LOGIN [FHLBDM\IT-QA-Admin-Testers] WITH DEFAULT_SCHEMA = [dbo] END; 
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'FHLBDM\mlevere') BEGIN CREATE USER  [FHLBDM\mlevere] FOR LOGIN [FHLBDM\mlevere] WITH DEFAULT_SCHEMA = [dbo] END;
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'FHLBDM\smartinez') BEGIN CREATE USER  [FHLBDM\smartinez] FOR LOGIN [FHLBDM\smartinez] WITH DEFAULT_SCHEMA = [dbo] END;
-- [-- ORPHANED USERS --] --                                                                                               
-- [-- DB ROLES --] --                                                                                                     
EXEC sp_addrolemember @rolename = 'db_datareader', @membername = 'FHLBDM\G-FHLB-Developers'                                
EXEC sp_addrolemember @rolename = 'db_datareader', @membername = 'FHLBDM\G-SQL-HUB Developers'                             
EXEC sp_addrolemember @rolename = 'db_owner', @membername = 'FHLBDM\etluser'                                               
EXEC sp_addrolemember @rolename = 'db_owner', @membername = 'FHLBDM\IT-QA-Admin-Testers'                                   
EXEC sp_addrolemember @rolename = 'db_owner', @membername = 'FHLBDM\mlevere'                                               
EXEC sp_addrolemember @rolename = 'db_owner', @membername = 'FHLBDM\smartinez'                                             
                                                                                                                           
-- [-- OBJECT LEVEL PERMISSIONS --] --                                                                                     
-- [-- TYPE LEVEL PERMISSIONS --] --                                                                                       
                                                                                                                           
-- [--DB LEVEL PERMISSIONS --] --                                                                                          
GRANT CONNECT TO [FHLBDM\etluser]                                                                                          
GRANT CONNECT TO [FHLBDM\G-FHLB-Developers]                                                                                
GRANT CONNECT TO [FHLBDM\G-SQL-HUB Developers]                                                                             
GRANT CONNECT TO [FHLBDM\G-SQL-HUB Testers]                                                                                
GRANT CONNECT TO [FHLBDM\IT-QA-Admin-Testers]                                                                              
GRANT CONNECT TO [FHLBDM\mlevere]                                                                                          
GRANT CONNECT TO [FHLBDM\smartinez]                                                                                        
GRANT SHOWPLAN TO [FHLBDM\G-FHLB-Developers]                                                                               
                                                                                                                           
-- [--DB LEVEL SCHEMA PERMISSIONS --] --                                                                                   


