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

--외부조인
--기본조인(부서번호가 NULL인 직원은 제외)
SELECT e.last_name 이름, d.department_id 부서번호, d.department_name 부서명
FROM employees e
JOIN departments d
    ON e.department_id = d.department_id;

SELECT *
FROM employees 
WHERE department_id IS NULL; --부서번호가 NULL인 직원

--LEFT 외부 조인 : 직원 테이블 중에 부서가 없는 직원도 출력
SELECT e.last_name 이름, d.department_id 부서번호, d.department_name 부서명
FROM employees e
LEFT OUTER JOIN departments d
    ON e.department_id = d.department_id;
    
--RIGHT 외부 조인 : 부서 테이블에 있지만 직원 테이블에서 사용하지 않는 부서도 전부 출력됨
SELECT e.last_name 이름, d.department_id 부서번호, d.department_name 부서명
FROM employees e
RIGHT OUTER JOIN departments d
    ON e.department_id = d.department_id;

--FULL 외부 조인 : 조건에 맞지 않는 모든 데이터 줄을 출력함
SELECT e.last_name 이름, d.department_id 부서번호, d.department_name 부서명
FROM employees e
FULL OUTER JOIN departments d
    ON e.department_id = d.department_id;

--예제
SELECT c.country_name 국가, c.country_id 국가번호, l.location_id 지역번호, l.city 도시 
FROM countries c
LEFT OUTER JOIN locations l
    ON l.country_id = c.country_id
ORDER BY 지역번호 DESC;

--크로스 조인 예제
SELECT c.country_name 국가, r.region_name 지역이름
FROM countries c
CROSS JOIN regions r;

