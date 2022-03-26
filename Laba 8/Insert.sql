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
DELETE FROM SPECIALIZATION;
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
IF(IDENT_CURRENT('SPECIALIZATION') > 1)
	DBCC CHECKIDENT (SPECIALIZATION, RESEED, 0) WITH NO_INFOMSGS
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

INSERT INTO COUNTRY ([Name]) VALUES ('���������� ���������'); 
INSERT INTO COUNTRY ([Name]) VALUES ('����������� ����� �������'); 
INSERT INTO COUNTRY ([Name]) VALUES ('��������������'); 
INSERT INTO COUNTRY ([Name]) VALUES ('��������'); 
INSERT INTO COUNTRY ([Name]) VALUES ('�������'); 
INSERT INTO COUNTRY ([Name]) VALUES ('�������'); 
INSERT INTO COUNTRY ([Name]) VALUES ('�����'); 
INSERT INTO COUNTRY ([Name]) VALUES ('�����'); 
INSERT INTO COUNTRY ([Name]) VALUES ('������'); 
INSERT INTO COUNTRY ([Name]) VALUES ('��������'); 
INSERT INTO COUNTRY ([Name]) VALUES ('�������'); 
INSERT INTO COUNTRY ([Name]) VALUES ('���������'); 
INSERT INTO COUNTRY ([Name]) VALUES ('������'); 

  

INSERT INTO CITY VALUES ('������',1)
INSERT INTO CITY VALUES ('�����-���������',1)
INSERT INTO CITY VALUES ('���-����',2)
INSERT INTO CITY VALUES ('������',2)
INSERT INTO CITY VALUES ('�����',2)
INSERT INTO CITY VALUES ('���-��������',2)
INSERT INTO CITY VALUES ('������',3)
INSERT INTO CITY VALUES ('���������',3)
INSERT INTO CITY VALUES ('������',4)
INSERT INTO CITY VALUES ('������',4)
INSERT INTO CITY VALUES ('�����',5)
INSERT INTO CITY VALUES ('�������',5)
INSERT INTO CITY VALUES ('����',6)
INSERT INTO CITY VALUES ('����',7)
INSERT INTO CITY VALUES ('������',7)
INSERT INTO CITY VALUES ('�����',8)
INSERT INTO CITY VALUES ('������',8)
INSERT INTO CITY VALUES ('�����',9)
INSERT INTO CITY VALUES ('���-��-�������',10)
INSERT INTO CITY VALUES ('������',11)
INSERT INTO CITY VALUES ('���������',11)
INSERT INTO CITY VALUES ('������',12)
INSERT INTO CITY VALUES ('��������',12)
INSERT INTO CITY VALUES ('�������',13)

INSERT INTO EVENT_TYPE ([Description]) VALUES ('��������');
INSERT INTO EVENT_TYPE ([Description]) VALUES ('������������� ��������');
INSERT INTO EVENT_TYPE ([Description]) VALUES ('��������� � ������');
INSERT INTO EVENT_TYPE ([Description]) VALUES ('��������');
INSERT INTO EVENT_TYPE ([Description]) VALUES ('����������');
INSERT INTO EVENT_TYPE ([Description]) VALUES ('��������� ��������');
INSERT INTO EVENT_TYPE ([Description]) VALUES ('��������');
INSERT INTO EVENT_TYPE ([Description]) VALUES ('�����');
INSERT INTO EVENT_TYPE ([Description]) VALUES ('��������');
INSERT INTO EVENT_TYPE ([Description]) VALUES ('�����');



