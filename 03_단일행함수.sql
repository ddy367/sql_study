--������ �Լ�

--���� �Լ�
--��ҹ��� ��ȯ UPPER LOWER INITCAP
SELECT UPPER('SQL Course'), LOWER('SQL Course'), INITCAP('SQL Course') 
FROM DUAL; --��� �׽�Ʈ�� ���̺� �̿��Ͽ� ����

--���� ���� �Լ�
SELECT SUBSTR('ABCDEFG',3,4), LENGTH('ABCDEFG'), INSTR('ABCDEFG','D')
FROM DUAL;

SELECT TRIM ('   ��ο�   '), '   ��ο�   '
FROM DUAL;

--���� �Լ� ����
SELECT department_id, last_name, department_id
FROM employees
WHERE LOWER(last_name) = 'higgins';

SELECT last_name, CONCAT('�������� ', job_id) AS ������
FROM employees
WHERE SUBSTR(job_id, 4, 3) = 'REP';

--���ڿ� ���� �� ���� (-1�� ���ڿ��� ���� ��)
SELECT last_name, SUBSTR(last_name, -1, 1)
FROM employees;

--���ڿ� �ٲٱ�
SELECT job_id, REPLACE(job_id, 'ACCOUNT', 'ACCNT') ������
FROM employees;

--����1
SELECT last_name �̸�, LOWER(last_name) LOWER����, UPPER(last_name) UPPER����, email �̸���, INITCAP(email) INITCAP����
FROM employees;

--����2
SELECT job_id ������, SUBSTR(job_id,1,2) ����2��
FROM employees;

--������ �Լ�
--�ݿø� �Լ� ROUND(����, �ڸ���), �ڸ����� ������ ������ �ݿø�
SELECT ROUND(15.193), ROUND(15.193, 0), ROUND(15.193, 1), ROUND(15.193, 2)
FROM DUAL;

--������ȣ�� ¦������ �����鸸 ����϶�
SELECT employee_id ¦����°, last_name
FROM employees
WHERE MOD(employee_id, 2) = 0 --¦��
ORDER BY employee_id;

--������ȣ�� Ȧ������ �����鸸 ����϶�
SELECT employee_id Ȧ����°, last_name
FROM employees
WHERE MOD(employee_id, 2) = 1 --Ȧ��
ORDER BY employee_id;