--WHERE절
SELECT *
FROM EMPLOYEES
WHERE SALARY > 14000; --월급이 14000보다 많은 직원

SELECT *
FROM EMPLOYEES
WHERE LAST_NAME = 'King'; -- 문자열은 따옴표로 표시, 이름이 king인 직원


SELECT *
FROM EMPLOYEES
WHERE HIRE_DATE < '2002/06/10'; --날짜를 비교, 고용일인 2002년 6월 10일 이전

--예제1
SELECT *
FROM EMPLOYEES
WHERE EMPLOYEE_ID = 100;

--예제2
SELECT *
FROM EMPLOYEES
WHERE FIRST_NAME = 'David';

--예제3
SELECT *
FROM EMPLOYEES
WHERE EMPLOYEE_ID <= 105;

--예제4
SELECT *
FROM JOB_HISTORY
WHERE START_DATE >= '2006/03/03';

--예제5
SELECT *
FROM DEPARTMENTS
WHERE LOCATION_ID <> 1700; --!=

--논리연산자 AND, OR, NOT
SELECT LAST_NAME, DEPARTMENT_ID, SALARY
FROM EMPLOYEES
WHERE DEPARTMENT_ID = 60 
    OR DEPARTMENT_ID = 80
    AND SALARY > 10000;
    
SELECT *
FROM employees
WHERE NOT( hire_date > '2004/01/01' OR salary > 5000 );
--hire_date <= '2002/01/01' AND salary <= 5000

--예제1
SELECT *
FROM employees
WHERE salary > 4000 AND job_id = 'IT_PROG';

--예제2
SELECT *
FROM employees
WHERE salary > 4000 AND (job_id = 'IT_PROG' OR job_id = 'FI_ACCOUNT');

--IN 연산자 : ()안의 값이 같을 때 OR로 연결
SELECT *
FROM employees
WHERE salary IN ( 4000, 3000, 2700);

--예제1
SELECT *
FROM employees
WHERE salary IN (10000, 17000, 24000);

--예제2
SELECT *
FROM employees
WHERE department_id NOT IN (30, 40, 50, 80, 100, 110);

--BETWEEN 사이값
SELECT *
FROM employees
WHERE salary BETWEEN 9000 AND 10000;

--예제1
SELECT *
FROM employees
WHERE salary BETWEEN 10000 AND 20000;

--예제2
SELECT *
FROM employees
WHERE hire_date BETWEEN '2004/01/01' AND '2004/12/30';

--예제3
SELECT *
FROM employees
WHERE salary NOT BETWEEN 7000 AND 17000;

--LIKE 연산자 _%를 같이 사용해서 문자열을 검색
SELECT *
FROM employees
WHERE last_name LIKE 'B%'; --대문자B로 시작 뒤에는 상관 없음

SELECT *
FROM employees
WHERE last_name LIKE '%b%';

SELECT *
FROM employees
WHERE last_name LIKE '____y'; --언더바(_) 정확한 자릿수를 표현

--예제1
SELECT *
FROM employees
WHERE job_id LIKE '%AD%';

--예제2
SELECT *
FROM employees
WHERE job_id LIKE '%AD___';

--예제3
SELECT *
FROM employees
WHERE phone_number LIKE '%1234';

--예제4
SELECT *
FROM employees
WHERE phone_number NOT LIKE '%3%' AND phone_number LIKE '%9';

--예제5
SELECT *
FROM employees
WHERE job_id LIKE '%MGR%' OR job_id LIKE '%ASST';

SELECT commission_pct
FROM EMPLOYEES;
--널(NULL) 이란?
--입력되지 않은 사용할 수 없는 값이고 0 또는 공백('')이 아니다.
--널 값을 겁색하기 위해 is NULL을 사용
SELECT *
FROM employees
WHERE commission_pct is NULL;
--널 값이 아닌 경우만 찾을 때 is NOT NULL
SELECT *
FROM employees
WHERE commission_pct is NOT NULL;