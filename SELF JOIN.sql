-- 여러 테이블의 데이터를 조인해서 출력하기--

select e.ename as 사원, e.job as 직업, m.ename as 관리자,  m.job as 직업
from emp e, emp m
where e.mgr = m.empno and e.job = 'SALESMAN';

--mgr 통해 직속 상사 확인하기--
select m.ename as 관리자,  m.job as 직업, mgr
from emp m;