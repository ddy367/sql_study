--抗力1
SELECT empno, ename, sal
FROM emp
WHERE deptno = 10;

--抗力2
SELECT ename, hiredate, deptno
FROM emp
WHERE empno = 7369;

--抗力3
SELECT *
FROM emp
WHERE ename = 'ALLEN';

--抗力4
SELECT ename, deptno, sal
FROM emp
WHERE hiredate = '81/02/20';

--抗力5
SELECT *
FROM emp
WHERE job <> 'MANAGER'; -- !- <> 啊瓷

--抗力6
SELECT *
FROM emp
WHERE hiredate >= '81/04/02';

--抗力7
SELECT ename, sal, deptno
FROM emp
WHERE sal >= 800;

--抗力8
SELECT *
FROM emp
WHERE deptno >= 20;

--抗力9
SELECT *
FROM emp
WHERE ename >= 'L';

--抗力10
SELECT *
FROM emp
WHERE hiredate < '81/12/09';

--抗力11
SELECT empno, ename
FROM emp
WHERE empno <= 7698;

--抗力12
SELECT ename, sal, deptno
FROM emp
WHERE hiredate >= '81/04/02' AND hiredate <= '82/12/09';

--抗力13
SELECT ename, job, sal
FROM emp
WHERE sal BETWEEN 1601 AND 2999;

--抗力14
SELECT *
FROM emp
WHERE empno NOT BETWEEN 7654 AND 7782;

--抗力15
SELECT *
FROM emp
WHERE ename BETWEEN 'B' AND 'J';

--抗力16
SELECT *
FROM emp
WHERE TO_CHAR(hiredate, 'YY') <> '81';

--抗力17
SELECT *
FROM emp
WHERE job = 'MANAGER' OR job = 'SALESMAN'; --JOB IN ( , )

--抗力18
SELECT ename, empno, deptno
FROM emp
WHERE deptno <> 20 AND deptno <> 30; -- NOT IN ( , )

--抗力19
SELECT empno, ename, hiredate, deptno
FROM emp
WHERE ename LIKE 'S%';

--抗力20
SELECT *
FROM emp
WHERE TO_CHAR(hiredate, 'YY') = '81';

--抗力21
SELECT *
FROM emp
WHERE ename LIKE '%S%';

--抗力22
SELECT *
FROM emp
WHERE ename LIKE 'M____N';

--抗力23
SELECT *
FROM emp
WHERE ename LIKE '_A%';

--抗力24
SELECT *
FROM emp
WHERE comm IS NULL;

--抗力25
SELECT *
FROM emp
WHERE comm IS NOT NULL;

--抗力26
SELECT ename, deptno, sal
FROM emp
WHERE deptno = 30 AND sal >= 1500;

--抗力27
SELECT empno, ename, deptno
FROM emp
WHERE ename LIKE 'K%' OR deptno = 30;

--抗力28
SELECT *
FROM emp
WHERE sal >= 1500 AND deptno = 30 AND job = 'MANAGER';

--抗力29
SELECT *
FROM emp
WHERE deptno = 30
ORDER BY EMPNO;

--抗力30
SELECT *
FROM emp
ORDER BY SAL DESC;

--抗力31
SELECT *
FROM emp
ORDER BY deptno ASC;
ORDER BY sal DESC;

--抗力32
SELECT deptno, ename, sal
FROM emp
ORDER BY deptno DESC;
ORDER BY ename ASC;
ORDER BY sal DESC;

--抗力33
SELECT ename, sal, ROUND(sal*0.13) BONUS, deptno
FROM emp
WHERE deptno = 10;

--抗力34
SELECT ename, sal, NVL(comm , 0), TOTAL
FROM emp
WHERE TOTAL SUM(sal) + SUM(comm)
ORDER BY TOTAL DESC;


--抗力35
SELECT ename, sal, TO_CHAR(ROUND((sal*0.15), 1), '$999.9') 雀厚
FROM emp
WHERE SAL BETWEEN 1500 AND 3000;

--抗力36
SELECT d.dname, COUNT(e.empno) > 5
FROM emp e
JOIN dept d ON e.deptno = d.deptno;

--抗力37
SELECT job, SUM(sal) 鞭咯钦拌
FROM emp
WHERE SUM(sal) > 5000 AND job <> 'SALESMAN';

--抗力39
SELECT deptno, COUNT(deptno) 荤盔荐, COUNT(comm) 目固记阑 罐篮 荤盔荐 
FROM emp
GROUP UP deptno
ORDER BY deptno DESC;

--抗力40
SELECT ename, deptno, 
    CASE WHEN deptno = 10 THEN '醚公何'
         WHEN deptno = 20 THEN '俺惯何'
         ELSE                  '康诀何'
    END "何辑疙"
FROM emp;