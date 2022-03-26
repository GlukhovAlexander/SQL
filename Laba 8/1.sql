USE TV_journalism


--1)������� ����� ���� ������, �������� ������� <dbo>

--1 �������
SELECT name as [��� �������] FROM sys.tables                           
WHERE                         
USER_NAME(OBJECTPROPERTY([object_id], 'OwnerId'))='dbo'


--2 �������
SELECT TABLE_NAME as [��� �������] FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_NAME IN (SELECT name FROM sys.tables                           
					 WHERE USER_NAME(OBJECTPROPERTY([object_id], 'OwnerId'))='dbo')


--2)������� ��� �������, ��� ������� �������, ������� ����, 
--��������� �� ������ ������� null-��������, �������� ���� ������ ������� �������, 
--������ ����� ���� ������ - ��� ���� ������, �������� ������� ����������� ������������ 
--���� ������ � ���� �� ��������
SELECT OBJECT_NAME(sys.columns.object_id) AS [�������], sys.columns.name AS [��� �������], sys.columns.is_nullable [�������� �� NULL-��������], --sc-sys columns
TYPE_NAME(sys.columns.user_type_id) AS [��� ������], sys.columns.max_length AS [������ ���� ������ (� ������)]
FROM sys.columns, sys.tables
WHERE USER_NAME(OBJECTPROPERTY(sys.columns.object_id, 'OwnerId')) = 'dbo' AND  sys.columns.object_id =  sys.tables.object_id


--3)������� �������� ����������� ����������� (��������� � ������� �����), ��� �������, � ������� ��� ���������, ������� 
--����, ��� ��� �� ����������� - ��� ���� ����������� �����������, 
--��������� ����������� ������������� ���� ������
select CONSTRAINT_NAME as [��� �����������], TABLE_NAME as [��� �������], CONSTRAINT_TYPE as [���] from INFORMATION_SCHEMA.TABLE_CONSTRAINTS
where CONSTRAINT_TYPE = 'PRIMARY KEY' or CONSTRAINT_TYPE = 'FOREIGN KEY'

--4)������� �������� �������� �����, ��� �������, ���������� ������� ����, ��� �������, ���������� ��� ������������ 
--���� - ��� ���� ������� ������, ��������� ����������� ������������� ���� ������
SELECT sys.foreign_keys.name AS [�������� �����������], OBJECT_NAME(sys.foreign_keys.parent_object_id) AS [�������� �������� �������], 
OBJECT_NAME(sys.foreign_keys.referenced_object_id) AS [�������� ������������ �������]
FROM sys.foreign_keys 
WHERE USER_NAME(OBJECTPROPERTY(sys.foreign_keys.object_id, 'OwnerId')) = 'dbo'

--5)������� �������� �������������, SQL-������, ��������� ��� ������������� - ��� ���� �������������, 
--���������� ������� �������� ����������� ������������ ���� ������
SELECT [name] as [�������� �������������], [definition] as [������] FROM sys.views 
JOIN sys.sql_modules ON sys.views.object_id = sys.sql_modules.object_id
WHERE USER_NAME(OBJECTPROPERTY(sys.sql_modules.object_id, 'OwnerId')) = 'dbo'

--6)������� �������� ��������, ��� �������, ��� ������� ��������� ������� - ��� ���� ���������, ���������� �������
--�������� ����������� ������������ ���� ������
SELECT name as [��� ��������], OBJECT_NAME(parent_object_id) as [��� �������] from sys.tables
WHERE type = 'TR' AND USER_NAME(OBJECTPROPERTY(object_id, 'OwnerId')) = 'dbo'

