USE TV_journalism


--1)выбрать имена всех таблиц, владелец которых <dbo>

--1 вариант
SELECT name as [Имя таблицы] FROM sys.tables                           
WHERE                         
USER_NAME(OBJECTPROPERTY([object_id], 'OwnerId'))='dbo'


--2 вариант
SELECT TABLE_NAME as [Имя таблицы] FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_NAME IN (SELECT name FROM sys.tables                           
					 WHERE USER_NAME(OBJECTPROPERTY([object_id], 'OwnerId'))='dbo')


--2)выбрать имя таблицы, имя столбца таблицы, признак того, 
--допускает ли данный столбец null-значения, название типа данных столбца таблицы, 
--размер этого типа данных - для всех таблиц, которыми владеет назначенный пользователь 
--базы данных и всех их столбцов
SELECT OBJECT_NAME(sys.columns.object_id) AS [Таблица], sys.columns.name AS [Имя столбца], sys.columns.is_nullable [Возможно ли NULL-значение], --sc-sys columns
TYPE_NAME(sys.columns.user_type_id) AS [Тип данных], sys.columns.max_length AS [Размер типа данных (в байтах)]
FROM sys.columns, sys.tables
WHERE USER_NAME(OBJECTPROPERTY(sys.columns.object_id, 'OwnerId')) = 'dbo' AND  sys.columns.object_id =  sys.tables.object_id


--3)Выбрать название ограничения целостности (первичные и внешние ключи), имя таблицы, в которой оно находится, признак 
--того, что это за ограничение - для всех ограничений целостности, 
--созданных назначенным пользователем базы данных
select CONSTRAINT_NAME as [Имя ограничения], TABLE_NAME as [Имя таблицы], CONSTRAINT_TYPE as [Тип] from INFORMATION_SCHEMA.TABLE_CONSTRAINTS
where CONSTRAINT_TYPE = 'PRIMARY KEY' or CONSTRAINT_TYPE = 'FOREIGN KEY'

--4)выбрать название внешнего ключа, имя таблицы, содержащей внешний ключ, имя таблицы, содержащей его родительский 
--ключ - для всех внешних ключей, созданных назначенным пользователем базы данных
SELECT sys.foreign_keys.name AS [Название ограничения], OBJECT_NAME(sys.foreign_keys.parent_object_id) AS [Название дочерней таблицы], 
OBJECT_NAME(sys.foreign_keys.referenced_object_id) AS [Название родительской таблицы]
FROM sys.foreign_keys 
WHERE USER_NAME(OBJECTPROPERTY(sys.foreign_keys.object_id, 'OwnerId')) = 'dbo'

--5)выбрать название представления, SQL-запрос, создающий это представление - для всех представлений, 
--владельцем которых является назначенный пользователь базы данных
SELECT [name] as [Название представления], [definition] as [Запрос] FROM sys.views 
JOIN sys.sql_modules ON sys.views.object_id = sys.sql_modules.object_id
WHERE USER_NAME(OBJECTPROPERTY(sys.sql_modules.object_id, 'OwnerId')) = 'dbo'

--6)выбрать название триггера, имя таблицы, для которой определен триггер - для всех триггеров, владельцем которых
--является назначенный пользователь базы данных
SELECT name as [Имя триггера], OBJECT_NAME(parent_object_id) as [Имя таблицы] from sys.tables
WHERE type = 'TR' AND USER_NAME(OBJECTPROPERTY(object_id, 'OwnerId')) = 'dbo'

