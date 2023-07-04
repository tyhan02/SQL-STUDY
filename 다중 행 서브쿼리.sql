--서브 쿼리 사용하기
-- 다중 행 서브쿼리

--직업이 SALESMAN 인 사원들과 같은 월급을 받는 사원들의 이름과 월급 출력하기

select ename, sal
from emp
where sal in ( select sal 
                from emp
                where job = 'SALESMAN'); 