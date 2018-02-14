
--stmt                                                                                                                     
------                                                                                                                     
-- [-- DB CONTEXT --] --                                                                                                   
USE [yearly]                                                                                                               
                                                                                                                           
-- [-- DB USERS --] --                                                                                                     
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'dbo') BEGIN CREATE USER  [dbo] FOR LOGIN [sa] WITH DEFAULT_SCHEMA = [dbo] END; 
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'FHLBDM\ACTUTLG') BEGIN CREATE USER  [FHLBDM\ACTUTLG] FOR LOGIN [FHLBDM\ACTUTLG] WITH DEFAULT_SCHEMA = [FHLBDM\ACTUTLG] END; 
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'FHLBDM\devltst') BEGIN CREATE USER  [FHLBDM\devltst] FOR LOGIN [FHLBDM\DEVLTST] WITH DEFAULT_SCHEMA = [FHLBDM\devltst] END; 
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'FHLBDM\DMDUCKS') BEGIN CREATE USER  [FHLBDM\DMDUCKS] FOR LOGIN [FHLBDM\DMDUCKS] WITH DEFAULT_SCHEMA = [FHLBDM\DMDUCKS] END; 
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'FHLBDM\G-FHLBAPPS-CallBonds Admin') BEGIN CREATE USER  [FHLBDM\G-FHLBAPPS-CallBonds Admin] FOR LOGIN [FHLBDM\G-FHLBAPPS-CallBonds Admin] WITH DEFAULT_SCHEMA = [dbo] END; 
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'FHLBDM\G-FHLBAPPS-CallBonds') BEGIN CREATE USER  [FHLBDM\G-FHLBAPPS-CallBonds] FOR LOGIN [FHLBDM\G-FHLBAPPS-CallBonds] WITH DEFAULT_SCHEMA = [dbo] END; 
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'FHLBDM\G-FHLBApps-MATS_MFS') BEGIN CREATE USER  [FHLBDM\G-FHLBApps-MATS_MFS] FOR LOGIN [FHLBDM\G-FHLBApps-MATS_MFS] WITH DEFAULT_SCHEMA = [dbo] END; 
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'FHLBDM\G-FHLBAPPS-QRM_Reports RO') BEGIN CREATE USER  [FHLBDM\G-FHLBAPPS-QRM_Reports RO] FOR LOGIN [FHLBDM\G-FHLBAPPS-QRM_Reports RO] WITH DEFAULT_SCHEMA = [dbo] END; 
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'FHLBDM\G-FHLBAPPS-QRM_Reports') BEGIN CREATE USER  [FHLBDM\G-FHLBAPPS-QRM_Reports] FOR LOGIN [FHLBDM\G-FHLBAPPS-QRM_Reports] WITH DEFAULT_SCHEMA = [dbo] END; 
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'FHLBDM\G-FHLB-Developers') BEGIN CREATE USER  [FHLBDM\G-FHLB-Developers] FOR LOGIN [FHLBDM\G-FHLB-Developers] WITH DEFAULT_SCHEMA = [dbo] END; 
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'FHLBDM\Global- Accounting') BEGIN CREATE USER  [FHLBDM\Global- Accounting] FOR LOGIN [FHLBDM\Global- Accounting] WITH DEFAULT_SCHEMA = [dbo] END; 
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'FHLBDM\G-SQL AccountingReports Admin') BEGIN CREATE USER  [FHLBDM\G-SQL AccountingReports Admin] FOR LOGIN [FHLBDM\G-SQL AccountingReports Admin] WITH DEFAULT_SCHEMA = [dbo] END; 
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'FHLBDM\G-SQL Credit') BEGIN CREATE USER  [FHLBDM\G-SQL Credit] FOR LOGIN [FHLBDM\G-SQL Credit] WITH DEFAULT_SCHEMA = [dbo] END; 
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'FHLBDM\G-SQL MPF-BGS') BEGIN CREATE USER  [FHLBDM\G-SQL MPF-BGS] FOR LOGIN [FHLBDM\G-SQL MPF-BGS] WITH DEFAULT_SCHEMA = [dbo] END; 
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'FHLBDM\G-SQL MPF-REO') BEGIN CREATE USER  [FHLBDM\G-SQL MPF-REO] FOR LOGIN [FHLBDM\G-SQL MPF-REO] WITH DEFAULT_SCHEMA = [dbo] END; 
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'FHLBDM\G-SQL Operations') BEGIN CREATE USER  [FHLBDM\G-SQL Operations] FOR LOGIN [FHLBDM\G-SQL Operations] WITH DEFAULT_SCHEMA = [dbo] END; 
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'FHLBDM\G-SQL OpRiskExceptions RO') BEGIN CREATE USER  [FHLBDM\G-SQL OpRiskExceptions RO] FOR LOGIN [FHLBDM\G-SQL OpRiskExceptions RO] WITH DEFAULT_SCHEMA = [dbo] END; 
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'FHLBDM\G-SQL OpRiskExceptions') BEGIN CREATE USER  [FHLBDM\G-SQL OpRiskExceptions] FOR LOGIN [FHLBDM\G-SQL OpRiskExceptions] WITH DEFAULT_SCHEMA = [dbo] END; 
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'FHLBDM\G-SQL Public') BEGIN CREATE USER  [FHLBDM\G-SQL Public] FOR LOGIN [FHLBDM\G-SQL Public] WITH DEFAULT_SCHEMA = [dbo] END; 
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'FHLBDM\G-SQL QlikSense RO') BEGIN CREATE USER  [FHLBDM\G-SQL QlikSense RO] FOR LOGIN [FHLBDM\G-SQL QlikSense RO] WITH DEFAULT_SCHEMA = [dbo] END; 
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'FHLBDM\G-SQL STKCP') BEGIN CREATE USER  [FHLBDM\G-SQL STKCP] FOR LOGIN [FHLBDM\G-SQL STKCP] WITH DEFAULT_SCHEMA = [dbo] END; 
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'FHLBDM\G-SQL-DWH-MPF Admin') BEGIN CREATE USER  [FHLBDM\G-SQL-DWH-MPF Admin] FOR LOGIN [FHLBDM\G-SQL-DWH-MPF Admin] WITH DEFAULT_SCHEMA = [dbo] END; 
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'FHLBDM\IT-QA-Admin-Testers') BEGIN CREATE USER  [FHLBDM\IT-QA-Admin-Testers] FOR LOGIN [FHLBDM\IT-QA-Admin-Testers] WITH DEFAULT_SCHEMA = [dbo] END; 
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'FHLBDM\tsvc_StockUpdate') BEGIN CREATE USER  [FHLBDM\tsvc_StockUpdate] FOR LOGIN [FHLBDM\tsvc_StockUpdate] WITH DEFAULT_SCHEMA = [dbo] END; 
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'G-SQL PFI Full') BEGIN CREATE USER  [G-SQL PFI Full] FOR LOGIN [FHLBDM\G-SQL PFI Full] WITH DEFAULT_SCHEMA = [dbo] END; 
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'G-SQL PFI RO') BEGIN CREATE USER  [G-SQL PFI RO] FOR LOGIN [FHLBDM\G-SQL PFI RO] WITH DEFAULT_SCHEMA = [dbo] END; 
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'G-SQL-CIARestrictions RO') BEGIN CREATE USER  [G-SQL-CIARestrictions RO] FOR LOGIN [FHLBDM\G-SQL-CIARestrictions RO] WITH DEFAULT_SCHEMA = [dbo] END; 
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'G-SQL-CIARestrictions') BEGIN CREATE USER  [G-SQL-CIARestrictions] FOR LOGIN [FHLBDM\G-SQL-CIARestrictions] WITH DEFAULT_SCHEMA = [dbo] END; 
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'Intranet_User') BEGIN CREATE USER  [Intranet_User] FOR LOGIN [intranet_user] WITH DEFAULT_SCHEMA = [Intranet_User] END; 
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'MKTUBJH') BEGIN CREATE USER  [MKTUBJH] FOR LOGIN [FHLBDM\MKTUBJH] WITH DEFAULT_SCHEMA = [MKTUBJH] END; 
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'FHLBDM\mlevere') BEGIN CREATE USER  [FHLBDM\mlevere] FOR LOGIN [FHLBDM\mlevere] WITH DEFAULT_SCHEMA = [dbo] END;
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'FHLBDM\smartinez') BEGIN CREATE USER  [FHLBDM\smartinez] FOR LOGIN [FHLBDM\smartinez] WITH DEFAULT_SCHEMA = [dbo] END;