INSERT INTO [EVENT] ([Name], [Date], �ity_ID, [Type_ID], Danger) VALUES ('�������� ������� ����� �������������', '01/03/2006', 1, 4, 3);  
INSERT INTO [EVENT] ([Name], [Date], �ity_ID, [Type_ID], Danger) VALUES ('������ ���-��', '01/03/2006', 1, 4, 3); 
INSERT INTO [EVENT] ([Name], [Date], �ity_ID, [Type_ID], Danger) VALUES ('���� ������', '08/09/2020', 1, 4, 3);  
INSERT INTO [EVENT] ([Name], [Date], �ity_ID, [Type_ID], Danger) VALUES ('������ G8', '28/03/2006', 2, 1, 3);  
INSERT INTO [EVENT] ([Name], [Date], �ity_ID, [Type_ID], Danger) VALUES ('������������� ���� ���� � �����-����������', '21/07/2020', 2, 8, 3);  
INSERT INTO [EVENT] ([Name], [Date], �ity_ID, [Type_ID], Danger) VALUES ('����� ������ ��������', '15/07/2020', 1, 9, 3);  
INSERT INTO [EVENT] ([Name], [Date], �ity_ID, [Type_ID], Danger) VALUES ('���� �.�.�����������', '07/05/2020', 1, 9, 3);  
INSERT INTO [EVENT] ([Name], [Date], �ity_ID, [Type_ID], Danger) VALUES ('����� "Synergy Global Forum" 2020', '04/10/2020', 1, 3, 3);  
INSERT INTO [EVENT] ([Name], [Date], �ity_ID, [Type_ID], Danger) VALUES ('���������� � ��� - �����', '07/01/2019', 3, 4, 1);  
INSERT INTO [EVENT] ([Name], [Date], �ity_ID, [Type_ID], Danger) VALUES ('����� "��������� ������" � ����������', '01/03/2006', 3, 4, 3);  
INSERT INTO [EVENT] ([Name], [Date], �ity_ID, [Type_ID], Danger) VALUES ('Memorial Ceremony at the World Trade Center', '11/07/2020', 3, 4, 2);  
INSERT INTO [EVENT] ([Name], [Date], �ity_ID, [Type_ID], Danger) VALUES ('Brooklyn Book Festival', '16/04/2020', 3, 9, 3);  
INSERT INTO [EVENT] ([Name], [Date], �ity_ID, [Type_ID], Danger) VALUES ('�������� � ������', '01/10/2020', 4, 7, 1);  
INSERT INTO [EVENT] ([Name], [Date], �ity_ID, [Type_ID], Danger) VALUES ('����������', '06/10/2019', 4, 9, 2);  
INSERT INTO [EVENT] ([Name], [Date], �ity_ID, [Type_ID], Danger) VALUES ('Rubber duck race', '08/08/2020', 4, 4, 3);  
INSERT INTO [EVENT] ([Name], [Date], �ity_ID, [Type_ID], Danger) VALUES ('Triathlon', '25/08/2020', 4, 8, 3);  
INSERT INTO [EVENT] ([Name], [Date], �ity_ID, [Type_ID], Danger) VALUES ('South Lake Union Block Party', '07/08/2020', 5, 4, 3);  
INSERT INTO [EVENT] ([Name], [Date], �ity_ID, [Type_ID], Danger) VALUES ('GridFWD 2020: Seattle', '07/10/2020', 5, 10, 3); 
INSERT INTO [EVENT] ([Name], [Date], �ity_ID, [Type_ID], Danger) VALUES ('HPN Global Partner Conference', '03/10/2020', 5, 3, 3);  
INSERT INTO [EVENT] ([Name], [Date], �ity_ID, [Type_ID], Danger) VALUES ('Spine Case Conference Series 2020', '02/10/2020', 5, 10, 3);  
INSERT INTO [EVENT] ([Name], [Date], �ity_ID, [Type_ID], Danger) VALUES ('Free family festival', '10/08/2020', 6, 4, 3);  
INSERT INTO [EVENT] ([Name], [Date], �ity_ID, [Type_ID], Danger) VALUES ('���������� � �������', '05/07/2020', 7, 4, 1);  
INSERT INTO [EVENT] ([Name], [Date], �ity_ID, [Type_ID], Danger) VALUES ('�������������� � ������', '18/04/2020', 7, 5, 2); 
INSERT INTO [EVENT] ([Name], [Date], �ity_ID, [Type_ID], Danger) VALUES ('����� ��������� 2020', '14/07/2020', 7, 8, 3);  
INSERT INTO [EVENT] ([Name], [Date], �ity_ID, [Type_ID], Danger) VALUES ('�������� �������� �� �������������� �������', '04/07/2020', 7, 7, 1);  
INSERT INTO [EVENT] ([Name], [Date], �ity_ID, [Type_ID], Danger) VALUES ('���������� ������', '25/08/2020', 8, 8, 3);  
INSERT INTO [EVENT] ([Name], [Date], �ity_ID, [Type_ID], Danger) VALUES ('���� ������', '16/07/2020', 8, 9, 3); 
INSERT INTO [EVENT] ([Name], [Date], �ity_ID, [Type_ID], Danger) VALUES ('������� "�������� ���������"', '31/08/2020', 13, 4, 3);  
INSERT INTO [EVENT] ([Name], [Date], �ity_ID, [Type_ID], Danger) VALUES ('����� ����. Cosmos', '16/08/2020', 13, 4, 3);  
INSERT INTO [EVENT] ([Name], [Date], �ity_ID, [Type_ID], Danger) VALUES ('������������� �����', '14/08/2020', 13, 3, 3);  
INSERT INTO [EVENT] ([Name], [Date], �ity_ID, [Type_ID], Danger) VALUES ('����� � ��������� ����', '15/07/2020', 13, 5, 1);  
INSERT INTO [EVENT] ([Name], [Date], �ity_ID, [Type_ID], Danger) VALUES ('���������� ����', '16/08/2020', 16, 8, 3); 



INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('�������� ������� �������������', '01/03/2006', '00:03:07.000',1);    
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('����� ����� � ������', '02/03/2006', '00:02:19.000', 1);    
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('����� ������ ���-�� 2006', '02/03/2006', '00:01:17.000', 2);    
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('���-�� 06 ��� ��������� ������', '21/03/2006', '00:01:07.000', 2);    
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('������ ��������� ���� ������', '08/09/2020', '00:02:33.000', 3);    
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('���� ������� ������', '08/02/2020', '00:02:27.000', 3);    
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('��� ��������� ������� G8', '04/03/2006', '00:02:11.000', 4);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('������ G8 ������ � �����-����������', '01/03/2006', '00:04:31.000', 4);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('��� - ����� ������!', '21/07/2020', '00:01:59.000', 5);    
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('�����-��������� �������� ������������� ���� ����', '21/07/2020', '00:02:45.000', 5);    
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('�������� ��� ����� �����', '15/10/2019', '00:01:50.000', 6);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('�������� � ������� ������', '15/10/2019', '00:03:28.000', 6);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('�.�. ����������. �������� ������� �����', '07/05/2020', '00:02:02.000', 7);    
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('�������� ����� �������� ����������� �.�.�����������', '07/05/2020', '00:05:07.000', 7);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('Synergy Global Forum � ������', '07/11/2019', '00:04:51.000', 8);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('����� ��������. ��� ��� ����.', '04/11/2019', '00:02:02.000', 8);    
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('�������� � ���-�����', '07/01/2019', '00:04:37.000', 9);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('���������� � ���-�����', '07/01/2019', '00:04:25.000', 9);    
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('�������� ������ � ���������� ����������', '02/03/2006', '00:04:38.000', 10);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('����� ����� � ���������� ����������', '11/03/2006', '00:04:43.000', 10);    
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('��� ������. ���-���� ������ ��������� ��������� ������ WTC', '11/07/2020', '00:03:18.000', 11);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('������ ���-����� ���������� ��������� ��������� ������ WTC', '11/07/2020', '00:05:57.000', 11);    
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('������� ������ �� ����� ������. � ���-����� ������ ��������� ��������� ������� ���������', '16/04/2020', '00:04:54.000', 12);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('������ �����, ����� �����, ����� - ���� �����', '16/04/2020', '00:05:59.000', 12) ;   
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('����������� ������ �������� �� ����� � ��������� ������', '01/07/2020', '00:04:43.000', 13);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('������� ������ ����� ������������� �������� � ����� ������', '01/05/2020', '00:01:23.000', 13);    
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('��������� ����! ����������� ����� �������� ����� ��������', '06/10/2019', '00:05:56.000', 14);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('��������� ��������� - �����������!', '06/10/2019', '00:04:55.000', 14);    
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('� ������������ ������ ��������� ���� ������� ������� ����� 00 ������', '08/08/2020', '00:05:50.000', 15);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('�������� �������� ��������� ����� ��������� ������', '08/08/2020', '00:02:14.000', 15);    
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('�������� �� ���� ������� �� ������������ ��������� ��������� � ������', '25/08/2020', '00:02:02.000', 16);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('�������� � ������ �� ��������� �����������', '25/08/2020', '00:02:26.000', 16);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('� ������ ������ ��������� ��������� �South Lake Union Block Party�', '07/08/2020', '00:02:49.000', 17);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('�South Lake Union BlockParty�, �������� ������ ������� ������', '07/08/2020', '00:01:03.000', 17);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('������� �����: � ������ ������ �GridForward-2020�', '07/08/2020', '00:03:37.000', 18);    
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('�������� ���������� � ������� ���������� ������������ �� �GridFWD-2020�', '07/08/2020', '00:01:39.000', 18);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('��� ������: � ������ ������ ����������� �HPN GlobalPartner Conference�', '03/07/2020', '00:03:48.000', 19);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('����������� HPN Global - � ����� �������', '03/10/2020', '00:04:51.000', 19);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('������� �����: � ������ ������ �����������, ����������� ��������', '02/07/2020', '00:05:29.000', 20);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('������� � �����: ����������� �Spine Case Conference Series 2020� � ������', '02/08/2020', '00:01:46.000', 20);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('�������� ����������� � ���-��������� ������� ����� 1000 �����', '10/07/2020', '00:03:04.000', 21);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('���-�������� �������� ���� �����', '10/08/2020', '00:01:45.000', 21);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('������ ������� ������ BLM - � ����� �������', '05/07/2020', '00:04:08.000', 22);    
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('������ ������� ������� ������ BLM', '05/07/2020', '00:01:48.000', 22);    
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('� ����� �������: �������������� � ������', '18/04/2020', '00:01:51.000', 23);    
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('��������� �������� ������ - � ��������', '18/04/2020', '00:02:57.000', 23);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('� ����� �������: ����� ��������� 2020 ��� ��������', '14/07/2020', '00:03:38.000', 24);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('���������� �������� � ������������� �������� 2020', '14/07/2020', '00:02:41.000', 24);   
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('�������� �� �������������� �������. ������� ���� �����������', '04/07/2020', '00:04:27.000', 25);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('�������� �������� �� �������������� ������� - � ����� �������', '04/07/2020', '00:03:54.000', 25);    
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('������� ������: � ���������� �������� � ����� ���������� ������', '25/08/2020', '00:01:41.000', 26);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('���������� �������� � ����� �������: ���������� ������', '25/08/2020', '00:03:59.000', 26);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('� ���������� ����������� ���� ������ - � ������������ �� ����� COVID-19', '16/07/2020', '00:03:44.000', 27);    
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('� �������� ���������� ��� ������ � ����������', '16/07/2020', '00:03:45.000', 27);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('� ����� �������: � �������� ������� ��������� ����������', '31/08/2020', '00:02:50.000', 28);    
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('������� ��������� ���������� ������� ���� �����', '31/08/2020', '00:03:08.000', 28);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('������ ��������: ����� ����: Cosmos', '16/08/2020', '00:02:04.000', 29);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('120 ���. ��. �. ���-������ ��������� ����������� � ���������', '16/08/2020', '00:05:27.000', 29);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('�� ���� ���������: � �������� ������������� ������ - 2020', '14/08/2020', '00:02:50.000', 30);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('������������� ����� � ����� - ������ ��������', '14/08/2020', '00:02:01.000', 30);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('���������� ��������: � ��������� ���� ��������� �����', '15/07/2020', '00:05:58.000', 31);    
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('����� � ��������� ���� - ��������� ������������. � ����� �������', '15/07/2020', '00:05:12.000', 31);    
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('�������� ���������� ���� - ���������� ��������', '16/08/2020', '00:02:20.000', 32);     
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID) VALUES ('������� ������: ���������� � ���� - ������ �������� � ��������', '16/08/2020', '00:03:32.000', 32); 


