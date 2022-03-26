use TV_journalism
go





IF OBJECT_ID ('trig_salary_ins', 'TR') IS NOT NULL
   DROP TRIGGER trig_salary_ins
GO
CREATE TRIGGER trig_salary_ins ON REPORT_REPORTER
AFTER insert
AS


if 3 in (select Danger from REPORTS join inserted on inserted.Report_ID = REPORTS.Report_ID)
begin

update EMPLOYEE SET Salary = Salary*1.4 where Employee_ID in 
	(select REPORT_REPORTER.Reporter_id
	from REPORT_REPORTER
	join REPORTS on REPORT_REPORTER.Report_ID = REPORTS.Report_ID
	join (select inserted.Reporter_ID, count(*) as co from inserted
		join REPORTS on inserted.Report_ID = REPORTS.Report_ID 
		where reports.Danger = 3
		group by Reporter_ID) as tab on  tab.Reporter_ID = REPORT_REPORTER.Reporter_ID
	GROUP BY REPORT_REPORTER.Reporter_id, REPORTS.danger,co
	having REPORTS.Danger = 3 and ((count(*) % 5) - co) <= 0)
	and
	Employee_ID in (select inserted.Reporter_id from inserted)
	end
if 1 in (select Danger from REPORTS join inserted on inserted.Report_ID = REPORTS.Report_ID) or 2 in (select Danger from REPORTS join inserted on inserted.Report_ID = REPORTS.Report_ID)
begin
update EMPLOYEE SET Salary = Salary/1.4 where Employee_ID in 
	(select REPORT_REPORTER.Reporter_id
	from REPORT_REPORTER
	join REPORTS on REPORT_REPORTER.Report_ID = REPORTS.Report_ID
	join (select inserted.Reporter_ID, count(*) as co from inserted
		join REPORTS on inserted.Report_ID = REPORTS.Report_ID 
		where reports.Danger < 3
		group by Reporter_ID) as tab on  tab.Reporter_ID = REPORT_REPORTER.Reporter_ID
	where REPORTS.danger < 3
	GROUP BY REPORT_REPORTER.Reporter_id,co
	having ((count(*) % 5) - co) <= 0 and count(*) >= 5)
	and
	Employee_ID in
	(select REPORT_REPORTER.Reporter_id
	from REPORT_REPORTER
	join REPORTS on REPORT_REPORTER.Report_ID = REPORTS.Report_ID
	GROUP BY REPORT_REPORTER.Reporter_id, REPORTS.danger
	having REPORTS.Danger = 3 and count(*) >= 5)
	and
	Employee_ID in (select inserted.Reporter_id from inserted)
end



go

DROP TABLE IF EXISTS REPORT_REPORTER1

CREATE TABLE REPORT_REPORTER1
(
Report_ID int NOT NULL,
Reporter_ID int NOT NULL,
Cameraman_ID int NOT NULL,
)



INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID,Danger) VALUES ('xxx', '01/03/2006', '00:03:07.000',1, 3);    
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID,Danger) VALUES ('yyy', '02/03/2006', '00:02:19.000', 1, 3);    
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID,Danger) VALUES ('zzz', '02/03/2006', '00:01:17.000', 2, 3); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (65, 1, 43 ), (66, 1, 43),(67, 1, 43),(68, 1, 43 ), (69, 1, 43);
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (66, 1, 43); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (67, 1, 43) ; 





INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID,Danger) VALUES ('xxa', '01/03/2006', '00:03:07.000',1, 1);    
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID,Danger) VALUES ('yya', '02/03/2006', '00:02:19.000', 1, 2);    
INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID,Danger) VALUES ('zza', '02/03/2006', '00:01:17.000', 2, 1); 
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (68, 1, 43 ), (69, 1, 43), (70, 1, 43);
--INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (69, 1, 43); 
--INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (70, 1, 43) ; 
select * from REPORTS
select * from EMPLOYEE
select * from Rep_count





select *
	from REPORT_REPORTER1


select *
	from REPORT_REPORTER
	join REPORTS on REPORT_REPORTER.Report_ID = REPORTS.Report_ID
	order by Reporter_ID

select REPORT_REPORTER.Reporter_ID
	from REPORT_REPORTER
	join REPORTS on REPORT_REPORTER.Report_ID = REPORTS.Report_ID
	where REPORTS.Danger < 3
	GROUP BY REPORT_REPORTER.Reporter_ID
	having count(*) % 2 = 0


