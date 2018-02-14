
--stmt                                                                                                                     
------                                                                                                                     
-- [-- DB CONTEXT --] --                                                                                                   
USE [qtr]                                                                                                                  
                                                                                                                           
-- [-- DB USERS --] --                                                                                                     
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'dbo') BEGIN CREATE USER  [dbo] FOR LOGIN [sa] WITH DEFAULT_SCHEMA = [dbo] END; 
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'fhlbdm\devltst') BEGIN CREATE USER  [fhlbdm\devltst] FOR LOGIN [FHLBDM\DEVLTST] WITH DEFAULT_SCHEMA = [fhlbdm\devltst] END; 
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'FHLBDM\G-FHLB-Developers') BEGIN CREATE USER  [FHLBDM\G-FHLB-Developers] FOR LOGIN [FHLBDM\G-FHLB-Developers] WITH DEFAULT_SCHEMA = [dbo] END; 
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'FHLBDM\Global- Accounting') BEGIN CREATE USER  [FHLBDM\Global- Accounting] FOR LOGIN [FHLBDM\Global- Accounting] WITH DEFAULT_SCHEMA = [dbo] END; 
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'FHLBDM\G-SQL Credit') BEGIN CREATE USER  [FHLBDM\G-SQL Credit] FOR LOGIN [FHLBDM\G-SQL Credit] WITH DEFAULT_SCHEMA = [dbo] END; 
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'FHLBDM\G-SQL MPF-BGS') BEGIN CREATE USER  [FHLBDM\G-SQL MPF-BGS] FOR LOGIN [FHLBDM\G-SQL MPF-BGS] WITH DEFAULT_SCHEMA = [dbo] END; 
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'FHLBDM\G-SQL Operations') BEGIN CREATE USER  [FHLBDM\G-SQL Operations] FOR LOGIN [FHLBDM\G-SQL Operations] WITH DEFAULT_SCHEMA = [dbo] END; 
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'FHLBDM\G-SQL Public') BEGIN CREATE USER  [FHLBDM\G-SQL Public] FOR LOGIN [FHLBDM\G-SQL Public] WITH DEFAULT_SCHEMA = [dbo] END; 
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'FHLBDM\G-SQL QlikSense RO') BEGIN CREATE USER  [FHLBDM\G-SQL QlikSense RO] FOR LOGIN [FHLBDM\G-SQL QlikSense RO] WITH DEFAULT_SCHEMA = [dbo] END; 
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'FHLBDM\IT-QA-Admin-Testers') BEGIN CREATE USER  [FHLBDM\IT-QA-Admin-Testers] FOR LOGIN [FHLBDM\IT-QA-Admin-Testers] WITH DEFAULT_SCHEMA = [dbo] END; 
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'Intranet_User') BEGIN CREATE USER  [Intranet_User] FOR LOGIN [intranet_user] WITH DEFAULT_SCHEMA = [Intranet_User] END; 
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'FHLBDM\mlevere') BEGIN CREATE USER  [fhlbdm\mlevere] FOR LOGIN [FHLBDM\mlevere] WITH DEFAULT_SCHEMA = [dbo] END;
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'FHLBDM\smartinez') BEGIN CREATE USER  [fhlbdm\smartinez] FOR LOGIN [FHLBDM\smartinez] WITH DEFAULT_SCHEMA = [dbo] END;

-- [-- ORPHANED USERS --] --                                                                                               
-- [-- DB ROLES --] --                                                                                                     
EXEC sp_addrolemember @rolename = 'db_datareader', @membername = 'FHLBDM\G-FHLB-Developers'                                
EXEC sp_addrolemember @rolename = 'db_datareader', @membername = 'FHLBDM\G-SQL Public'                                     
EXEC sp_addrolemember @rolename = 'db_datareader', @membername = 'FHLBDM\G-SQL QlikSense RO'                               
EXEC sp_addrolemember @rolename = 'db_owner', @membername = 'FHLBDM\IT-QA-Admin-Testers'                                   
EXEC sp_addrolemember @rolename = 'db_owner', @membername = 'FHLBDM\mlevere'                                               
EXEC sp_addrolemember @rolename = 'db_owner', @membername = 'FHLBDM\smartinez'                                             
                                                                                                                           
