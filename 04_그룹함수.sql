--�׷��Լ� (������ �Լ�, �����Լ�)
SELECT ROUND(AVG(salary)) ��հ�, MAX(salary) �ִ밪, MIN(salary) �ּҰ�, 
             SUM(salary) �հ�, COUNT(salary) ī��Ʈ
FROM employees
WHERE job_id LIKE '%REP%';

SELECT COUNT(*)
FROM employees;

SELECT COUNT(*)
FROM employees
WHERE department_id = 80; --80�� �μ��� ������

--�׷��Լ������� �ΰ��� �����ϰ� ����Ѵ�.(���� CONUT(*))
SELECT COUNT(department_id)
FROM employees; --1���� �μ��� ����(����)

SELECT COUNT(DISTINCT department_id)
FROM employees; --�ߺ����� ���� �μ��� ����

SELECT AVG(commission_pct)
FROM employees; --�ΰ��� ������ ��� �������� Ŀ�̼� ���

--GROUP BY �� : Ư�� �׷����� ����� �׷��Լ��� ���
SELECT department_id �μ���ȣ, ROUND(AVG(salary)) ��ձ޿�
FROM employees
GROUP BY department_id 
ORDER BY �μ���ȣ; --�μ���ȣ�� �׷쳪��

SELECT *
FROM employees
WHERE department_id IS NULL; --�μ��� ���� ���

--����1
SELECT department_id �μ���, COUNT(*) �����, MAX(salary) �ְ�޿�, 
        MIN(salary) �ּұ޿�, SUM(salary) �޿��հ�, ROUND(AVG(salary)) ��ձ޿�
FROM employees
GROUP BY department_id
ORDER BY �޿��հ� DESC;

--����2
SELECT department_id �μ���ȣ, job_id ����,SUM(salary) �����հ�, COUNT(*) ������
FROM employees
GROUP BY department_id, job_id
ORDER BY �μ���ȣ;

--����3
SELECT AVG(MAX(salary)) �μ����ְ�������,
       AVG(MIN(salary)) �μ��������������
FROM employees
GROUP BY department_id;

--�׷� �Լ��� ������ HAVING
SELECT department_id �μ���ȣ, COUNT(*) �����
FROM employees
GROUP BY department_id
HAVING COUNT(*) > 5; --����� 5���� �Ѵ� �μ�

--����1
SELECT job_id ����, SUM(salary) ���޿��հ�
FROM employees
WHERE job_id <> 'AC_MGR'
GROUP BY job_id
HAVING AVG(salary) > 10000
ORDER BY ���޿��հ� DESC;

--����2
SELECT department_id �μ���ȣ, ROUND(AVG(salary)) ��ձ޿�
FROM employees
WHERE department_id <> 40
GROUP BY department_id
HAVING AVG(salary) <= 7000;

--����3
SELECT job_id, SUM(salary) �޿��Ѿ�
FROM employees
WHERE job_id NOT LIKE '%REP%'
GROUP BY job_id
HAVING SUM(salary) >= 13000
ORDER BY �޿��Ѿ� DESC;