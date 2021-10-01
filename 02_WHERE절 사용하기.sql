--WHERE��
SELECT *
FROM EMPLOYEES
WHERE SALARY > 14000; --������ 14000���� ���� ����

SELECT *
FROM EMPLOYEES
WHERE LAST_NAME = 'King'; -- ���ڿ��� ����ǥ�� ǥ��, �̸��� king�� ����


SELECT *
FROM EMPLOYEES
WHERE HIRE_DATE < '2002/06/10'; --��¥�� ��, ������� 2002�� 6�� 10�� ����

--����1
SELECT *
FROM EMPLOYEES
WHERE EMPLOYEE_ID = 100;

--����2
SELECT *
FROM EMPLOYEES
WHERE FIRST_NAME = 'David';

--����3
SELECT *
FROM EMPLOYEES
WHERE EMPLOYEE_ID <= 105;

--����4
SELECT *
FROM JOB_HISTORY
WHERE START_DATE >= '2006/03/03';

--����5
SELECT *
FROM DEPARTMENTS
WHERE LOCATION_ID <> 1700; --!=

--�������� AND, OR, NOT
SELECT LAST_NAME, DEPARTMENT_ID, SALARY
FROM EMPLOYEES
WHERE DEPARTMENT_ID = 60 
    OR DEPARTMENT_ID = 80
    AND SALARY > 10000;
    
SELECT *
FROM employees
WHERE NOT( hire_date > '2004/01/01' OR salary > 5000 );
--hire_date <= '2002/01/01' AND salary <= 5000

--����1
SELECT *
FROM employees
WHERE salary > 4000 AND job_id = 'IT_PROG';

--����2
SELECT *
FROM employees
WHERE salary > 4000 AND (job_id = 'IT_PROG' OR job_id = 'FI_ACCOUNT');

--IN ������ : ()���� ���� ���� �� OR�� ����
SELECT *
FROM employees
WHERE salary IN ( 4000, 3000, 2700);

--����1
SELECT *
FROM employees
WHERE salary IN (10000, 17000, 24000);

--����2
SELECT *
FROM employees
WHERE department_id NOT IN (30, 40, 50, 80, 100, 110);

--BETWEEN ���̰�
SELECT *
FROM employees
WHERE salary BETWEEN 9000 AND 10000;

--����1
SELECT *
FROM employees
WHERE salary BETWEEN 10000 AND 20000;

--����2
SELECT *
FROM employees
WHERE hire_date BETWEEN '2004/01/01' AND '2004/12/30';

--����3
SELECT *
FROM employees
WHERE salary NOT BETWEEN 7000 AND 17000;

--LIKE ������ _%�� ���� ����ؼ� ���ڿ��� �˻�
SELECT *
FROM employees
WHERE last_name LIKE 'B%'; --�빮��B�� ���� �ڿ��� ��� ����

SELECT *
FROM employees
WHERE last_name LIKE '%b%';

SELECT *
FROM employees
WHERE last_name LIKE '____y'; --�����(_) ��Ȯ�� �ڸ����� ǥ��

--����1
SELECT *
FROM employees
WHERE job_id LIKE '%AD%';

--����2
SELECT *
FROM employees
WHERE job_id LIKE '%AD___';

--����3
SELECT *
FROM employees
WHERE phone_number LIKE '%1234';

--����4
SELECT *
FROM employees
WHERE phone_number NOT LIKE '%3%' AND phone_number LIKE '%9';

--����5
SELECT *
FROM employees
WHERE job_id LIKE '%MGR%' OR job_id LIKE '%ASST';

SELECT commission_pct
FROM EMPLOYEES;
--��(NULL) �̶�?
--�Էµ��� ���� ����� �� ���� ���̰� 0 �Ǵ� ����('')�� �ƴϴ�.
--�� ���� �̻��ϱ� ���� is NULL�� ���
SELECT *
FROM employees
WHERE commission_pct is NULL;
--�� ���� �ƴ� ��츸 ã�� �� is NOT NULL
SELECT *
FROM employees
WHERE commission_pct is NOT NULL;