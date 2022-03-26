use TV_journalism
go


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
	having REPORTS.Danger = 3 and ((count(*) % 5) + co) >= 5) or
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
	having ((count(*) % 5) + co) >= 5)
	and 
	Employee_ID in (select REPORT_REPORTER.Reporter_id
	from REPORT_REPORTER
	join REPORTS on REPORT_REPORTER.Report_ID = REPORTS.Report_ID
	 join (select deleted.Reporter_ID, count(*) as co from deleted
		join REPORTS on deleted.Report_ID = REPORTS.Report_ID 
		where reports.Danger = 3
		group by Reporter_ID) as tab on  tab.Reporter_ID = REPORT_REPORTER.Reporter_ID
	GROUP BY REPORT_REPORTER.Reporter_id, REPORTS.danger,co
	having REPORTS.Danger = 3 and ((((count(*) % 5) + co) >= 5) or (((count(*) % 5) + co) = 0)))
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
	having ((count(*) % 5) + co) >= 5)
	and 
	Employee_ID in
	(select REPORT_REPORTER.Reporter_id
	from REPORT_REPORTER
	join REPORTS on REPORT_REPORTER.Report_ID = REPORTS.Report_ID
	GROUP BY REPORT_REPORTER.Reporter_id, REPORTS.danger
	having REPORTS.Danger = 3 and count(*) >= 5)
	and
	Employee_ID in (select deleted.Reporter_id from deleted)
end

go


DELETE from REPORT_REPORTER WHERE Cameraman_ID = 43
DELETE from REPORT_REPORTER WHERE Report_ID = 68 or Report_ID = 65


select * from EMPLOYEE

select *
	from REPORT_REPORTER
	join REPORTS on REPORT_REPORTER.Report_ID = REPORTS.Report_ID
	order by Reporter_ID
