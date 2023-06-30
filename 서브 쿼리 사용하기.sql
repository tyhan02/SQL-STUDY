--서브 쿼리 사용하기
--단일행 서브쿼리

--JONES 보다 더 많은 월급을 받는 사원들으 이름, 월급 출력하기

select ename, sal
from emp
where sal > (select sal
                from emp
                where ename ='JONES');