INSERT JOB(Job_Name) VALUES('��������');
INSERT JOB(Job_Name) VALUES('�������');
INSERT JOB(Job_Name) VALUES('���������');
INSERT JOB(Job_Name) VALUES('�������������');
INSERT JOB(Job_Name) VALUES('��������');

INSERT SPECIALIZATION VALUES('�������� � ��������');
INSERT SPECIALIZATION VALUES('�������� � ��������');
INSERT SPECIALIZATION VALUES('��������, ��������� � ������');
INSERT SPECIALIZATION VALUES('�����');
INSERT SPECIALIZATION VALUES('���������� � ��������');
INSERT SPECIALIZATION VALUES('�����');

INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID, Spec_ID, Salary) VALUES ('�����', '����������','������', 1, 1, 1, 1801);   
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID, SPEC_ID, Salary) VALUES ('�������', '�����������','��������', 1, 1, 2, 2540);  
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID, SPEC_ID, Salary) VALUES ('��������', '��������� ','���������', 1, 1, 3, 2170);   
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID, SPEC_ID, Salary) VALUES ('�����', '���������','�������', 1, 2, 4, 1760);   
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID, SPEC_ID, Salary) VALUES ('�����', '��������',' ��������', 1, 3, 2, 1900);   
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID, SPEC_ID, Salary) VALUES ('ϸ��', '�������������', '������', 1, 3, 1, 2000);   
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID, SPEC_ID, Salary) VALUES ('���������', '��������','�������', 1, 4, 4, 2500);   
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID, SPEC_ID, Salary) VALUES ('�����', '����������','�������', 3, 4, 5, 2050);   
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID, SPEC_ID, Salary) VALUES ('�������', '���������','�����', 1, 5, 3, 2200);   
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID, SPEC_ID, Salary) VALUES ('����', '��������','������', 1, 5, 6, 2500);   
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID, SPEC_ID, Salary) VALUES ('�������', '��������','�����', 1, 6, 2, 2050);   
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID, SPEC_ID, Salary) VALUES ('�����', '�������','��������', 1, 7, 5, 1700);   
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID, SPEC_ID, Salary) VALUES ('�����', '��������������','���������', 1, 7, 4, 1900);   
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID, SPEC_ID, Salary) VALUES ('�����', '����������','����������', 1, 8, 2, 2200);   
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID, SPEC_ID, Salary) VALUES ('��������', '����������','������������', 1, 8, 4, 2250);   
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID, SPEC_ID, Salary) VALUES ('��������', '��������� ','��������', 1, 9, 2, 1990);   
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID, SPEC_ID, Salary) VALUES ('��������', '���������','������', 1, 9, 1, 1870);   
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID, SPEC_ID, Salary) VALUES ('��������', '����������','�������', 1, 11, 4, 1900);   
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID, SPEC_ID, Salary) VALUES ('������', '���������','������', 1, 12, 1, 2100);   
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID, SPEC_ID, Salary) VALUES ('�����', '��������','����������', 1, 12, 4, 2300);   
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID, SPEC_ID, Salary) VALUES ('���������', '��������','��������', 1, 13, 3, 1500);   
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID, SPEC_ID, Salary) VALUES ('�����', '����������','�������', 1, 14, 2, 2450);   
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID, SPEC_ID, Salary) VALUES ('�����', '�������������','������', 1, 14, 1, 2100);   
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID, SPEC_ID, Salary) VALUES ('������', '���������','�����', 1, 15, 4, 2600);   
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID, SPEC_ID, Salary) VALUES ('������', '����������','�������', 1, 15, 6, 2300);   
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID, SPEC_ID, Salary) VALUES ('�����', '���������','��������', 1,  16, 4, 2500);   
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID, SPEC_ID, Salary) VALUES ('�������', '�����������','�������', 1,  17, 6, 2100);   
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID, SPEC_ID, Salary) VALUES ('����������', '��������','��������', 1,  18, 6, 2200);   
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID, SPEC_ID, Salary) VALUES ('��������', '��������','���������', 1,  19, 3, 1800);   
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID, SPEC_ID, Salary) VALUES ('����', '����������','�������', 1,  20, 4, 2000);   
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID, SPEC_ID, Salary) VALUES ('���������', '��������','��������', 1,   21, 1, 1900);   
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID, SPEC_ID, Salary) VALUES ('�����', '����������','�������', 1,  22, 3, 2600);   
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID, SPEC_ID, Salary) VALUES ('��������', '����������','�������', 1,  23, 4, 2200);   
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID, SPEC_ID, Salary) VALUES ('�������', '����������','�������', 1,  24, 5, 2150);   
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID, SPEC_ID, Salary) VALUES ('���������', '��������','�����', 1, 24, 6, 2050);   
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID, SPEC_ID, Salary) VALUES ('�����������', '���������','�����', 2, 1,NULL, 1980);    
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID, SPEC_ID, Salary) VALUES ('�������', '����������','������ ', 2, 1,NULL, 2010);    
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID, SPEC_ID, Salary) VALUES ('�����', '���������','������� ', 2, 1,NULL, 2105);    
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID, SPEC_ID, Salary) VALUES ('����', '�����������','������� ', 2, 1,NULL, 2078);    
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID, SPEC_ID, Salary) VALUES ('����', '��������','��������', 2, 1,NULL, 2360);   
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID, SPEC_ID, Salary) VALUES ('��������', '��������','������', 3, 16,NULL, 2000);    
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID, SPEC_ID, Salary) VALUES ('���������', '����������','��������', 3, 15,NULL, 2400);    
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID, SPEC_ID, Salary) VALUES ('�������', '����������','��������', 3, 1,NULL, 1780);    
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID, SPEC_ID, Salary) VALUES ('���������', '���������','������', 3, 2,NULL, 2300);    
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID, SPEC_ID, Salary) VALUES ('�����', '����������','��������', 3, 3,NULL, 2200);    
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID, SPEC_ID, Salary) VALUES ('��������', '����������','���������', 3, 4,NULL, 1900);    
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID, SPEC_ID, Salary) VALUES ('������', '��������','�������', 3, 5,NULL, 2015);    
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID, SPEC_ID, Salary) VALUES ('ϸ��', '�������������', '������', 3, 6,NULL, 2201);    
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID, SPEC_ID, Salary) VALUES ('��������', '����������','�������', 3, 7,NULL, 2200);    
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID, SPEC_ID, Salary) VALUES ('�������', '���������','�������', 3, 9,NULL, 1800);    
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID, SPEC_ID, Salary) VALUES ('������', '��������','�����������', 3, 11,NULL, 1600);    
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID, SPEC_ID, Salary) VALUES ('����', '��������','������', 3,  13,NULL, 1900);    
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID, SPEC_ID, Salary) VALUES ('�����', '��������','��������', 3, 14,NULL, 1550);    
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID, SPEC_ID, Salary) VALUES ('�������', '���������','�������', 4,  21,NULL, 2000);      
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID, SPEC_ID, Salary) VALUES ('��������', '��������','������', 4, 11,NULL, 1900);    
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID, SPEC_ID, Salary) VALUES ('����', '����������','��������', 5, 10,NULL, 1980);    
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID, SPEC_ID, Salary) VALUES ('�����', '��������','�������', 5, 2,NULL, 2000);    
INSERT INTO EMPLOYEE (First_name, Middle_Name, Last_name, Job_ID, City_ID, SPEC_ID, Salary) VALUES ('�����', '����������','�����', 5, 1,NULL, 1701);  


