--여러 테이블의 데이터 조인해서 출력하기--

Select e.ename, d.loc
From emp e, dept d
Where e.deptno (+) = d.deptno;
