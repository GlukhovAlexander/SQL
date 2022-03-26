USE TV_journalism

DELETE FROM REPORTS_SHOW;
DELETE FROM ANCHOR;
DELETE FROM REPORT_REPORTER;
DELETE FROM REPORTS_VIDEO;
DELETE FROM REPORTS_IMAGE;
DELETE FROM REPORTS;
DELETE FROM [EVENT];
DELETE FROM EMPLOYEE;
DELETE FROM JOB;
DELETE FROM CITY;
DELETE FROM COUNTRY;
DELETE FROM EVENT_TYPE;
DELETE FROM ORDER_AD;
DELETE FROM ADVERTISER;
DELETE FROM VIDEO;
DELETE FROM SHOW;
DELETE FROM TARGET_AUDIENCE;
DELETE FROM [IMAGE];

IF(IDENT_CURRENT('COUNTRY') > 1)
	DBCC CHECKIDENT (COUNTRY, RESEED, 0) WITH NO_INFOMSGS
IF(IDENT_CURRENT('CITY') > 1)
	DBCC CHECKIDENT (CITY, RESEED, 0) WITH NO_INFOMSGS
IF(IDENT_CURRENT('REPORTS') > 1)
	DBCC CHECKIDENT (REPORTS, RESEED, 0) WITH NO_INFOMSGS
IF(IDENT_CURRENT('EVENT') > 1)
	DBCC CHECKIDENT ([EVENT], RESEED, 0) WITH NO_INFOMSGS
IF(IDENT_CURRENT('EVENT_TYPE') > 1)
	DBCC CHECKIDENT (EVENT_TYPE, RESEED, 0) WITH NO_INFOMSGS
IF(IDENT_CURRENT('JOB') > 1)
	DBCC CHECKIDENT (JOB, RESEED, 0) WITH NO_INFOMSGS
IF(IDENT_CURRENT('EMPLOYEE') > 1)
	DBCC CHECKIDENT (EMPLOYEE, RESEED, 0) WITH NO_INFOMSGS
IF(IDENT_CURRENT('TARGET_AUDIENCE') > 1)
	DBCC CHECKIDENT (TARGET_AUDIENCE, RESEED, 0) WITH NO_INFOMSGS
IF(IDENT_CURRENT('SHOW') > 1)
	DBCC CHECKIDENT (SHOW, RESEED, 0) WITH NO_INFOMSGS
IF(IDENT_CURRENT('ORDER_AD') > 1)
	DBCC CHECKIDENT (ORDER_AD, RESEED, 0) WITH NO_INFOMSGS
IF(IDENT_CURRENT('ADVERTISER') > 1)
	DBCC CHECKIDENT (ADVERTISER, RESEED, 0) WITH NO_INFOMSGS
IF(IDENT_CURRENT('VIDEO') > 1)
	DBCC CHECKIDENT (VIDEO, RESEED, 0) WITH NO_INFOMSGS
IF(IDENT_CURRENT('IMAGE') > 1) 
	DBCC CHECKIDENT ([IMAGE], RESEED, 0) WITH NO_INFOMSGS
IF(IDENT_CURRENT('REPORTS_IMAGE') > 1)
	DBCC CHECKIDENT (REPORTS_IMAGE, RESEED, 0) WITH NO_INFOMSGS
IF(IDENT_CURRENT('REPORTS_VIDEO') > 1)
	DBCC CHECKIDENT (REPORTS_VIDEO, RESEED, 0) WITH NO_INFOMSGS
IF(IDENT_CURRENT('REPORT_REPORTER') > 1)
	DBCC CHECKIDENT (REPORT_REPORTER, RESEED, 0) WITH NO_INFOMSGS
IF(IDENT_CURRENT('ANCHOR') > 1)
	DBCC CHECKIDENT (ANCHOR, RESEED, 0) WITH NO_INFOMSGS
IF(IDENT_CURRENT('REPORTS_SHOW') > 1)
	DBCC CHECKIDENT (REPORTS_SHOW, RESEED, 0) WITH NO_INFOMSGS

INSERT INTO COUNTRY ([Name]) VALUES ('Российская Федерация'); 
INSERT INTO COUNTRY ([Name]) VALUES ('Соединенные штаты Америки'); 
INSERT INTO COUNTRY ([Name]) VALUES ('Великобритания'); 
INSERT INTO COUNTRY ([Name]) VALUES ('Германия'); 
INSERT INTO COUNTRY ([Name]) VALUES ('Франция'); 
INSERT INTO COUNTRY ([Name]) VALUES ('Украина'); 
INSERT INTO COUNTRY ([Name]) VALUES ('Индия'); 
INSERT INTO COUNTRY ([Name]) VALUES ('Китай'); 
INSERT INTO COUNTRY ([Name]) VALUES ('Япония'); 
INSERT INTO COUNTRY ([Name]) VALUES ('Бразилия'); 
INSERT INTO COUNTRY ([Name]) VALUES ('Испания'); 
INSERT INTO COUNTRY ([Name]) VALUES ('Австралия'); 
INSERT INTO COUNTRY ([Name]) VALUES ('Канада'); 

  

