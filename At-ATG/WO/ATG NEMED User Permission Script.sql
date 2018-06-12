USE [master]
GO
CREATE LOGIN [ATG\nemed] FROM WINDOWS WITH DEFAULT_DATABASE=[master]
GO
USE [ATG_Medical_Dev]
GO
CREATE USER [ATG\nemed] FOR LOGIN [ATG\nemed]
GO
USE [ATG_Medical_Dev]
GO
ALTER ROLE [db_datareader] ADD MEMBER [ATG\nemed]
GO
USE [ATG_Medical_Dev]
GO
ALTER ROLE [DevTeam] ADD MEMBER [ATG\nemed]
GO
USE [DocumentStore_Dev]
GO
CREATE USER [ATG\nemed] FOR LOGIN [ATG\nemed]
GO
USE [DocumentStore_Dev]
GO
ALTER ROLE [DocumentStoreApp] ADD MEMBER [ATG\nemed]
GO
USE [Medispan]
GO
CREATE USER [ATG\nemed] FOR LOGIN [ATG\nemed]
GO
USE [Medispan]
GO
ALTER ROLE [db_datareader] ADD MEMBER [ATG\nemed]
GO
USE [Medispan]
GO
ALTER ROLE [DevTeam] ADD MEMBER [ATG\nemed]
GO
USE [NE_Medical_Dev]
GO
CREATE USER [ATG\nemed] FOR LOGIN [ATG\nemed]
GO
USE [NE_Medical_Dev]
GO
ALTER ROLE [db_datareader] ADD MEMBER [ATG\nemed]
GO
USE [NE_Medical_Dev]
GO
ALTER ROLE [DevTeam] ADD MEMBER [ATG\nemed]
GO
USE [NE_Medical_Dev_Build]
GO
CREATE USER [ATG\nemed] FOR LOGIN [ATG\nemed]
GO
USE [NE_Medical_Dev_Build]
GO
ALTER ROLE [db_datareader] ADD MEMBER [ATG\nemed]
GO
USE [NE_Medical_Dev_Build]
GO
ALTER ROLE [DevTeam] ADD MEMBER [ATG\nemed]
GO
USE [NE_Medical_Mike]
GO
CREATE USER [ATG\nemed] FOR LOGIN [ATG\nemed]
GO
USE [NE_Medical_Mike]
GO
ALTER ROLE [db_datareader] ADD MEMBER [ATG\nemed]
GO
USE [NE_Medical_Mike]
GO
ALTER ROLE [DevTeam] ADD MEMBER [ATG\nemed]
GO
USE [NE_Medical_Prod]
GO
CREATE USER [ATG\nemed] FOR LOGIN [ATG\nemed]
GO
USE [NE_Medical_Prod]
GO
ALTER ROLE [db_datareader] ADD MEMBER [ATG\nemed]
GO
USE [NE_Medical_Prod]
GO
ALTER ROLE [DevTeam] ADD MEMBER [ATG\nemed]
GO
USE [NE_Medical_Prod_Gap]
GO
CREATE USER [ATG\nemed] FOR LOGIN [ATG\nemed]
GO
USE [NE_Medical_Prod_Gap]
GO
ALTER ROLE [db_datareader] ADD MEMBER [ATG\nemed]
GO
USE [NE_Medical_Prod_Gap]
GO
ALTER ROLE [DevTeam] ADD MEMBER [ATG\nemed]
GO
USE [NE_Medical_Test]
GO
CREATE USER [ATG\nemed] FOR LOGIN [ATG\nemed]
GO
USE [NE_Medical_Test]
GO
ALTER ROLE [db_datareader] ADD MEMBER [ATG\nemed]
GO
USE [NE_Medical_Test]
GO
ALTER ROLE [DevTeam] ADD MEMBER [ATG\nemed]
GO
USE [NE_Medical_Test_Build]
GO
CREATE USER [ATG\nemed] FOR LOGIN [ATG\nemed]
GO
USE [NE_Medical_Test_Build]
GO
ALTER ROLE [db_datareader] ADD MEMBER [ATG\nemed]
GO
USE [NE_Medical_Test_Build]
GO
ALTER ROLE [DevTeam] ADD MEMBER [ATG\nemed]
GO
use [master]
GO
GRANT CONNECT SQL TO [ATG\nemed]
GO
