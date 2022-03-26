select dp.name,isnull(dp1.name,'0') as Role
from sys.database_principals as dp
left join sys.database_role_members as drm on drm.role_principal_id = dp.principal_id
left join sys.database_principals as dp1 on dp1.principal_id = drm.member_principal_id
where dp.type = 'R'
--���� ����� � sys.server_principals � sys.server_role_members


--������� ��� ����,� ������������� ������� �� �����������