INSERT INTO CITY ([Name], Сountry_ID) VALUES ('Москва', 1); 
INSERT INTO CITY ([Name], Сountry_ID) VALUES ('Санкт-Петербург', 1); 
INSERT INTO CITY ([Name], Сountry_ID) VALUES ('Нью-Йорк', 2); 
INSERT INTO CITY ([Name], Сountry_ID) VALUES ('Чикаго', 2); 
INSERT INTO CITY ([Name], Сountry_ID) VALUES ('Сиэтл', 2); 
INSERT INTO CITY ([Name], Сountry_ID) VALUES ('Лос-Анджелес', 2); 
INSERT INTO CITY ([Name], Сountry_ID) VALUES ('Лондон', 3) 
INSERT INTO CITY ([Name], Сountry_ID) VALUES ('Манчестер', 3); 
INSERT INTO CITY ([Name], Сountry_ID) VALUES ('Берлин', 4); 
INSERT INTO CITY ([Name], Сountry_ID) VALUES ('Мюнхен', 4); 
INSERT INTO CITY ([Name], Сountry_ID) VALUES ('Париж', 5); 
INSERT INTO CITY ([Name], Сountry_ID) VALUES ('Марсель', 5); 
INSERT INTO CITY ([Name], Сountry_ID) VALUES ('Киев', 6); 
INSERT INTO CITY ([Name], Сountry_ID) VALUES ('Дели', 7); 
INSERT INTO CITY ([Name], Сountry_ID) VALUES ('Мумбаи', 7); 
INSERT INTO CITY ([Name], Сountry_ID) VALUES ('Пекин', 8); 
INSERT INTO CITY ([Name], Сountry_ID) VALUES ('Шанхай', 8); 
INSERT INTO CITY ([Name], Сountry_ID) VALUES ('Токио', 9); 
INSERT INTO CITY ([Name], Сountry_ID) VALUES ('Рио-де-Жанейро', 10); 
INSERT INTO CITY ([Name], Сountry_ID) VALUES ('Мадрид', 11); 
INSERT INTO CITY ([Name], Сountry_ID) VALUES ('Барселона', 11); 
INSERT INTO CITY ([Name], Сountry_ID) VALUES ('Сидней', 12); 
INSERT INTO CITY ([Name], Сountry_ID) VALUES ('Мельбурн', 12); 
INSERT INTO CITY ([Name], Сountry_ID) VALUES ('Торонто', 13); 

INSERT INTO EVENT_TYPE ([Description]) VALUES ('Политика');
INSERT INTO EVENT_TYPE ([Description]) VALUES ('Международная панорама');
INSERT INTO EVENT_TYPE ([Description]) VALUES ('Экономика и бизнес');
INSERT INTO EVENT_TYPE ([Description]) VALUES ('Общество');
INSERT INTO EVENT_TYPE ([Description]) VALUES ('Катастрофы');
INSERT INTO EVENT_TYPE ([Description]) VALUES ('Стихийные бедствия');
INSERT INTO EVENT_TYPE ([Description]) VALUES ('Криминал');
INSERT INTO EVENT_TYPE ([Description]) VALUES ('Спорт');
INSERT INTO EVENT_TYPE ([Description]) VALUES ('Культура');
INSERT INTO EVENT_TYPE ([Description]) VALUES ('Наука');



INSERT INTO [EVENT] ([Name], [Date], Сity_ID, [Type_ID], Danger) VALUES ('Открытие станции метро Международная', '01/03/2006', 1, 4, 3);  
INSERT INTO [EVENT] ([Name], [Date], Сity_ID, [Type_ID], Danger) VALUES ('Премия МУЗ-ТВ', '01/03/2006', 2, 4, 3); 
INSERT INTO [EVENT] ([Name], [Date], Сity_ID, [Type_ID], Danger) VALUES ('День города', '08/07/2020', 1, 4, 3);  
INSERT INTO [EVENT] ([Name], [Date], Сity_ID, [Type_ID], Danger) VALUES ('Саммит G8', '28/03/2006', 2, 1, 3);  
INSERT INTO [EVENT] ([Name], [Date], Сity_ID, [Type_ID], Danger) VALUES ('Всероссийский день бега в Санкт-Петербурге', '21/07/2020', 2, 8, 3);  
INSERT INTO [EVENT] ([Name], [Date], Сity_ID, [Type_ID], Danger) VALUES ('Вечер музыки фламенко', '15/07/2020', 1, 9, 3);  
INSERT INTO [EVENT] ([Name], [Date], Сity_ID, [Type_ID], Danger) VALUES ('День П.И.Чайковского', '07/07/2020', 1, 9, 3);  
INSERT INTO [EVENT] ([Name], [Date], Сity_ID, [Type_ID], Danger) VALUES ('Форум "Synergy Global Forum" 2020', '04/10/2020', 1, 3, 3);  
INSERT INTO [EVENT] ([Name], [Date], Сity_ID, [Type_ID], Danger) VALUES ('Беспорядки в Нью - Йорке', '07/07/2020', 3, 4, 1);  
INSERT INTO [EVENT] ([Name], [Date], Сity_ID, [Type_ID], Danger) VALUES ('Фильм "Неудобная правда" о потеплении', '01/03/2006', 3, 4, 3);  
INSERT INTO [EVENT] ([Name], [Date], Сity_ID, [Type_ID], Danger) VALUES ('Memorial Ceremony at the World Trade Center', '11/07/2020', 3, 4, 2);  
INSERT INTO [EVENT] ([Name], [Date], Сity_ID, [Type_ID], Danger) VALUES ('Brooklyn Book Festival', '16/07/2020', 3, 9, 3);  
INSERT INTO [EVENT] ([Name], [Date], Сity_ID, [Type_ID], Danger) VALUES ('Стрельба в Остине', '01/10/2020', 4, 7, 1);  
INSERT INTO [EVENT] ([Name], [Date], Сity_ID, [Type_ID], Danger) VALUES ('Октобрфест', '06/07/2020', 9, 9, 2);  
INSERT INTO [EVENT] ([Name], [Date], Сity_ID, [Type_ID], Danger) VALUES ('Гонка в Тюбингене', '08/08/2020', 10, 4, 3);  
INSERT INTO [EVENT] ([Name], [Date], Сity_ID, [Type_ID], Danger) VALUES ('Triathlon', '25/08/2020', 4, 8, 3);  
INSERT INTO [EVENT] ([Name], [Date], Сity_ID, [Type_ID], Danger) VALUES ('South Lake Union Block Party', '07/08/2020', 5, 4, 3);  
INSERT INTO [EVENT] ([Name], [Date], Сity_ID, [Type_ID], Danger) VALUES ('GridFWD 2020: Seattle', '07/10/2020', 5, 10, 3); 
INSERT INTO [EVENT] ([Name], [Date], Сity_ID, [Type_ID], Danger) VALUES ('HPN Global Partner Conference', '03/10/2020', 5, 3, 3);  
INSERT INTO [EVENT] ([Name], [Date], Сity_ID, [Type_ID], Danger) VALUES ('Spine Case Conference Series 2020', '02/10/2020', 5, 10, 3);  
INSERT INTO [EVENT] ([Name], [Date], Сity_ID, [Type_ID], Danger) VALUES ('Free family festival', '10/08/2020', 6, 4, 3);  
INSERT INTO [EVENT] ([Name], [Date], Сity_ID, [Type_ID], Danger) VALUES ('Забастовка в Лондоне', '05/07/2020', 7, 4, 1);  
INSERT INTO [EVENT] ([Name], [Date], Сity_ID, [Type_ID], Danger) VALUES ('Авиакатастрофа в Хитроу', '18/07/2020', 7, 5, 2); 
INSERT INTO [EVENT] ([Name], [Date], Сity_ID, [Type_ID], Danger) VALUES ('Финал Уимблдона 2020', '14/07/2020', 7, 8, 3);  
INSERT INTO [EVENT] ([Name], [Date], Сity_ID, [Type_ID], Danger) VALUES ('Массовое убийство на Трафальгарской площади', '04/07/2020', 7, 7, 1);  
INSERT INTO [EVENT] ([Name], [Date], Сity_ID, [Type_ID], Danger) VALUES ('Суперкубок Англии', '25/08/2020', 8, 8, 3);  
INSERT INTO [EVENT] ([Name], [Date], Сity_ID, [Type_ID], Danger) VALUES ('День музыки', '16/07/2020', 8, 9, 3); 
INSERT INTO [EVENT] ([Name], [Date], Сity_ID, [Type_ID], Danger) VALUES ('Ярмарка "Киевские контракты"', '31/08/2020', 13, 4, 3);  
INSERT INTO [EVENT] ([Name], [Date], Сity_ID, [Type_ID], Danger) VALUES ('Белые Ночи. Cosmos', '16/08/2020', 13, 4, 3);  
INSERT INTO [EVENT] ([Name], [Date], Сity_ID, [Type_ID], Danger) VALUES ('Экономический форум', '14/08/2020', 13, 3, 3);  
INSERT INTO [EVENT] ([Name], [Date], Сity_ID, [Type_ID], Danger) VALUES ('Пожар в Верховной Раде', '15/07/2020', 13, 5, 1);  
INSERT INTO [EVENT] ([Name], [Date], Сity_ID, [Type_ID], Danger) VALUES ('Суперкубок УЕФА', '16/08/2020', 21, 8, 3); 



INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('Открытие станции Международная', '01/03/2006', '00:03:07.000',1);    
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('Новое метро в Москве', '02/03/2006', '00:02:19.000', 1);    
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('Итоги премии МУЗ-ТВ 2006', '02/03/2006', '00:01:17.000', 2);    
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('МУЗ-ТВ 06 как проходила премия', '21/07/2006', '00:01:07.000', 2);    
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('Москва празднует День города', '08/07/2020', '00:02:33.000', 3);    
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('Наша любимая Москва', '08/07/2020', '00:02:27.000', 3);    
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('СПБ готовится принять G8', '04/03/2006', '00:02:11.000', 4);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('Саммит G8 пройдёт в Санкт-Петербурге', '01/03/2006', '00:04:31.000', 4);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('СПБ - бежим вместе!', '21/07/2020', '00:01:59.000', 5);    
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('Санкт-Петербург отмечает Всероссийский день бега', '21/07/2020', '00:02:45.000', 5);    
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('Флеменко как стиль жизни', '15/07/2020', '00:01:50.000', 6);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('Фламенко в столице России', '15/07/2020', '00:03:28.000', 6);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('П.И. Чайковский. Обратная сторона жизни', '07/07/2020', '00:02:02.000', 7);    
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('Симфония жизни великого композитора П.И.Чайковского', '07/07/2020', '00:05:07.000', 7);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('Synergy Global Forum в Москве', '07/09/2020', '00:04:51.000', 8);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('Форум Синергии. Как это было.', '04/09/2020', '00:02:02.000', 8);    
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('Разгромы в Нью-Йорке', '07/07/2020', '00:04:37.000', 9);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('Беспорядки в Нью-Йорке', '07/07/2020', '00:04:25.000', 9);    
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('Премьера фильма о глобальном потеплении', '02/03/2006', '00:04:38.000', 10);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('Вышел фильм о глобальном потеплении', '11/03/2006', '00:04:43.000', 10);    
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('Мир помнит. Нью-Йорк провел ежегодную церемонию памяти WTC', '11/07/2020', '00:03:18.000', 11);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('Власти Нью-Йорка организуют ежегодную церемонию памяти WTC', '11/07/2020', '00:05:57.000', 11);    
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('Книжная эпопея во время вируса. В Нью-Йорке прошел очередной ежегодный книжный фестиваль', '16/07/2020', '00:04:54.000', 12);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('Читаем книги, любим книги, книги - наша жизнь', '16/07/2020', '00:05:59.000', 12) ;   
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('Неизвестный открыл стрельбу по людям в техасском Остине', '01/07/2020', '00:04:43.000', 13);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('Полиция Чикаго ведет расследование стрельбы в Южном Остине', '01/05/2020', '00:01:23.000', 13);    
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('Фестиваль года! Октоберфест снова собирает толпы туристов', '06/10/2019', '00:05:56.000', 14);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('В Германии прошёл ежегодный фестиваль города - Октоберфест!', '06/10/2019', '00:04:55.000', 14);    
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('В Тюбингенских гонках резиновых уток приняло участие более 00 уточек', '08/08/2020', '00:05:50.000', 15);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('Тюбинген проводит ежегодную гонку резиновых уточек', '08/08/2020', '00:02:14.000', 15);    
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('Велоэтап на ДИВИ впервые на традиционном городском триатлоне в Чикаго', '25/08/2020', '00:02:02.000', 16);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('Триатлон в Чикаго на городских велосипедах', '25/08/2020', '00:02:26.000', 16);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('В Сиетле прошел ежегодный фестиваль “South Lake Union Block Party”', '07/08/2020', '00:02:49.000', 17);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('“South Lake Union BlockParty”, собирает тысячи жителей Сиетла', '07/08/2020', '00:01:03.000', 17);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('Новости науки: В Сиетле прошел “GridForward-2020”', '07/08/2020', '00:03:37.000', 18);    
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('Новейшие разработки в области энергетики представлены на “GridFWD-2020”', '07/08/2020', '00:01:39.000', 18);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('Про бизнес: В Сиетле прошла конференция “HPN GlobalPartner Conference”', '03/07/2020', '00:03:48.000', 19);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('Конференция HPN Global - с места событий', '03/10/2020', '00:04:51.000', 19);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('Новости науки: В Сиетле прошла конференция, посвященная медицине', '02/07/2020', '00:05:29.000', 20);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('События в науке: конференция “Spine Case Conference Series 2020” в Сиетле', '02/08/2020', '00:01:46.000', 20);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('Семейная конференция в Лос-Анджелесе собрала более 1000 семей', '10/07/2020', '00:03:04.000', 21);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('Лос-Анджелес отмечает день семьи', '10/08/2020', '00:01:45.000', 21);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('Лондон бастует против - с места событий', '05/07/2020', '00:04:08.000', 22);    
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('Жители Лондона выходят на площади', '05/07/2020', '00:01:48.000', 22);    
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('С места событий: Авиакатастрофа в Хитроу', '18/07/2020', '00:01:51.000', 23);    
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('Ужасающая трагедия Хитроу - о причинах', '18/07/2020', '00:02:57.000', 23);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('С места событий: Финал Уимблдона 2020 без зрителей', '14/07/2020', '00:03:38.000', 24);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('Спортивный репортаж о соревнованиях Уимблдон 2020', '14/07/2020', '00:02:41.000', 24);   
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('Трагедия на Трафальгарской площади. Полиция дает комментарии', '04/07/2020', '00:04:27.000', 25);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('Массовое убийство на Трафальгарской площади - с места событий', '04/07/2020', '00:03:54.000', 25);    
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('Новости спорта: В Манчестере близится к концу суперкубок Англии', '25/08/2020', '00:01:41.000', 26);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('Спортивный репортаж с места событий: суперкубок Англии', '25/08/2020', '00:03:59.000', 26);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('В Манчестере объявляется День музыки - о мероприятиях во время COVID-19', '16/07/2020', '00:03:44.000', 27);    
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('О причинах проведения Дня музыки в Манчестере', '16/07/2020', '00:03:45.000', 27);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('С места событий: О Киевской ярмарке “Киевские контракты”', '31/08/2020', '00:02:50.000', 28);    
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('Ярмарка “Киевские контракты” собрала весь город', '31/08/2020', '00:03:08.000', 28);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('Прямой репортаж: Белые ночи: Cosmos', '16/08/2020', '00:02:04.000', 29);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('120 тыс. кв. м. Арт-завода Платформа превратятся в галактику', '16/08/2020', '00:05:27.000', 29);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('Из мира экономики: о Киевском экономическом форуме - 2020', '14/08/2020', '00:02:50.000', 30);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('Экономический форум в Киеве - прямой репортаж', '14/08/2020', '00:02:01.000', 30);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('Украинская трагедия: В Верховной раде произошел пожар', '15/07/2020', '00:05:58.000', 31);    
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('Пожар в Верховной Раде - ужасающее происшествие. С места событий', '15/07/2020', '00:05:12.000', 31);    
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('Открытие Суперкубка УЕФА - спортивный репортаж', '16/08/2020', '00:02:20.000', 32);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('Новости спорта: Суперкубок в УЕФА - прямой репортаж с открытия', '16/08/2020', '00:03:32.000', 32); 


