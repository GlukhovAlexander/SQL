use TV_journalism
go





DROP TABLE IF EXISTS TV_journalism.dbo.table_view

CREATE TABLE TV_journalism.dbo.table_view
(
Name_user VARCHAR(200),
[date] datetime,
Name_DB VARCHAR(100),
Name_view VARCHAR(100),
);
go



  DROP TRIGGER trig_view
  on all server
go
CREATE TRIGGER trig_view	
ON all server
FOR CREATE_VIEW
AS
DECLARE @view VARCHAR(100)
SET @view = (SELECT EVENTDATA().value('(/EVENT_INSTANCE/TSQLCommand/CommandText)[1]','nvarchar(max)'))
INSERT INTO TV_journalism.dbo.table_view (Name_user, [date], Name_DB, Name_view) VALUES (ORIGINAL_LOGIN(), GETDATE(), db_name(), @view)
go






