--서브쿼리 사용하기
--HAVING절의 서브 쿼리

--직업과 직업별 토탈월급을 출력하는데 직업이 SALESMAN 인 사원들의 토탈 월급보다 더 큰 값들만 출력하기

select job, sum(sal)
from emp
group by job
HAVING sum(sal) > (select sum(sal)
                    from emp
                    where job='SALESMAN');
                    
                    
-- groub by는 서브쿼리 사용 불가 !!!