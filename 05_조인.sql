--����(JOIN)

--ON�� ����� �⺻ ����
SELECT e.employee_id ������ȣ, e.last_name �̸�, 
        d.department_id �μ���ȣ, d.department_name �μ��̸�
FROM employees e 
JOIN departments d ON e.department_id = d.department_id;
    
--where ���� ����� ���� ���ι��
SELECT e.employee_id ������ȣ, e.last_name �̸�, 
        d.department_id �μ���ȣ, d.department_name �μ��̸�
FROM employees e, departments d
WHERE e.department_id = d.department_id;

--3�� ���̺� ���� �μ� �����̼� ���̺� �����ϱ�
SELECT e.employee_id ������ȣ, d.department_name �μ��̸�, l.city ����
FROM employees e 
JOIN departments d ON e.department_id = d.department_id
JOIN locations l ON l.location_id = d.location_id;

--����
SELECT d.department_name �μ���, l.city ���ø�, c.country_name ������
FROM departments d
JOIN countries c ON c.country_id = l.country_id
JOIN locations l ON l.location_id = d.location_id
WHERE l.city IN('Seattle','London')AND c.country_name LIKE 'United%';

--��ü ����
SELECT e.last_name ����, m.last_name �Ŵ���
FROM employees e
JOIN employees m ON m.manager_id = e.employee_id;