-- [-- OBJECT LEVEL PERMISSIONS --] --                                                                                     
GRANT DELETE ON [dbo].[dtproperties] TO [public]                                                                           
GRANT EXECUTE ON [dbo].[dt_addtosourcecontrol] TO [public]                                                                 
GRANT EXECUTE ON [dbo].[dt_addtosourcecontrol_u] TO [public]                                                               
GRANT EXECUTE ON [dbo].[dt_adduserobject] TO [public]                                                                      
GRANT EXECUTE ON [dbo].[dt_adduserobject_vcs] TO [public]                                                                  
GRANT EXECUTE ON [dbo].[dt_checkinobject] TO [public]                                                                      
GRANT EXECUTE ON [dbo].[dt_checkinobject_u] TO [public]                                                                    
GRANT EXECUTE ON [dbo].[dt_checkoutobject] TO [public]                                                                     
GRANT EXECUTE ON [dbo].[dt_checkoutobject_u] TO [public]                                                                   
GRANT EXECUTE ON [dbo].[dt_displayoaerror] TO [public]                                                                     
GRANT EXECUTE ON [dbo].[dt_displayoaerror_u] TO [public]                                                                   
GRANT EXECUTE ON [dbo].[dt_droppropertiesbyid] TO [public]                                                                 
GRANT EXECUTE ON [dbo].[dt_dropuserobjectbyid] TO [public]                                                                 
GRANT EXECUTE ON [dbo].[dt_generateansiname] TO [public]                                                                   
GRANT EXECUTE ON [dbo].[dt_getobjwithprop] TO [public]                                                                     
GRANT EXECUTE ON [dbo].[dt_getobjwithprop_u] TO [public]                                                                   
GRANT EXECUTE ON [dbo].[dt_getpropertiesbyid] TO [public]                                                                  
GRANT EXECUTE ON [dbo].[dt_getpropertiesbyid_u] TO [public]                                                                
GRANT EXECUTE ON [dbo].[dt_getpropertiesbyid_vcs] TO [public]                                                              
GRANT EXECUTE ON [dbo].[dt_getpropertiesbyid_vcs_u] TO [public]                                                            
GRANT EXECUTE ON [dbo].[dt_isundersourcecontrol] TO [public]                                                               
GRANT EXECUTE ON [dbo].[dt_isundersourcecontrol_u] TO [public]                                                             
GRANT EXECUTE ON [dbo].[dt_removefromsourcecontrol] TO [public]                                                            
GRANT EXECUTE ON [dbo].[dt_setpropertybyid] TO [public]                                                                    
GRANT EXECUTE ON [dbo].[dt_setpropertybyid_u] TO [public]                                                                  
GRANT EXECUTE ON [dbo].[dt_validateloginparams] TO [public]                                                                
GRANT EXECUTE ON [dbo].[dt_validateloginparams_u] TO [public]                                                              
GRANT EXECUTE ON [dbo].[dt_vcsenabled] TO [public]                                                                         
GRANT EXECUTE ON [dbo].[dt_verstamp006] TO [public]                                                                        
GRANT EXECUTE ON [dbo].[dt_verstamp007] TO [public]                                                                        
GRANT EXECUTE ON [dbo].[dt_whocheckedout] TO [public]                                                                      
GRANT EXECUTE ON [dbo].[dt_whocheckedout_u] TO [public]                                                                    
GRANT INSERT ON [dbo].[dtproperties] TO [public]                                                                           
GRANT REFERENCES ON [dbo].[dtproperties] TO [public]                                                                       
GRANT SELECT ON [dbo].[Account_Names_and_Addresses] TO [FHLBDM\G-SQL Public]                                               
GRANT SELECT ON [dbo].[Account_Names_and_Addresses] TO [Intranet_User]                                                     
GRANT SELECT ON [dbo].[Advances_V] TO [FHLBDM\G-SQL Public]                                                                
GRANT SELECT ON [dbo].[Advances_V] TO [Intranet_User]                                                                      
GRANT SELECT ON [dbo].[BUDGET_V] TO [FHLBDM\G-SQL Public]                                                                  
GRANT SELECT ON [dbo].[BUDGET_V] TO [Intranet_User]                                                                        
GRANT SELECT ON [dbo].[Commitments_V] TO [FHLBDM\G-SQL Public]                                                             
GRANT SELECT ON [dbo].[Commitments_V] TO [Intranet_User]                                                                   
GRANT SELECT ON [dbo].[Data Element Description Table] TO [FHLBDM\G-SQL Public]                                            
GRANT SELECT ON [dbo].[Data Element Description Table] TO [Intranet_User]                                                  
GRANT SELECT ON [dbo].[dtproperties] TO [public]                                                                           
GRANT SELECT ON [dbo].[frb_Detail] TO [FHLBDM\G-SQL Public]                                                                
GRANT SELECT ON [dbo].[frb_Detail] TO [Intranet_User]                                                                      
GRANT SELECT ON [dbo].[frb_Header] TO [FHLBDM\G-SQL Public]                                                                
GRANT SELECT ON [dbo].[frb_Header] TO [Intranet_User]                                                                      
GRANT SELECT ON [dbo].[frb_Total] TO [FHLBDM\G-SQL Public]                                                                 
GRANT SELECT ON [dbo].[frb_Total] TO [Intranet_User]                                                                       
GRANT SELECT ON [dbo].[General_Ledger_01_v] TO [FHLBDM\G-SQL Public]                                                       
GRANT SELECT ON [dbo].[General_Ledger_01_v] TO [Intranet_User]                                                             
GRANT SELECT ON [dbo].[Letters_Of_Credit] TO [FHLBDM\G-SQL Public]                                                         
GRANT SELECT ON [dbo].[Letters_Of_Credit] TO [Intranet_User]                                                               
GRANT SELECT ON [dbo].[M2M_Principia] TO [FHLBDM\G-SQL Public]                                                             
GRANT SELECT ON [dbo].[Master] TO [FHLBDM\G-SQL Public]                                                                    
GRANT SELECT ON [dbo].[Membership_V] TO [FHLBDM\G-SQL Public]                                                              
GRANT SELECT ON [dbo].[Membership_V] TO [Intranet_User]                                                                    
GRANT SELECT ON [dbo].[MPF Trans  Loan] TO [FHLBDM\G-SQL Public]                                                           
GRANT SELECT ON [dbo].[MPF Trans  Loan] TO [Intranet_User]                                                                 
GRANT SELECT ON [dbo].[MPF Trans Delivery_Pre] TO [FHLBDM\G-SQL Public]                                                    
GRANT SELECT ON [dbo].[MPF Trans Delivery_Pre] TO [Intranet_User]                                                          
GRANT SELECT ON [dbo].[mpf_cdt_enhance] TO [FHLBDM\G-SQL Public]                                                           
GRANT SELECT ON [dbo].[mpf_cdt_enhance] TO [Intranet_User]                                                                 
GRANT SELECT ON [dbo].[MPF_Excess_Service_Fee] TO [FHLBDM\G-SQL Public]                                                    
GRANT SELECT ON [dbo].[MPF_Excess_Service_Fee] TO [Intranet_User]                                                          
GRANT SELECT ON [dbo].[MPF_P_AND_I] TO [FHLBDM\G-SQL Public]                                                               
GRANT SELECT ON [dbo].[MPF_P_AND_I] TO [Intranet_User]                                                                     
GRANT SELECT ON [dbo].[MPF_P_AND_I_Current] TO [FHLBDM\G-SQL Public]                                                       
GRANT SELECT ON [dbo].[MPF_P_AND_I_Current] TO [Intranet_User]                                                             
GRANT SELECT ON [dbo].[MPF_Trans_Trades] TO [fhlbdm\devltst]                                                               
GRANT SELECT ON [dbo].[MPF_Trans_Trades] TO [FHLBDM\G-SQL Public]                                                          
GRANT SELECT ON [dbo].[MPF_Trans_Trades] TO [Intranet_User]                                                                
GRANT SELECT ON [dbo].[MPFPAYMT] TO [FHLBDM\G-SQL Public]                                                                  
GRANT SELECT ON [dbo].[OLOC] TO [FHLBDM\G-SQL Public]                                                                      
GRANT SELECT ON [dbo].[OLOC] TO [Intranet_User]                                                                            
GRANT SELECT ON [dbo].[Primary_Demand] TO [FHLBDM\G-SQL Public]                                                            
GRANT SELECT ON [dbo].[Primary_Demand] TO [Intranet_User]                                                                  
GRANT SELECT ON [dbo].[Principia_Trial_Balance] TO [FHLBDM\G-SQL Public]                                                   
GRANT SELECT ON [dbo].[Principia_Trial_Balance] TO [Intranet_User]                                                         
GRANT SELECT ON [dbo].[Stock_Assets_V] TO [FHLBDM\G-SQL Public]                                                            
GRANT SELECT ON [dbo].[Stock_Assets_V] TO [Intranet_User]                                                                  
GRANT SELECT ON [dbo].[Stock_Owned] TO [FHLBDM\G-SQL Public]                                                               
GRANT SELECT ON [dbo].[Stock_Owned] TO [Intranet_User]                                                                     
GRANT SELECT ON [dbo].[Stock_Owned_Total] TO [FHLBDM\G-SQL Public]                                                         
GRANT SELECT ON [dbo].[Stock_Owned_Total] TO [Intranet_User]                                                               
GRANT SELECT ON [dbo].[Stock_Total] TO [FHLBDM\G-SQL Public]                                                               
GRANT SELECT ON [dbo].[Stock_Total] TO [Intranet_User]                                                                     
GRANT SELECT ON [dbo].[Total_Advances] TO [FHLBDM\G-SQL Public]                                                            
GRANT SELECT ON [dbo].[Total_Advances] TO [Intranet_User]                                                                  
GRANT UPDATE ON [dbo].[dtproperties] TO [public]                                                                           
-- [-- TYPE LEVEL PERMISSIONS --] --                                                                                       
                                                                                                                           
