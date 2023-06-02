--사원(emp)테이블과 급여 등급(salgrade) 테이블을 조인하여 이름, 월급, 급여 등급을 출력하기--

select e.ename, e.sal, s.grade
from emp e, salgrade s
where e.sal between s.losal and s.hisal;



select *
from salgrade;