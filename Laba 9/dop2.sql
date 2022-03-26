IF OBJECT_ID ('viewforlab9') IS NOT NULL
	DROP VIEW viewforlab9
GO

IF OBJECT_ID ('New_table') IS NOT NULL
	DROP TABLE New_table
GO

CREATE TABLE New_table
(
	[description] VARCHAR (100)
)
GO

CREATE VIEW New_view 
AS  
	select *
	from New_table
GO

SELECT *
FROM New_table

