 --�ּ� ����Ű CTRL+/
 
 /* 
 ������
 �ּ�
 */
 -- 1. ���̺��� ��� ��� ���� �о����, ��ɹ� ������ CTRL + ENTER
 -- *�� ��ü ��, ��ɹ� ������ �����ݷ�(;)�� �־�� �Ѵ�.
 SELECT *
 FROM departments;
 
 -- 2. Ư�� ���� ��ȸ�ϱ�
 SELECT department_id, department_name
 FROM departments;
 
 SELECT employee_id, first_name, last_name
 FROM employees;
 
 -- 3. ��Ī ���̱� (���� �̸�)
 select department_id as �μ���ȣ, department_name �μ��̸�
 from departments;
 
 --4. ��� ������(+, -, *, /)
 select last_name, first_name, job_id, salary
 from employees;
 
 select first_name �̸�, job_id ��å, salary ����
 from employees;
 
 --���޿� 100�� �� ���� �����
select first_name �̸�, job_id ��å, salary ����, salary-100 ���޼���
 from employees;
 --������ 10%�� ����
 select first_name �̸�, job_id ��å, salary ����, salary-salary/10 ���޼���
 from employees;
 
 --distinct
 select distinct job_id
 from employees;
 
 -����1
 select employee_id, first_name, last_name
 from employees;
 -����2
 select first_name, salary, salary*1.1 AS��������
 from employees;
 -����3
 select employee_id �����ȣ, first_name �̸�, last_name ��
 from employees;
 
 --���� ������ ||  : ���� �ٿ��� �ϳ��� ���� ���
 SELECT LAST_NAME || ' is a ' || JOB_ID AS ��������
 FROM EMPLOYEES;
 
 -����4 :�̸��� �� ĭ ���� �ٿ��� ��, email�� ���ڿ� �ٿ��� ���
 SELECT EMPLOYEE_id, first_name || ' ' || last_name Ǯ����, email || '@company.com' �̸���
 FROM EMPLOYEES;
 
DESC EMPLOYEES;
DESC DEPARTMENTS;