INSERT JOB(Job_Name) VALUES('Репортер');
INSERT JOB(Job_Name) VALUES('Ведущий');
INSERT JOB(Job_Name) VALUES('Опрератор');
INSERT JOB(Job_Name) VALUES('Звукорежиссер');
INSERT JOB(Job_Name) VALUES('Режиссер');


INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID) VALUES ('Софья', 'Валерьевна','Рябова', 1, 1); 
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID ) VALUES ('Снежана', 'Анатольевна','Игнатова', 1, 1);
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID ) VALUES ('Кристина', 'Даниловна ','Литвинова', 1, 2); 
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID ) VALUES ('Марья', 'Семеновна','Фадеева', 1, 2); 
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID ) VALUES ('Дарья', 'Олеговна',' Тимонова', 1, 3); 
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID ) VALUES ('Пётр', 'Александрович', 'Иванов', 1, 3); 
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID ) VALUES ('Бронислав', 'Егорович','Федоров', 1, 4); 
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID ) VALUES ('Павел', 'Тимофеевич','Новиков', 3, 4); 
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID ) VALUES ('Альфред', 'Семенович','Попов', 1, 2); 
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID ) VALUES ('Иван', 'Петрович','Петров', 1, 1); 
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID ) VALUES ('Серафим', 'Павлович','Орлов', 1, 6); 
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID ) VALUES ('Мария', 'Львовна','Абрамова', 1, 7); 
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID ) VALUES ('Елена', 'Константиновна','Черкашева', 1, 7); 
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID ) VALUES ('Софья', 'Алексеевна','Алексеевич', 1, 8); 
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID ) VALUES ('Василиса', 'Викторовна','Александрова', 1, 8); 
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID ) VALUES ('Светлана', 'Даниловна ','Логинова', 1, 9); 
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID ) VALUES ('Виктория', 'Семеновна','Пикало', 1, 9); 
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID ) VALUES ('Вячеслав', 'Васильевич','Заринов', 1, 11); 
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID ) VALUES ('Андрей', 'Семенович','Хохлов', 1, 12); 
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID ) VALUES ('Павел', 'Петрович','Московский', 1, 12); 
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID ) VALUES ('Ростислав', 'Петрович','Холодный', 1, 13); 
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID ) VALUES ('Мария', 'Михайловна','Вислова', 1, 14); 
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID ) VALUES ('Елена', 'Александровна','Репина', 1, 14); 
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID ) VALUES ('Полина', 'Борисовна','Вилко', 1, 15); 
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID ) VALUES ('Виктор', 'Кириллович','Паринов', 1, 15); 
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID ) VALUES ('Павел', 'Денисович','Карташев', 1,  16); 
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID ) VALUES ('Ярослав', 'Ярославович','Цветков', 1,  17); 
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID ) VALUES ('Александра', 'Олеговна','Ефремова', 1,  18); 
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID ) VALUES ('Вячеслав', 'Олегович','Винакуров', 1,  19); 
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID ) VALUES ('Иван', 'Степанович','Баринов', 1,  20); 
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID ) VALUES ('Екатерина', 'Петровна','Ромашина', 1,   21); 
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID ) VALUES ('Мария', 'Богдановна','Квинова', 1,  22); 
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID ) VALUES ('Светлана', 'Васильевна','Свинова', 1,  23); 
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID ) VALUES ('Николай', 'Николаевич','Каменев', 1,  24); 
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID ) VALUES ('Святослав', 'Игоревич','Лосев', 1, 24); 
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID ) VALUES ('Аполлинария', 'Денисовна','Мутко', 2, 1); 
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID ) VALUES ('Андриан', 'Степанович','Козлов ', 2, 1); 
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID ) VALUES ('Павел', 'Денисович','Андреев ', 2,  1); 
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID ) VALUES ('Иван', 'Ярославович','Соколов ', 2, 1); 
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID ) VALUES ('Элла', 'Олеговна','Калинина', 2, 1); 
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID ) VALUES ('Вячеслав', 'Олегович','Егоров', 3, 16); 
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID ) VALUES ('Александр', 'Феликсович','Кузнецов', 3, 15); 
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID ) VALUES ('Ярослав', 'Степанович','Михайлов', 3, 1); 
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID ) VALUES ('Екатерина', 'Семеновна','Ильина', 3, 2); 
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID ) VALUES ('Мария', 'Богдановна','Полякова', 3, 3); 
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID ) VALUES ('Светлана', 'Дмитриевна','Максимова', 3, 4); 
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID ) VALUES ('Михаил', 'Петрович','Морозов', 3, 5); 
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID ) VALUES ('Пётр', 'Александрович', 'Иванов', 3, 6); 
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID ) VALUES ('Вячеслав', 'Васильевич','Заринов', 3, 7); 
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID ) VALUES ('Серафим', 'Андреевич','Соколов', 3, 9); 
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID ) VALUES ('Ксения', 'Олеговна','Столповская', 3, 11); 
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID ) VALUES ('Иван', 'Петрович','Красен', 3,  13); 
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID ) VALUES ('Павел', 'Артёмович','Николаев', 3, 14); 
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID ) VALUES ('Василий', 'Романович','Захаров', 4,  21); 
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID ) VALUES ('Вячеслав', 'Игоревич','Зайцев', 4, 11); 
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID ) VALUES ('Олег', 'Кириллович','Соловьёв', 5, 10); 
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID ) VALUES ('Павел', 'Иванович','Борисов', 5, 2); 
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID ) VALUES ('Роман', 'Дмитриевич','Гусев', 5, 1); 