-- [-- ORPHANED USERS --] --                                                                                               
-- [-- DB ROLES --] --                                                                                                     
EXEC sp_addrolemember @rolename = 'db_datareader', @membername = 'FHLBDM\G-FHLBAPPS-QRM_Reports'                           
EXEC sp_addrolemember @rolename = 'db_datareader', @membername = 'FHLBDM\G-FHLBAPPS-QRM_Reports RO'                        
EXEC sp_addrolemember @rolename = 'db_datareader', @membername = 'FHLBDM\G-FHLB-Developers'                                
EXEC sp_addrolemember @rolename = 'db_datareader', @membername = 'FHLBDM\G-SQL QlikSense RO'                               
EXEC sp_addrolemember @rolename = 'db_datareader', @membername = 'Intranet_User'                                           
EXEC sp_addrolemember @rolename = 'db_owner', @membername = 'FHLBDM\IT-QA-Admin-Testers'                                   
EXEC sp_addrolemember @rolename = 'db_owner', @membername = 'FHLBDM\mlevere'                                               
EXEC sp_addrolemember @rolename = 'db_owner', @membername = 'FHLBDM\smartinez'                                             
                                                                                                                           
-- [-- OBJECT LEVEL PERMISSIONS --] --                                                                                     
GRANT DELETE ON [dbo].[DSS_IAN_Redemption_Notice] TO [FHLBDM\G-FHLBAPPS-CallBonds Admin]                                   
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
GRANT INSERT ON [dbo].[DSS_IAN_Redemption_Notice] TO [FHLBDM\G-FHLBAPPS-CallBonds Admin]                                   
GRANT INSERT ON [dbo].[dtproperties] TO [public]                                                                           
GRANT REFERENCES ON [dbo].[dtproperties] TO [public]                                                                       
GRANT SELECT ON [dbo].[Account_Names_and_Addresses] TO [FHLBDM\G-SQL Public]                                               
GRANT SELECT ON [dbo].[Account_Names_and_Addresses] TO [Intranet_User]                                                     
GRANT SELECT ON [dbo].[Advance Daily Activity] TO [FHLBDM\G-SQL Public]                                                    
GRANT SELECT ON [dbo].[Advance Daily Activity] TO [Intranet_User]                                                          
GRANT SELECT ON [dbo].[Advance_Averages] TO [FHLBDM\G-SQL Public]                                                          
GRANT SELECT ON [dbo].[Advance_Averages] TO [Intranet_User]                                                                
GRANT SELECT ON [dbo].[Broker_Information] TO [FHLBDM\G-SQL Public]                                                        
GRANT SELECT ON [dbo].[Broker_Information] TO [Intranet_User]                                                              
GRANT SELECT ON [dbo].[Capital_Stock] TO [FHLBDM\G-SQL Public]                                                             
GRANT SELECT ON [dbo].[Capital_Stock] TO [Intranet_User]                                                                   
GRANT SELECT ON [dbo].[Capital_Stock_CP] TO [FHLBDM\G-SQL Public]                                                          
GRANT SELECT ON [dbo].[Capital_Stock_CP] TO [FHLBDM\psvc_StockUpdate]                                                      
GRANT SELECT ON [dbo].[Capital_Stock_CP] TO [FHLBDM\tsvc_StockUpdate]                                                      
GRANT SELECT ON [dbo].[Capital_Stock_CP] TO [Intranet_User]                                                                
GRANT SELECT ON [dbo].[CDS] TO [FHLBDM\G-SQL Public]                                                                       
GRANT SELECT ON [dbo].[CDS] TO [FHLBDM\psvc_StockUpdate]                                                                   
GRANT SELECT ON [dbo].[CDS] TO [FHLBDM\tsvc_StockUpdate]                                                                   
GRANT SELECT ON [dbo].[CDS] TO [Intranet_User]                                                                             
GRANT SELECT ON [dbo].[Collateral_Computations] TO [FHLBDM\G-SQL Public]                                                   
GRANT SELECT ON [dbo].[Collateral_Computations] TO [Intranet_User]                                                         
GRANT SELECT ON [dbo].[Collateral_Matrix] TO [FHLBDM\G-SQL Public]                                                         
GRANT SELECT ON [dbo].[Collateral_Matrix] TO [Intranet_User]                                                               
GRANT SELECT ON [dbo].[Collateral_Quality] TO [FHLBDM\G-SQL Public]                                                        
GRANT SELECT ON [dbo].[Collateral_Quality] TO [Intranet_User]                                                              
GRANT SELECT ON [dbo].[CRF] TO [FHLBDM\G-SQL Public]                                                                       
GRANT SELECT ON [dbo].[CRF] TO [Intranet_User]                                                                             
GRANT SELECT ON [dbo].[Customer_Information] TO [FHLBDM\G-SQL Public]                                                      
GRANT SELECT ON [dbo].[Customer_Information] TO [FHLBDM\psvc_StockUpdate]                                                  
GRANT SELECT ON [dbo].[Customer_Information] TO [FHLBDM\tsvc_StockUpdate]                                                  
GRANT SELECT ON [dbo].[Customer_Information] TO [Intranet_User]                                                            
GRANT SELECT ON [dbo].[Data Element Description Table] TO [FHLBDM\G-SQL Public]                                            
GRANT SELECT ON [dbo].[Data Element Description Table] TO [Intranet_User]                                                  
GRANT SELECT ON [dbo].[DEMAND_DT_AVG_BALANCE] TO [FHLBDM\G-SQL Public]                                                     
GRANT SELECT ON [dbo].[DEMAND_DT_AVG_BALANCE] TO [Intranet_User]                                                           
GRANT SELECT ON [dbo].[DSS_IAN_Redemption_Notice] TO [FHLBDM\G-FHLBAPPS-CallBonds Admin]                                   
GRANT SELECT ON [dbo].[DSS_IAN_Redemption_Notice] TO [FHLBDM\G-FHLBAPPS-CallBonds]                                         
GRANT SELECT ON [dbo].[DSS_IAN_Redemption_Notice] TO [FHLBDM\G-SQL Public]                                                 
GRANT SELECT ON [dbo].[DSS_IAN_Redemption_Notice] TO [Intranet_User]                                                       
GRANT SELECT ON [dbo].[DSS_IAN_Redemption_Notice] TO [public]                                                              
GRANT SELECT ON [dbo].[dtproperties] TO [public]                                                                           
GRANT SELECT ON [dbo].[EOY_Balancing_Report] TO [FHLBDM\G-SQL Public]                                                      
GRANT SELECT ON [dbo].[frb_Detail] TO [FHLBDM\G-SQL Public]                                                                
GRANT SELECT ON [dbo].[frb_Detail] TO [Intranet_User]                                                                      
GRANT SELECT ON [dbo].[frb_Header] TO [FHLBDM\G-SQL Public]                                                                
GRANT SELECT ON [dbo].[frb_Header] TO [Intranet_User]                                                                      
GRANT SELECT ON [dbo].[frb_Total] TO [FHLBDM\G-SQL Public]                                                                 
GRANT SELECT ON [dbo].[frb_Total] TO [Intranet_User]                                                                       
GRANT SELECT ON [dbo].[General_Ledger_01_v] TO [Intranet_User]                                                             
GRANT SELECT ON [dbo].[Goldmine] TO [FHLBDM\G-SQL Public]                                                                  
GRANT SELECT ON [dbo].[Goldmine] TO [Intranet_User]                                                                        
GRANT SELECT ON [dbo].[Interest_Payments] TO [FHLBDM\G-SQL Public]                                                         
GRANT SELECT ON [dbo].[Interest_Payments] TO [Intranet_User]                                                               
GRANT SELECT ON [dbo].[Investments_01] TO [FHLBDM\G-SQL Public]                                                            
GRANT SELECT ON [dbo].[Investments_01] TO [Intranet_User]                                                                  
GRANT SELECT ON [dbo].[JXD] TO [FHLBDM\G-SQL Public]                                                                       
GRANT SELECT ON [dbo].[JXD] TO [Intranet_User]                                                                             
GRANT SELECT ON [dbo].[JXM] TO [FHLBDM\G-SQL Public]                                                                       
GRANT SELECT ON [dbo].[JXM] TO [Intranet_User]                                                                             
GRANT SELECT ON [dbo].[Link] TO [FHLBDM\G-SQL Public]                                                                      
GRANT SELECT ON [dbo].[Link] TO [Intranet_User]                                                                            
GRANT SELECT ON [dbo].[M2M_Principia] TO [FHLBDM\G-SQL Public]                                                             
GRANT SELECT ON [dbo].[Marketing_Profile] TO [FHLBDM\G-SQL Public]                                                         
GRANT SELECT ON [dbo].[Marketing_Profile] TO [Intranet_User]                                                               
GRANT SELECT ON [dbo].[MarketVal] TO [FHLBDM\G-SQL Public]                                                                 
GRANT SELECT ON [dbo].[MarketVal] TO [Intranet_User]                                                                       
GRANT SELECT ON [dbo].[Master] TO [FHLBDM\G-SQL Public]                                                                    
GRANT SELECT ON [dbo].[MCV_Comments] TO [FHLBDM\G-SQL Public]                                                              
GRANT SELECT ON [dbo].[MCV_Comments] TO [Intranet_User]                                                                    
GRANT SELECT ON [dbo].[MCV_Detail] TO [FHLBDM\G-SQL Public]                                                                
GRANT SELECT ON [dbo].[MCV_Detail] TO [Intranet_User]                                                                      
GRANT SELECT ON [dbo].[MCV_Information] TO [FHLBDM\G-SQL Public]                                                           
GRANT SELECT ON [dbo].[MCV_Information] TO [Intranet_User]                                                                 
GRANT SELECT ON [dbo].[Membership_App_Tracking_Log] TO [FHLBDM\G-SQL Public]                                               
GRANT SELECT ON [dbo].[Membership_App_Tracking_Log] TO [Intranet_User]                                                     
GRANT SELECT ON [dbo].[Membership_Comments] TO [FHLBDM\G-SQL Public]                                                       
GRANT SELECT ON [dbo].[Membership_Comments] TO [Intranet_User]                                                             
GRANT SELECT ON [dbo].[Membership_V] TO [FHLBDM\G-SQL Public]                                                              
GRANT SELECT ON [dbo].[Membership_V] TO [Intranet_User]                                                                    
GRANT SELECT ON [dbo].[MPF Trans Delivery_Pre] TO [FHLBDM\G-SQL Public]                                                    
GRANT SELECT ON [dbo].[MPF Trans Delivery_Pre] TO [Intranet_User]                                                          
GRANT SELECT ON [dbo].[MPF_P_and_I_Current] TO [Intranet_User]                                                             
GRANT SELECT ON [dbo].[Other_Accounting_Information] TO [FHLBDM\G-SQL Public]                                              
GRANT SELECT ON [dbo].[Other_Accounting_Information] TO [Intranet_User]                                                    
GRANT SELECT ON [dbo].[Principal_Payments] TO [FHLBDM\G-SQL Public]                                                        
GRANT SELECT ON [dbo].[Principal_Payments] TO [Intranet_User]                                                              
GRANT SELECT ON [dbo].[Principia_Expiration_Rpt] TO [FHLBDM\G-SQL Public]                                                  
GRANT SELECT ON [dbo].[Principia_Expiration_Rpt] TO [Intranet_User]                                                        
GRANT SELECT ON [dbo].[Principia_KnockIn_KnockOut_Rpt] TO [FHLBDM\G-SQL Public]                                            
GRANT SELECT ON [dbo].[Principia_KnockIn_KnockOut_Rpt] TO [Intranet_User]                                                  
GRANT SELECT ON [dbo].[Principia_Maturity_Rpt] TO [FHLBDM\G-SQL Public]                                                    
GRANT SELECT ON [dbo].[Principia_Maturity_Rpt] TO [Intranet_User]                                                          
GRANT SELECT ON [dbo].[Principia_Trial_Balance] TO [FHLBDM\G-SQL Public]                                                   
GRANT SELECT ON [dbo].[Principia_Trial_Balance] TO [Intranet_User]                                                         
GRANT SELECT ON [dbo].[Safekeeping_Authorized_Users] TO [FHLBDM\G-SQL Public]                                              
GRANT SELECT ON [dbo].[Safekeeping_Authorized_Users] TO [Intranet_User]                                                    
GRANT SELECT ON [dbo].[Safekeeping_Names_and_Add] TO [FHLBDM\G-SQL Public]                                                 
GRANT SELECT ON [dbo].[Safekeeping_Names_and_Add] TO [Intranet_User]                                                       
GRANT SELECT ON [dbo].[Security_Payments] TO [FHLBDM\G-SQL Public]                                                         
GRANT SELECT ON [dbo].[Security_Payments] TO [Intranet_User]                                                               
GRANT SELECT ON [dbo].[STKTRN] TO [FHLBDM\Global- Accounting]                                                              
GRANT SELECT ON [dbo].[Stock_Owned] TO [Intranet_User]                                                                     
GRANT SELECT ON [dbo].[SWAP] TO [FHLBDM\G-SQL Public]                                                                      
GRANT SELECT ON [dbo].[Total_Advances] TO [Intranet_User]                                                                  
GRANT UPDATE ON [dbo].[DSS_IAN_Redemption_Notice] TO [FHLBDM\G-FHLBAPPS-CallBonds Admin]                                   
GRANT UPDATE ON [dbo].[dtproperties] TO [public]                                                                           
-- [-- TYPE LEVEL PERMISSIONS --] --                                                                                       
                                                                                                                           
