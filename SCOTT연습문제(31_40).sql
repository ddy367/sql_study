--예제31
SELECT *
FROM emp
ORDER BY deptno, sal DESC;

--예제32
SELECT deptno, ename, sal
FROM emp
ORDER BY deptno DESC, ename, sal DESC;

--예제33
SELECT ename, sal, ROUND(sal*0.13) BONUS, deptno
FROM emp
WHERE deptno = 10;

--예제34
SELECT ename, sal, nvl(comm , 0), sal+nvl(comm, 0) TOTAL
FROM emp
ORDER BY TOTAL DESC;

--예제35
SELECT ename, sal, TO_CHAR(ROUND((sal*0.15), 1), '$999.9') 회비
FROM emp
WHERE SAL BETWEEN 1500 AND 3000;

--예제36
SELECT d.dname, COUNT(e.empno)
FROM emp e
JOIN dept d 
    ON e.deptno = d.deptno
GROUP BY d.dname
HAVING COUNT(e.deptno) > 5;

--예제37
SELECT job, SUM(sal) 급여합계
FROM emp
WHERE job != 'SALESMAN'
GROUP BY job
HAVING SUM(sal) > 5000;

--예제38
SELECT e.empno, e.ename, e.sal, s.grade
FROM emp e
JOIN salgrade s
    ON e.sal BETWEEN s.losal AND s.hisal; -- 비동등 조인

--예제39
--as 없어도 괜찮아, 쌍따옴표 사용!
SELECT deptno, COUNT(*) as 사원수, COUNT(comm) as "커미션 받은 사원 수" 
FROM emp
GROUP BY deptno
ORDER BY deptno DESC;

--예제40
SELECT ename, deptno, 
    CASE WHEN deptno = 10 THEN '총무부'
         WHEN deptno = 20 THEN '개발부'
         ELSE                  '영업부'
    END "부서명"
FROM emp;

SELECT ename, deptno, 
    decode(deptno, 10, '총무부',
                   20, '개발부',
                   30, '영업부'
            ) 부서명
FROM emp;