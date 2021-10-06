--예제1
SELECT empno, ename, sal
FROM emp
WHERE deptno = 10;

--예제2
SELECT ename, hiredate, deptno
FROM emp
WHERE empno = 7369;

--예제3
SELECT *
FROM emp
WHERE ename = 'ALLEN';

--예제4
SELECT ename, deptno, sal
FROM emp
WHERE hiredate = '81/02/20';

--예제5
SELECT *
FROM emp
WHERE job <> 'MANAGER'; -- !- <> 가능

--예제6
SELECT *
FROM emp
WHERE hiredate >= '81/04/02';

--예제7
SELECT ename, sal, deptno
FROM emp
WHERE sal >= 800;

--예제8
SELECT *
FROM emp
WHERE deptno >= 20;

--예제9
SELECT *
FROM emp
WHERE ename >= 'L';

--예제10
SELECT *
FROM emp
WHERE hiredate < '81/12/09';

--예제11
SELECT empno, ename
FROM emp
WHERE empno <= 7698;

--예제12
SELECT ename, sal, deptno
FROM emp
WHERE hiredate >= '81/04/02' AND hiredate <= '82/12/09';

--예제13
SELECT ename, job, sal
FROM emp
WHERE sal BETWEEN 1601 AND 2999;

--예제14
SELECT *
FROM emp
WHERE empno NOT BETWEEN 7654 AND 7782;

--예제15
SELECT *
FROM emp
WHERE ename BETWEEN 'B' AND 'J';

--예제16
SELECT *
FROM emp
WHERE TO_CHAR(hiredate, 'YY') <> '81';

--예제17
SELECT *
FROM emp
WHERE job = 'MANAGER' OR job = 'SALESMAN'; --JOB IN ( , )

--예제18
SELECT ename, empno, deptno
FROM emp
WHERE deptno <> 20 AND deptno <> 30; -- NOT IN ( , )

--예제19
SELECT empno, ename, hiredate, deptno
FROM emp
WHERE ename LIKE 'S%';

--예제20
SELECT *
FROM emp
WHERE TO_CHAR(hiredate, 'YY') = '81';

--예제21
SELECT *
FROM emp
WHERE ename LIKE '%S%';

--예제22
SELECT *
FROM emp
WHERE ename LIKE 'M____N';

--예제23
SELECT *
FROM emp
WHERE ename LIKE '_A%';

--예제24
SELECT *
FROM emp
WHERE comm IS NULL;

--예제25
SELECT *
FROM emp
WHERE comm IS NOT NULL;

--예제26
SELECT ename, deptno, sal
FROM emp
WHERE deptno = 30 AND sal >= 1500;

--예제27
SELECT empno, ename, deptno
FROM emp
WHERE ename LIKE 'K%' OR deptno = 30;

--예제28
SELECT *
FROM emp
WHERE sal >= 1500 AND deptno = 30 AND job = 'MANAGER';

--예제29
SELECT *
FROM emp
WHERE deptno = 30
ORDER BY EMPNO;

--예제30
SELECT *
FROM emp
ORDER BY SAL DESC;

--예제31
SELECT *
FROM emp
ORDER BY deptno ASC;
ORDER BY sal DESC;

--예제32
SELECT deptno, ename, sal
FROM emp
ORDER BY deptno DESC;
ORDER BY ename ASC;
ORDER BY sal DESC;

--예제33
SELECT ename, sal, ROUND(sal*0.13) BONUS, deptno
FROM emp
WHERE deptno = 10;

--예제34
SELECT ename, sal, NVL(comm , 0), TOTAL
FROM emp
WHERE TOTAL SUM(sal) + SUM(comm)
ORDER BY TOTAL DESC;


--예제35
SELECT ename, sal, TO_CHAR(ROUND((sal*0.15), 1), '$999.9') 회비
FROM emp
WHERE SAL BETWEEN 1500 AND 3000;

--예제36
SELECT d.dname, COUNT(e.empno) > 5
FROM emp e
JOIN dept d ON e.deptno = d.deptno;

--예제37
SELECT job, SUM(sal) 급여합계
FROM emp
WHERE SUM(sal) > 5000 AND job <> 'SALESMAN';

--예제39
SELECT deptno, COUNT(deptno) 사원수, COUNT(comm) 커미션을 받은 사원수 
FROM emp
GROUP UP deptno
ORDER BY deptno DESC;

--예제40
SELECT ename, deptno, 
    CASE WHEN deptno = 10 THEN '총무부'
         WHEN deptno = 20 THEN '개발부'
         ELSE                  '영업부'
    END "부서명"
FROM emp;