INSERT INTO TARGET_AUDIENCE (AVG_Age, [Description]) VALUES (51, '������ ������������ � ������� ���������');
INSERT INTO TARGET_AUDIENCE (AVG_Age, [Description]) VALUES (35, '������������ ���� ������������� ��������');
INSERT INTO TARGET_AUDIENCE (AVG_Age, [Description]) VALUES (50, '������ ������� ���������');
INSERT INTO TARGET_AUDIENCE (AVG_Age, [Description]) VALUES (30, '������������� ���������');

INSERT INTO SHOW ([Name], [Start_Date], End_date, Age_limit, Raiting, Target_audience_ID) VALUES ('�����', '01/01/2000',NULL, 12, 77, 1);
INSERT INTO SHOW ([Name], [Start_Date], End_date, Age_limit, Raiting, Target_audience_ID) VALUES ('�������', '01/10/2005',NULL,  6, 47, 3);
INSERT INTO SHOW ([Name], [Start_Date], End_date, Age_limit, Raiting, Target_audience_ID) VALUES ('������� ���������� �����','28/09/2004',NULL,  12, 35, 2);
INSERT INTO SHOW ([Name], [Start_Date], End_date, Age_limit, Raiting, Target_audience_ID) VALUES ('�������� � �����', '01/01/2004',NULL,  6, 68, 1);
INSERT INTO SHOW ([Name], [Start_Date], End_date, Age_limit, Raiting, Target_audience_ID) VALUES ('������������',  '10/07/2003',NULL,  18, 41, 4);
INSERT INTO SHOW ([Name], [Start_Date], End_date, Age_limit, Raiting, Target_audience_ID) VALUES ('������� ������', '10/07/2002',NULL,  12, 58, 4);


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

