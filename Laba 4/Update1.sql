--�������� ���� ������ ���������� ��������� � �������������� 1 � 2000-01-01 �� 2005-01-01
USE TV_journalism



UPDATE ORDER_AD
SET Start_date = '2000-01-01'
WHERE Advertiser_ID = 1
AND Show_ID = 1
AND Start_date = '2005-01-01'

