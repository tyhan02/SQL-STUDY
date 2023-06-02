--여러 테이블의 데이터 조인해서 출력--

--사원(emp) 테이블과 부서(dept) 테이블을 조인하여 이름과 부서 위치 출력

select ename, loc
from emp, dept
where emp.deptno = dept.deptno;



--직업이 ANALYST인 사원들만 출력하기--
select ename, loc
from emp, dept
where emp.deptno = dept.deptno and emp.job = 'ANALYST';


--조인 코드 간결하게--
select e.ename, d.loc, e.job
from emp e, dept d
where e.deptno = d.deptno and e.job = 'ANALYST'