INSERT INTO ADVERTISER ([Name], [Description], Telephone, E_mail) VALUES ('ABC ����', '���� �������� ������ � �����������','79176542323','ad@abc.ru');
INSERT INTO ADVERTISER ([Name], [Description], Telephone, E_mail) VALUES ('����������', '������� ������','79199549927','advertising@7ka.ru');
INSERT INTO ADVERTISER ([Name], [Description], Telephone, E_mail) VALUES ('����', '������ �����','72366741289','addep@sber.ru');
INSERT INTO ADVERTISER ([Name], [Description], Telephone, E_mail) VALUES ('����� �����', '������ ������','71126456379','xalva@xal.ru');
INSERT INTO ADVERTISER ([Name], [Description], Telephone, E_mail) VALUES ('GeekBrains', '������ �����������','72356670000','replay@GB.com');
INSERT INTO ADVERTISER ([Name], [Description], Telephone, E_mail) VALUES ('���������', '������ ������ ����','79154562911','ads@rocet.ru');
INSERT INTO ADVERTISER ([Name], [Description], Telephone, E_mail) VALUES ('�������', 'Imagine the Possibilities','72886547692','ads@samsung.ru');
INSERT INTO ADVERTISER ([Name], [Description], Telephone, E_mail) VALUES ('�����','��� � ��������� ����','72151223788','department_ad@ntk.ru');

