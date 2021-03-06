

CREATE PROCEDURE [dbo].[EventFiles_i]



AS





INSERT INTO EventFiles

SELECT CAST(GETDATE() AS date), name, n.value('(@name)[1]','varchar(255)'), 0

FROM (SELECT name, CAST(t.target_data AS XML) target_data

       FROM sys.dm_xe_sessions s

              INNER JOIN sys.dm_xe_session_targets t ON t.event_session_address = s.address

       WHERE 

              t.target_name = N'event_file') AS tab

              CROSS APPLY [target_data].[nodes]('EventFileTarget/File') AS [q] ([n])

WHERE n.value('(@name)[1]','varchar(255)') NOT LIKE '%system_health%'