INSERT INTO TARGET_AUDIENCE (AVG_Age, [Description]) VALUES (51, 'Преобладание аудитогии дееспособного возраста и пожилой аудитории');
INSERT INTO TARGET_AUDIENCE (AVG_Age, [Description]) VALUES (35, 'Неработающие люди дееспособного возраста');
INSERT INTO TARGET_AUDIENCE (AVG_Age, [Description]) VALUES (50, 'Преобладание пожилой аудитории');
INSERT INTO TARGET_AUDIENCE (AVG_Age, [Description]) VALUES (30, 'Разноплановая аудитория');

INSERT INTO SHOW ([Name], [Start_Date], End_date, Age_limit, Raiting, Target_audience_ID) VALUES ('Вести', '01/01/2000',NULL, 12, 77, 1);
INSERT INTO SHOW ([Name], [Start_Date], End_date, Age_limit, Raiting, Target_audience_ID) VALUES ('Новости', '01/10/2005',NULL,  6, 47, 3);
INSERT INTO SHOW ([Name], [Start_Date], End_date, Age_limit, Raiting, Target_audience_ID) VALUES ('События зарубежных стран', '28/09/2004',NULL,  12, 35, 2);
INSERT INTO SHOW ([Name], [Start_Date], End_date, Age_limit, Raiting, Target_audience_ID) VALUES ('Культура и наука', '01/01/2004',NULL,  6, 68, 1);
INSERT INTO SHOW ([Name], [Start_Date], End_date, Age_limit, Raiting, Target_audience_ID) VALUES ('Происшествия', '10/07/2003',NULL,  18, 41, 4);
INSERT INTO SHOW ([Name], [Start_Date], End_date, Age_limit, Raiting, Target_audience_ID) VALUES ('Новости спорта', '10/07/2002',NULL,  12, 58, 4);
INSERT INTO SHOW ([Name], [Start_Date], End_date, Age_limit, Raiting, Target_audience_ID) VALUES ('Новости экологии', '01/02/2006','06/05/2006',  12, 11, 4);

INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:03:00.000', 1080,NULL); 
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:02:10.000', 1080,NULL);  
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:01:12.000', 1080,NULL);  
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:01:01.000', 1080,NULL);  
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:02:21.000', 720,NULL);  
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:02:19.000', 720,NULL);  
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:02:01.000', 1080,NULL);  
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:04:11.000', 1080,NULL);  
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:01:39.000', 1080,NULL);  
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:02:35.000', 1080,NULL);  
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:01:40.000', 1080,NULL);  
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:03:18.000', 1080,NULL);  
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:01:54.000', 480, 'https://www.youtub.com/wach?v=0Ad'); 
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:04:27.000', 1080,NULL);  
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:04:51.000', 1080,NULL);  
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:01:52.000', 1080,NULL);  
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:03:58.000', 1080,NULL);  
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:04:05.000', 1080,'https://www.youtub.com/wach?v=tijgFFG');  
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:04:18.000', 1080,NULL);  
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:04:23.000', 1080,NULL);  
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:06:08.000', 1080,NULL);  
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:05:05.000', 1080,NULL);  
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:04:42.000', 1080,'https://www.youtub.com/wach?=FGD334FgT');  
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:05:47.000', 1080,NULL); 
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:04:41.000', 1080,NULL);  
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:01:01.000', 1080,NULL);  
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:05:44.000', 720,NULL);  
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:04:51.000', 1080,NULL);  
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:05:34.000', 1080,NULL);  
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:02:11.000', 720,'https://www.youtub.com/wach?=fdgr555g');  
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:02:35.000', 1080,NULL);  
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:02:06.000', 1080,NULL);  
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:02:39.000', 1080,NULL);  
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:00:58.000', 1080,NULL); 
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:04:28.000', 1080,NULL);  
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:01:29.000', 1080,NULL); 
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:02:01.000', 1080,NULL);  
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:04:11.000', 1080,NULL);  
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:01:39.000', 1080,NULL);  
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:02:35.000', 1080,NULL);  
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:01:35.000', 1080,NULL);  
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:03:19.000', 1080,NULL);  
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:01:54.000', 720, 'https://www.youtub.com/wach?v=688760Ad'); 
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:04:27.000', 1080,NULL);  
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:04:51.000', 480,NULL);  
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:01:52.000', 1080,NULL);  
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:03:16.000', 1080,NULL);  
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:04:03.000', 1080,NULL);  
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:04:43.000', 720,'https://www.youtub.com/wach?=345');  
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:04:23.000', 1080, 'https://www.youtub.com/wach?=3fdrt7675u7dlHDXI');  
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:03:12.000', 1080,NULL);  
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:05:48.000', 1080,NULL);  
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:04:42.000', 720,NULL);  
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:05:47.000', 1080,NULL); 
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:04:45.000', 1080,NULL);  
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:03:13.000', 1080,NULL);  
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:03:56.000', 720,NULL);  
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:07:34.000', 1080,NULL);  
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:05:34.000', 1080,NULL);  
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:06:00.000', 1080,NULL);  
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:04:56.000', 1080,NULL);  
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:02:43.000', 720,'https://www.youtub.com/wach?=FGD334FgT');  
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:02:45.000', 1080,NULL);  
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:00:27.000', 1080,NULL); 
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:03:24.000', 1080,NULL);  
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:02:45.000', 720,NULL); 
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:02:34.000', 1080,NULL);  
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:04:53.000', 1080,NULL); 
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:02:28.000', 1080,NULL);  
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:07:48.000', 1080,NULL);  
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:06:42.000', 720,NULL);  
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:06:47.000', 1080,NULL); 
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:05:45.000', 1080,NULL);  
INSERT INTO VIDEO (Duration, Resolution, [Source]) VALUES ('00:03:53.000', 1080,NULL); 

INSERT INTO ADVERTISER ([Name], [Description], Telephone, E_mail) VALUES ('ABC Банк', 'Ваши средства всегда в сохранности','79176542323','ad@abc.ru');
INSERT INTO ADVERTISER ([Name], [Description], Telephone, E_mail) VALUES ('Восьмёрочка', 'Достоен каждый','79199549927','advertising@7ka.ru');
INSERT INTO ADVERTISER ([Name], [Description], Telephone, E_mail) VALUES ('Сбер', 'Всегда рядом','72366741289','addep@sber.ru');
INSERT INTO ADVERTISER ([Name], [Description], Telephone, E_mail) VALUES ('Карта халва', 'Лучший кешбэк','71126456379','xalva@xal.ru');
INSERT INTO ADVERTISER ([Name], [Description], Telephone, E_mail) VALUES ('GeekBrains', 'Онлайн образование','72356670000','replay@GB.com');
INSERT INTO ADVERTISER ([Name], [Description], Telephone, E_mail) VALUES ('Рокетбанк', 'Лучший онлайн банк','79154562911','ads@rocet.ru');
INSERT INTO ADVERTISER ([Name], [Description], Telephone, E_mail) VALUES ('Самсунг', 'Imagine the Possibilities','72886547692','ads@samsung.ru');
INSERT INTO ADVERTISER ([Name], [Description], Telephone, E_mail) VALUES ('Нотик','Имя в мобильном мире','72151223788','department_ad@ntk.ru');

INSERT INTO ORDER_AD (Advertiser_ID, Quantity, [Start_date], End_date, Video_ID, Show_ID, [Description]) VALUES (1, 1000,'01/01/2000','01/01/2003', 18, 1,'Фраза "Титульный спонсор показа"');
INSERT INTO ORDER_AD (Advertiser_ID, Quantity, [Start_date], End_date, Video_ID, Show_ID, [Description]) VALUES (2, 348,'08/10/2003','08/08/2004', 19,1,NULL);
INSERT INTO ORDER_AD (Advertiser_ID, Quantity, [Start_date], End_date, Video_ID, Show_ID, [Description]) VALUES (1, 689,'01/01/2005','01/01/2007', 20,1,'Логотип в правом углу');
INSERT INTO ORDER_AD (Advertiser_ID, Quantity, [Start_date], End_date, Video_ID, Show_ID, [Description]) VALUES (3, 700,'01/11/2010','01/11/2012', 21, 1,'Только видеовставка');
INSERT INTO ORDER_AD (Advertiser_ID, Quantity, [Start_date], End_date, Video_ID, Show_ID, [Description]) VALUES (4, 576,'01/01/2014','01/11/2016', 22,1,NULL);
INSERT INTO ORDER_AD (Advertiser_ID, Quantity, [Start_date], End_date, Video_ID, Show_ID, [Description]) VALUES (1, 1287,'25/05/2017','01/01/2021', 23,1,'Фраза "Титульный спонсор показа"');
INSERT INTO ORDER_AD (Advertiser_ID, Quantity, [Start_date], End_date, Video_ID, Show_ID, [Description]) VALUES (5, 1587,'01/01/2000','01/01/2005', 24, 4,NULL);
INSERT INTO ORDER_AD (Advertiser_ID, Quantity, [Start_date], End_date, Video_ID, Show_ID, [Description]) VALUES (6, 724,'01/10/2006','01/11/2008', 25, 4,NULL);
INSERT INTO ORDER_AD (Advertiser_ID, Quantity, [Start_date], End_date, Video_ID, Show_ID, [Description]) VALUES (5, 2000,'01/01/2009','01/01/2015', 26, 4,'Рекламная фраза ведущего');
INSERT INTO ORDER_AD (Advertiser_ID, Quantity, [Start_date], End_date, Video_ID, Show_ID, [Description]) VALUES (7, 987,'07/05/2015','09/10/2018', 27, 4,NULL);
INSERT INTO ORDER_AD (Advertiser_ID, Quantity, [Start_date], End_date, Video_ID, Show_ID, [Description]) VALUES (8, 1178,'06/12/2019','01/01/2022', 28, 4,NULL);