INSERT INTO ORDER_AD (Advertiser_ID, Quantity, [Start_date], End_date, Video_ID, Show_ID, [Description]) VALUES (1, 1000,'01/01/2000','01/01/2003', 18, 1,'����� "��������� ������� ������"');
INSERT INTO ORDER_AD (Advertiser_ID, Quantity, [Start_date], End_date, Video_ID, Show_ID, [Description]) VALUES (2, 348,'08/10/2003','08/08/2004', 19,1,NULL);
INSERT INTO ORDER_AD (Advertiser_ID, Quantity, [Start_date], End_date, Video_ID, Show_ID, [Description]) VALUES (1, 689,'01/01/2005','01/01/2007', 20,1,'������� � ������ ����');
INSERT INTO ORDER_AD (Advertiser_ID, Quantity, [Start_date], End_date, Video_ID, Show_ID, [Description]) VALUES (3, 700,'01/11/2010','01/11/2012', 21, 1,'������ ������������');
INSERT INTO ORDER_AD (Advertiser_ID, Quantity, [Start_date], End_date, Video_ID, Show_ID, [Description]) VALUES (4, 576,'01/01/2014','01/11/2016', 22,1,NULL);
INSERT INTO ORDER_AD (Advertiser_ID, Quantity, [Start_date], End_date, Video_ID, Show_ID, [Description]) VALUES (1, 1287,'25/05/2017','01/01/2021', 23,1,'����� "��������� ������� ������"');
INSERT INTO ORDER_AD (Advertiser_ID, Quantity, [Start_date], End_date, Video_ID, Show_ID, [Description]) VALUES (5, 1587,'01/01/2000','01/01/2005', 24, 4,NULL);
INSERT INTO ORDER_AD (Advertiser_ID, Quantity, [Start_date], End_date, Video_ID, Show_ID, [Description]) VALUES (6, 724,'01/10/2006','01/11/2008', 25, 4,NULL);
INSERT INTO ORDER_AD (Advertiser_ID, Quantity, [Start_date], End_date, Video_ID, Show_ID, [Description]) VALUES (5, 2000,'01/01/2009','01/01/2015', 26, 4,'��������� ����� ��������');
INSERT INTO ORDER_AD (Advertiser_ID, Quantity, [Start_date], End_date, Video_ID, Show_ID, [Description]) VALUES (7, 987,'07/05/2015','09/10/2018', 27, 4,NULL);
INSERT INTO ORDER_AD (Advertiser_ID, Quantity, [Start_date], End_date, Video_ID, Show_ID, [Description]) VALUES (8, 1178,'06/12/2019','01/01/2022', 28, 4,NULL);

