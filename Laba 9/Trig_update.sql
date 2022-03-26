--«а каждые 10 сюжетов повышенной опасности зарплата повышаетс€ в 1.4 раза, 
--за 10 обычной понижаетс€ в 1.4 раза, если была повышена.

use TV_journalism
go


IF OBJECT_ID ('trig_salary_upd', 'TR') IS NOT NULL
   DROP TRIGGER trig_salary_upd
GO
CREATE TRIGGER trig_salary_upd ON REPORT_REPORTER
AFTER update
AS
IF OBJECT_ID ('trig_salary_del', 'TR') IS NOT NULL
   DROP TRIGGER trig_salary_del
GO
CREATE TRIGGER trig_salary_del ON REPORT_REPORTER
AFTER delete
AS

if 3 in (select Danger from REPORTS join deleted on deleted.Report_ID = REPORTS.Report_ID)
begin
update EMPLOYEE SET Salary = Salary/1.4 where (Employee_ID in 
	(select REPORT_REPORTER.Reporter_id
	from REPORT_REPORTER
	join REPORTS on REPORT_REPORTER.Report_ID = REPORTS.Report_ID
	join (select deleted.Reporter_ID, count(*) as co from deleted
		join REPORTS on deleted.Report_ID = REPORTS.Report_ID 
		where reports.Danger = 3
		group by Reporter_ID) as tab on  tab.Reporter_ID = REPORT_REPORTER.Reporter_ID
	GROUP BY REPORT_REPORTER.Reporter_id, REPORTS.danger,co
	having REPORTS.Danger = 3 and ((count(*) % 10) + co) >= 10) or
	Employee_ID not in (select REPORT_REPORTER.Reporter_id
	from REPORT_REPORTER join REPORTS on REPORT_REPORTER.Report_ID = REPORTS.Report_ID where REPORTS.Danger = 3))
	and
	Employee_ID in (select deleted.Reporter_id from deleted)
	
end
if (1 in (select Danger from REPORTS join deleted on deleted.Report_ID = REPORTS.Report_ID) or 2 in (select Danger from REPORTS join deleted on deleted.Report_ID = REPORTS.Report_ID)) and 3  in (select Danger from REPORTS join deleted on deleted.Report_ID = REPORTS.Report_ID)

begin
update EMPLOYEE SET Salary = Salary*1.4 where Employee_ID in 
	(select REPORT_REPORTER.Reporter_id
	from REPORT_REPORTER
	join REPORTS on REPORT_REPORTER.Report_ID = REPORTS.Report_ID
	join (select deleted.Reporter_ID, count(*) as co from deleted
		join REPORTS on deleted.Report_ID = REPORTS.Report_ID 
		where reports.Danger < 3
		group by Reporter_ID) as tab on  tab.Reporter_ID = REPORT_REPORTER.Reporter_ID
	where REPORTS.danger < 3
	GROUP BY REPORT_REPORTER.Reporter_id,co
	having ((count(*) % 10) + co) >= 10)
	and 
	Employee_ID in (select REPORT_REPORTER.Reporter_id
	from REPORT_REPORTER
	join REPORTS on REPORT_REPORTER.Report_ID = REPORTS.Report_ID
	 join (select deleted.Reporter_ID, count(*) as co from deleted
		join REPORTS on deleted.Report_ID = REPORTS.Report_ID 
		where reports.Danger = 3
		group by Reporter_ID) as tab on  tab.Reporter_ID = REPORT_REPORTER.Reporter_ID
	GROUP BY REPORT_REPORTER.Reporter_id, REPORTS.danger,co
	having REPORTS.Danger = 3 and ((((count(*) % 10) + co) >= 10) or (((count(*) % 10) + co) = 0)))
	and
	Employee_ID in (select deleted.Reporter_id from deleted)
end

if (1 in (select Danger from REPORTS join deleted on deleted.Report_ID = REPORTS.Report_ID) or 2 in (select Danger from REPORTS join deleted on deleted.Report_ID = REPORTS.Report_ID)) and 3  not in (select Danger from REPORTS join deleted on deleted.Report_ID = REPORTS.Report_ID)
begin
update EMPLOYEE SET Salary = Salary*1.4 where Employee_ID in 
	(select REPORT_REPORTER.Reporter_id
	from REPORT_REPORTER
	join REPORTS on REPORT_REPORTER.Report_ID = REPORTS.Report_ID
	join (select deleted.Reporter_ID, count(*) as co from deleted
		join REPORTS on deleted.Report_ID = REPORTS.Report_ID 
		where reports.Danger < 3
		group by Reporter_ID) as tab on  tab.Reporter_ID = REPORT_REPORTER.Reporter_ID
	where REPORTS.danger < 3
	GROUP BY REPORT_REPORTER.Reporter_id,co
	having ((count(*) % 10) + co) >= 10)
	and 
	Employee_ID in
	(select REPORT_REPORTER.Reporter_id
	from REPORT_REPORTER
	join REPORTS on REPORT_REPORTER.Report_ID = REPORTS.Report_ID
	GROUP BY REPORT_REPORTER.Reporter_id, REPORTS.danger
	having REPORTS.Danger = 3 and count(*) >= 10)
	and
	Employee_ID in (select deleted.Reporter_id from deleted)
end

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


UPDATE REPORT_REPORTER SET Reporter_ID = 2 WHERE Report_ID = 65