INSERT INTO [IMAGE] (Resolution, [Description]) VALUES (1080, 'Москва'); 
INSERT INTO [IMAGE] (Resolution, [Description]) VALUES (1080, 'Прививка'); 
INSERT INTO [IMAGE] (Resolution, [Description]) VALUES (1080, 'Экология'); 
INSERT INTO [IMAGE] (Resolution, [Description]) VALUES (1080, 'СПБ бежит'); 
INSERT INTO [IMAGE] (Resolution, [Description]) VALUES (1080, 'Фламенко'); 
INSERT INTO [IMAGE] (Resolution, [Description]) VALUES (1080, 'Чайковский'); 
INSERT INTO [IMAGE] (Resolution, [Description]) VALUES (1080, 'МТУСИ'); 
INSERT INTO [IMAGE] (Resolution, [Description]) VALUES (1080, 'Нью-Йорк'); 
INSERT INTO [IMAGE] (Resolution, [Description]) VALUES (1080, 'Разгромы'); 
INSERT INTO [IMAGE] (Resolution, [Description]) VALUES (1080, 'WTC'); 
INSERT INTO [IMAGE] (Resolution, [Description]) VALUES (1080, 'Книги'); 
INSERT INTO [IMAGE] (Resolution, [Description]) VALUES (1080, 'Октоберфест'); 
INSERT INTO [IMAGE] (Resolution, [Description]) VALUES (1080, 'Резиновые утки'); 
INSERT INTO [IMAGE] (Resolution, [Description]) VALUES (1080, 'Чикаго'); 
INSERT INTO [IMAGE] (Resolution, [Description]) VALUES (1080, 'Сиетл'); 
INSERT INTO [IMAGE] (Resolution, [Description]) VALUES (1080, 'Наука'); 
INSERT INTO [IMAGE] (Resolution, [Description]) VALUES (1080, 'Забастовка в Лондоне'); 


INSERT INTO REPORTS_IMAGE (Report_ID, Image_ID) VALUES (1,1);
INSERT INTO REPORTS_IMAGE (Report_ID, Image_ID) VALUES (2,1);
INSERT INTO REPORTS_IMAGE (Report_ID, Image_ID) VALUES (2,2);
INSERT INTO REPORTS_IMAGE (Report_ID, Image_ID) VALUES (3,1);
INSERT INTO REPORTS_IMAGE (Report_ID, Image_ID) VALUES (3,2);
INSERT INTO REPORTS_IMAGE (Report_ID, Image_ID) VALUES (8,4);
INSERT INTO REPORTS_IMAGE (Report_ID, Image_ID) VALUES (10,4);
INSERT INTO REPORTS_IMAGE (Report_ID, Image_ID) VALUES (11,5);
INSERT INTO REPORTS_IMAGE (Report_ID, Image_ID) VALUES (12,5);
INSERT INTO REPORTS_IMAGE (Report_ID, Image_ID) VALUES (13,6);
INSERT INTO REPORTS_IMAGE (Report_ID, Image_ID) VALUES (14,6);
INSERT INTO REPORTS_IMAGE (Report_ID, Image_ID) VALUES (15,7);
INSERT INTO REPORTS_IMAGE (Report_ID, Image_ID) VALUES (15,1);
INSERT INTO REPORTS_IMAGE (Report_ID, Image_ID) VALUES (17,8);
INSERT INTO REPORTS_IMAGE (Report_ID, Image_ID) VALUES (17,9);
INSERT INTO REPORTS_IMAGE (Report_ID, Image_ID) VALUES (18,8);
INSERT INTO REPORTS_IMAGE (Report_ID, Image_ID) VALUES (20,8);
INSERT INTO REPORTS_IMAGE (Report_ID, Image_ID) VALUES (21,10);
INSERT INTO REPORTS_IMAGE (Report_ID, Image_ID) VALUES (21,8);
INSERT INTO REPORTS_IMAGE (Report_ID, Image_ID) VALUES (23,11);
INSERT INTO REPORTS_IMAGE (Report_ID, Image_ID) VALUES (23,8);
INSERT INTO REPORTS_IMAGE (Report_ID, Image_ID) VALUES (24,11);
INSERT INTO REPORTS_IMAGE (Report_ID, Image_ID) VALUES (26,14);
INSERT INTO REPORTS_IMAGE (Report_ID, Image_ID) VALUES (27,12);
INSERT INTO REPORTS_IMAGE (Report_ID, Image_ID) VALUES (28,14);
INSERT INTO REPORTS_IMAGE (Report_ID, Image_ID) VALUES (29,13);
INSERT INTO REPORTS_IMAGE (Report_ID, Image_ID) VALUES (35,16);
INSERT INTO REPORTS_IMAGE (Report_ID, Image_ID) VALUES (43,17);
INSERT INTO REPORTS_IMAGE (Report_ID, Image_ID) VALUES (44,17);

INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (1,1);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (1,2);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (1,3);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (2,7);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (2,8);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (3,6);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (3,5);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (4,9);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (5,10);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (6,10);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (7,11);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (8,11);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (10,12);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (11,14);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (12,13);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (12,14);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (13,15);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (14,15);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (16,16);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (17,20);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (18,68);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (18,69);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (19,69);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (20,69);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (21,70);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (22,70);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (23,71);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (24,13);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (25,72);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (26,73);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (27,29);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (28,32);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (30,33);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (29,34);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (32,35);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (31,33);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (33,34);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (34,35);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (36,36);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (35,31);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (37,37);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (38,38);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (40,39);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (41,41);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (41,45);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (43,40);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (44,42);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (45,43);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (45,42);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (46,44);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (47,45);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (48,47);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (49,46);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (50,48);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (42,50);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (42,66);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (51,49);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (51,65);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (52,51);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (53,52);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (54,53);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (55,54);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (56,55);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (56,56);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (57,57);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (58,59);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (59,58);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (60,61);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (61,60);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (62,62);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (62,63);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (63,64);
INSERT INTO REPORTS_VIDEO (Report_ID, Video_ID) VALUES (64,67);

INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (1, 10, 43); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (2, 2, 43); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (3, 3, 44) ; 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (4, 9, 44); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (5, 2, 43); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (6, 1, 43); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (7, 3, 44); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (8, 4, 44); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (9, 4, 44); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (10, 4, 44); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (11, 9, 43); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (12, 3, 43); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (13, 2, 43); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (14, 2, 43); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (15, 10, 43); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (16, 1, 43); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (17, 5, 45); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (18, 6, 45); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (19, 6, 45); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (20, 6, 45); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (21, 5, 45); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (22, 6, 45); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (23, 5, 45); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (24, 5, 45);
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (25, 7, 46); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (26, 7, 46); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (27, 16, 50); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (28, 17, 46); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (29, 16, 50); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (30, 17, 50); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (31, 7, 50); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (32, 7, 46); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (33, 5, 47); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (34, 11, 47); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (35, 5, 47); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (36, 7, 47); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (37, 7, 47); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (38, 11, 47); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (39, 6, 47); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (40, 7, 47);
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (41, 5, 45); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (42, 11, 48); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (43, 12, 49); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (44, 13, 49); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (45, 12, 49); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (46, 12, 49); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (47, 13, 49); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (48, 13, 49); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (49, 12, 49); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (50, 12, 49); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (51, 14, 49); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (52, 15, 49); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (53, 15, 49); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (54, 14, 49); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (55, 21, 52); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (56, 21, 52); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (57, 21, 52); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (58, 21, 52); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (59, 21, 52); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (60, 21, 52); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (61, 21, 52); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (62, 21, 52); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (63, 30, 51); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (64, 30, 51); 

INSERT INTO ANCHOR (Employee_ID, Show_ID) VALUES (36,1);
INSERT INTO ANCHOR (Employee_ID, Show_ID) VALUES (36,2);
INSERT INTO ANCHOR (Employee_ID, Show_ID) VALUES (37,1);
INSERT INTO ANCHOR (Employee_ID, Show_ID) VALUES (37,2);
INSERT INTO ANCHOR (Employee_ID, Show_ID) VALUES (38,5);
INSERT INTO ANCHOR (Employee_ID, Show_ID) VALUES (39,4);
INSERT INTO ANCHOR (Employee_ID, Show_ID) VALUES (39,3);
INSERT INTO ANCHOR (Employee_ID, Show_ID) VALUES (40,6);

INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (1,1, '01-03-2006 16:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (1,2, '03-03-2006 20:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (2,2, '04-03-2006 20:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (3,2, '03-03-2006 20:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (3,1, '05-03-2006 16:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (4,2, '05-03-2006 20:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (5,6, '10-08-2020 18:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (6,1, '10-07-2020 16:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (7,1, '29-07-2020 16:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (7,4, '30-07-2020 12:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (8,2, '03-03-2006 20:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (9,2, '23-07-2020 20:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (10,1, '21-07-2020 16:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (10,5, '25-07-2020 22:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (11,3, '16-07-2020 15:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (12,3, '01-08-2020 15:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (13,5, '16-07-2020 22:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (14,3, '10-07-2020 15:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (15,3, '09-08-2020 15:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (16,3, '08-08-2020 15:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (16,2, '11-08-2020 20:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (17,3, '09-08-2020 15:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (18,3, '10-07-2020 15:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (19,2, '03-03-2006 20:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (19,7, '05-03-2006 20:00:00'); 
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (20,7, '03-03-2006 22:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (20,2, '04-03-2006 20:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (21,5, '15-07-2020 22:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (22,1, '11-07-2020 16:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (23,5, '17-07-2020 22:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (24,6, '17-07-2020 18:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (25,1, '01-08-2020 16:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (26,6, '02-06-2020 18:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (27,4, '10-10-2019 12:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (28,4, '11-10-2019 12:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (29,4, '23-08-2020 12:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (30,2, '25-08-2020 20:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (30,2, '10-08-2020 20:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (31,5, '28-08-2020 22:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (32,6, '27-08-2020 18:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (32,6, '26-08-2020 18:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (33,2, '01-09-2020 20:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (35,4, '10-09-2020 12:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (38,4, '01-08-2020 12:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (40,2, '29-08-2020 20:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (46,5, '30-08-2020 22:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (47,6, '03-09-2020 18:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (48,6, '05-09-2020 18:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (50,5, '30-08-2020 22:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (53,2, '26-08-2020 20:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (54,4, '31-07-2020 12:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (57,5, '17-08-2020 22:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (55,2, '01-09-2020 20:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (58,1, '20-08-2020 16:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (59,2, '23-08-2020 20:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (60,2, '03-09-2020 20:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (62,5, '04-09-2020 22:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (63,6, '31-08-2020 18:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (64,6, '30-08-2020 18:00:00'); 