INSERT INTO [IMAGE] (Resolution, [Description]) VALUES (1080, '������'); 
INSERT INTO [IMAGE] (Resolution, [Description]) VALUES (1080, '��������'); 
INSERT INTO [IMAGE] (Resolution, [Description]) VALUES (1080, '��������'); 
INSERT INTO [IMAGE] (Resolution, [Description]) VALUES (1080, '��� �����'); 
INSERT INTO [IMAGE] (Resolution, [Description]) VALUES (1080, '��������'); 
INSERT INTO [IMAGE] (Resolution, [Description]) VALUES (1080, '����������'); 
INSERT INTO [IMAGE] (Resolution, [Description]) VALUES (1080, '�����'); 
INSERT INTO [IMAGE] (Resolution, [Description]) VALUES (1080, '���-����'); 
INSERT INTO [IMAGE] (Resolution, [Description]) VALUES (1080, '��������'); 
INSERT INTO [IMAGE] (Resolution, [Description]) VALUES (1080, 'WTC'); 
INSERT INTO [IMAGE] (Resolution, [Description]) VALUES (1080, '�����'); 
INSERT INTO [IMAGE] (Resolution, [Description]) VALUES (1080, '�����������'); 
INSERT INTO [IMAGE] (Resolution, [Description]) VALUES (1080, '��������� ����'); 
INSERT INTO [IMAGE] (Resolution, [Description]) VALUES (1080, '������'); 
INSERT INTO [IMAGE] (Resolution, [Description]) VALUES (1080, '�����'); 
INSERT INTO [IMAGE] (Resolution, [Description]) VALUES (1080, '�����'); 
INSERT INTO [IMAGE] (Resolution, [Description]) VALUES (1080, '������'); 

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

INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (1, 1, 43 ); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (2, 2, 43); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (3, 3, 43) ; 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (4, 3, 43); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (5, 2, 43); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (6, 1, 43); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (7, 1, 43); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (8, 1, 44); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (9, 4, 44); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (10, 4, 44); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (11, 2, 44); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (12, 2, 44); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (13, 2, 43); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (14, 2, 44); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (15, 3, 43); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (16, 3, 44); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (17, 5, 45); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (18, 6, 45); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (19, 6, 45); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (20, 6, 45); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (21, 5, 45); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (22, 6, 45); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (23, 5, 45); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (24, 5, 45);
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (25, 8, 46); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (26, 8, 46); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (27, 16, 50); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (29, 16, 50); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (30, 17, 50); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (31, 18, 50); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (32, 7, 46); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (33, 9, 47); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (34, 9, 47); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (35, 10, 47); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (36, 10, 47); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (37, 9, 47); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (38, 9, 47); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (39, 10, 47); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (40, 10, 47);
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (41, 5, 45); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (42, 11, 48); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (45, 12, 49); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (46, 12, 49); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (47, 13, 49); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (48, 13, 49); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (49, 12, 49); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (50, 12, 49); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (51, 15, 49); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (52, 15, 49); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (53, 14, 49); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (54,14, 49); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (55, 21, 52); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (56, 21, 52); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (57, 21, 52); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (58, 21, 52); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (59, 21, 52); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (60, 21, 52); 
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
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (5,6, '10-09-2020 18:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (6,1, '14-02-2020 16:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (7,1, '29-07-2020 16:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (7,4, '30-07-2020 12:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (8,2, '03-03-2006 20:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (9,2, '23-07-2020 20:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (10,1, '21-07-2020 16:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (10,5, '25-07-2020 22:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (11,3, '16-10-2019 15:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (12,3, '17-10-2019 15:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (13,5, '16-05-2020 22:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (14,3, '10-05-2020 15:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (15,3, '09-08-2020 15:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (16,3, '08-08-2020 15:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (16,2, '11-08-2020 20:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (17,3, '09-01-2019 15:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (18,3, '10-01-2019 15:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (19,2, '03-03-2006 20:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (20,5, '03-03-2006 22:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (20,2, '04-03-2006 20:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (21,5, '15-07-2020 22:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (22,1, '11-07-2020 16:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (23,5, '17-07-2020 22:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (24,6, '17-07-2020 18:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (25,1, '01-08-2020 16:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (26,6, '02-06-2020 18:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (27,4, '10-10-2019 12:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (28,4, '11-10-2019 12:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (29,4, '23-04-2020 12:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (30,2, '25-08-2020 20:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (30,2, '10-08-2020 20:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (31,5, '28-08-2020 22:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (32,6, '27-08-2020 18:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (32,6, '26-08-2020 18:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (33,2, '01-09-2020 20:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (35,4, '10-09-2020 12:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (38,4, '01-08-2020 12:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (40,2, '29-08-2020 20:00:00');  
INSERT INTO REPORTS_SHOW (Report_ID, Show_ID,[Date]) VALUES (46,5, '30-04-2020 22:00:00');  
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

