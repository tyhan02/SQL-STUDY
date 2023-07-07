--서브 쿼리 사용하기--

--관리자가 아닌 사원들의 이름과 월급, 직업 출력하기 

select ename, sal, job
from emp
where empno not in (select mgr
                    from emp
                    where mgr is not null);