-- [--DB LEVEL PERMISSIONS --] --                                                                                          
GRANT CONNECT TO [FHLBDM\ACTUTLG]                                                                                          
GRANT CONNECT TO [FHLBDM\devltst]                                                                                          
GRANT CONNECT TO [FHLBDM\DMDUCKS]                                                                                          
GRANT CONNECT TO [FHLBDM\G-FHLBAPPS-CallBonds Admin]                                                                       
GRANT CONNECT TO [FHLBDM\G-FHLBAPPS-CallBonds]                                                                             
GRANT CONNECT TO [FHLBDM\G-FHLBApps-MATS_MFS]                                                                              
GRANT CONNECT TO [FHLBDM\G-FHLBAPPS-QRM_Reports RO]                                                                        
GRANT CONNECT TO [FHLBDM\G-FHLBAPPS-QRM_Reports]                                                                           
GRANT CONNECT TO [FHLBDM\G-SQL AccountingReports Admin]                                                                    
GRANT CONNECT TO [FHLBDM\G-SQL Credit]                                                                                     
GRANT CONNECT TO [FHLBDM\G-SQL MPF-BGS]                                                                                    
GRANT CONNECT TO [FHLBDM\G-SQL MPF-REO]                                                                                    
GRANT CONNECT TO [FHLBDM\G-SQL Operations]                                                                                 
GRANT CONNECT TO [FHLBDM\G-SQL OpRiskExceptions RO]                                                                        
GRANT CONNECT TO [FHLBDM\G-SQL OpRiskExceptions]                                                                           
GRANT CONNECT TO [FHLBDM\G-SQL Public]                                                                                     
GRANT CONNECT TO [FHLBDM\G-SQL QlikSense RO]                                                                               
GRANT CONNECT TO [FHLBDM\G-SQL STKCP]                                                                                      
GRANT CONNECT TO [FHLBDM\G-SQL-DWH-MPF Admin]                                                                              
GRANT CONNECT TO [FHLBDM\IT-QA-Admin-Testers]                                                                              
GRANT CONNECT TO [FHLBDM\mlevere]                                                                                          
GRANT CONNECT TO [FHLBDM\psvc_StockUpdate]                                                                                 
GRANT CONNECT TO [FHLBDM\smartinez]                                                                                        
GRANT CONNECT TO [FHLBDM\tsvc_StockUpdate]                                                                                 
GRANT CONNECT TO [G-FHLBAPPS-DWH_Risk]                                                                                     
GRANT CONNECT TO [G-SQL PFI Full]                                                                                          
GRANT CONNECT TO [G-SQL PFI RO]                                                                                            
GRANT CONNECT TO [G-SQL-CIARestrictions RO]                                                                                
GRANT CONNECT TO [G-SQL-CIARestrictions]                                                                                   
GRANT CONNECT TO [Intranet_User]                                                                                           
GRANT CONNECT TO [MKTUBJH]                                                                                                 
GRANT SHOWPLAN TO [FHLBDM\G-FHLB-Developers]                                                                               
                                                                                                                           
-- [--DB LEVEL SCHEMA PERMISSIONS --] --                                                                                   


