--����1
SELECT empno, ename, sal
FROM emp
WHERE deptno = 10;

--����2
SELECT ename, hiredate, deptno
FROM emp
WHERE empno = 7369;

--����3
SELECT *
FROM emp
WHERE ename = 'ALLEN';

--����4
SELECT ename, deptno, sal
FROM emp
WHERE hiredate = '81/02/20';

--����5
SELECT *
FROM emp
WHERE job <> 'MANAGER'; -- !- <> ����

--����6
SELECT *
FROM emp
WHERE hiredate >= '81/04/02';

--����7
SELECT ename, sal, deptno
FROM emp
WHERE sal >= 800;

--����8
SELECT *
FROM emp
WHERE deptno >= 20;

--����9
SELECT *
FROM emp
WHERE ename >= 'L';

--����10
SELECT *
FROM emp
WHERE hiredate < '81/12/09';

--����11
SELECT empno, ename
FROM emp
WHERE empno <= 7698;

--����12
SELECT ename, sal, deptno
FROM emp
WHERE hiredate >= '81/04/02' AND hiredate <= '82/12/09';

--����13
SELECT ename, job, sal
FROM emp
WHERE sal BETWEEN 1601 AND 2999;

--����14
SELECT *
FROM emp
WHERE empno NOT BETWEEN 7654 AND 7782;

--����15
SELECT *
FROM emp
WHERE ename BETWEEN 'B' AND 'J';

--����16
SELECT *
FROM emp
WHERE TO_CHAR(hiredate, 'YY') <> '81';

--����17
SELECT *
FROM emp
WHERE job = 'MANAGER' OR job = 'SALESMAN'; --JOB IN ( , )

--����18
SELECT ename, empno, deptno
FROM emp
WHERE deptno <> 20 AND deptno <> 30; -- NOT IN ( , )

--����19
SELECT empno, ename, hiredate, deptno
FROM emp
WHERE ename LIKE 'S%';

--����20
SELECT *
FROM emp
WHERE TO_CHAR(hiredate, 'YY') = '81';

--����21
SELECT *
FROM emp
WHERE ename LIKE '%S%';

--����22
SELECT *
FROM emp
WHERE ename LIKE 'M____N';

--����23
SELECT *
FROM emp
WHERE ename LIKE '_A%';

--����24
SELECT *
FROM emp
WHERE comm IS NULL;

--����25
SELECT *
FROM emp
WHERE comm IS NOT NULL;

--����26
SELECT ename, deptno, sal
FROM emp
WHERE deptno = 30 AND sal >= 1500;

--����27
SELECT empno, ename, deptno
FROM emp
WHERE ename LIKE 'K%' OR deptno = 30;

--����28
SELECT *
FROM emp
WHERE sal >= 1500 AND deptno = 30 AND job = 'MANAGER';

--����29
SELECT *
FROM emp
WHERE deptno = 30
ORDER BY EMPNO;

--����30
SELECT *
FROM emp
ORDER BY SAL DESC;

--����31
SELECT *
FROM emp
ORDER BY deptno ASC;
ORDER BY sal DESC;

--����32
SELECT deptno, ename, sal
FROM emp
ORDER BY deptno DESC;
ORDER BY ename ASC;
ORDER BY sal DESC;

--����33
SELECT ename, sal, ROUND(sal*0.13) BONUS, deptno
FROM emp
WHERE deptno = 10;

--����34
SELECT ename, sal, NVL(comm , 0), TOTAL
FROM emp
WHERE TOTAL SUM(sal) + SUM(comm)
ORDER BY TOTAL DESC;


--����35
SELECT ename, sal, TO_CHAR(ROUND((sal*0.15), 1), '$999.9') ȸ��
FROM emp
WHERE SAL BETWEEN 1500 AND 3000;

--����36
SELECT d.dname, COUNT(e.empno) > 5
FROM emp e
JOIN dept d ON e.deptno = d.deptno;

--����37
SELECT job, SUM(sal) �޿��հ�
FROM emp
WHERE SUM(sal) > 5000 AND job <> 'SALESMAN';

--����39
SELECT deptno, COUNT(deptno) �����, COUNT(comm) Ŀ�̼��� ���� ����� 
FROM emp
GROUP UP deptno
ORDER BY deptno DESC;

--����40
SELECT ename, deptno, 
    CASE WHEN deptno = 10 THEN '�ѹ���'
         WHEN deptno = 20 THEN '���ߺ�'
         ELSE                  '������'
    END "�μ���"
FROM emp;