-- [--DB LEVEL PERMISSIONS --] --                                                                                          
GRANT CONNECT TO [fhlbdm\devltst]                                                                                          
GRANT CONNECT TO [FHLBDM\G-FHLB-Developers]                                                                                
GRANT CONNECT TO [FHLBDM\Global- Accounting]                                                                               
GRANT CONNECT TO [FHLBDM\G-SQL Credit]                                                                                     
GRANT CONNECT TO [FHLBDM\G-SQL MPF-BGS]                                                                                    
GRANT CONNECT TO [FHLBDM\G-SQL Operations]                                                                                 
GRANT CONNECT TO [FHLBDM\G-SQL Public]                                                                                     
GRANT CONNECT TO [FHLBDM\G-SQL QlikSense RO]                                                                               
GRANT CONNECT TO [FHLBDM\IT-QA-Admin-Testers]                                                                              
GRANT CONNECT TO [FHLBDM\mlevere]                                                                                          
GRANT CONNECT TO [FHLBDM\smartinez]                                                                                        
GRANT CONNECT TO [Intranet_User]                                                                                           
GRANT SHOWPLAN TO [FHLBDM\G-FHLB-Developers]                                                                               
                                                                                                                           
-- [--DB LEVEL SCHEMA PERMISSIONS --] --                                                                                   


