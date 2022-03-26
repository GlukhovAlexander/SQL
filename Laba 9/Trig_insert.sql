--«а каждые 10 сюжетов повышенной опасности зарплата повышаетс€ в 1.4 раза, 
--за 10 обычной понижаетс€ в 1.4 раза, если была повышена.

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
	having REPORTS.Danger = 3 and ((count(*) % 10) - co) <= 0)
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
	having ((count(*) % 10) - co) <= 0 and count(*) >= 10)

	and
	Employee_ID in
	(select REPORT_REPORTER.Reporter_id
	from REPORT_REPORTER
	join REPORTS on REPORT_REPORTER.Report_ID = REPORTS.Report_ID
	GROUP BY REPORT_REPORTER.Reporter_id, REPORTS.danger
	having REPORTS.Danger = 3 and count(*) >= 10)
	and
	Employee_ID in (select inserted.Reporter_id from inserted)
end



go


INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID,Danger) VALUES ('xxx', '01/03/2006', '00:03:07.000',1, 3),
('yyy', '02/03/2006', '00:02:19.000', 1, 3),('zzz', '02/03/2006', '00:01:17.000', 2, 3),('qqq', '01/03/2006', '00:03:07.000',1, 3), 
('sss', '02/03/2006', '00:02:19.000', 1, 3),('ggg', '02/03/2006', '00:01:17.000', 2, 3),('vvv', '01/03/2006', '00:03:07.000',1, 3),('nnn', '02/03/2006', '00:02:19.000', 1, 3);
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (65, 1, 43 ), (66, 1, 43),(67, 1, 43),(68, 1, 43 ), (69, 1, 43),(70, 1, 43),(71, 1, 43 ), (72, 1, 43);


INSERT INTO REPORTS ([Name], [Date], Duration, Event_ID,Danger) VALUES ('xxa', '01/03/2006', '00:03:07.000',1, 1),
('yya', '02/03/2006', '00:02:19.000', 1, 2),('zza', '02/03/2006', '00:01:17.000', 2, 1),('qqa', '01/03/2006', '00:03:07.000',1, 1), 
('ssa', '02/03/2006', '00:02:19.000', 1, 2),('gga', '02/03/2006', '00:01:17.000', 2, 2),('vva', '01/03/2006', '00:03:07.000',1, 1),('nna', '02/03/2006', '00:02:19.000', 1, 1);
INSERT INTO REPORT_REPORTER (Report_ID, Reporter_ID, Cameraman_ID) VALUES (73, 1, 43 ), (74, 1, 43),(75, 1, 43),(76, 1, 43 ), (77, 1, 43),(78, 1, 43),(79, 1, 43 ), (80, 1, 43);


select * from EMPLOYEE

select *
	from REPORT_REPORTER
	join REPORTS on REPORT_REPORTER.Report_ID = REPORTS.Report_ID
	order by Reporter_ID