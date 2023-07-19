--서브쿼리 사용하기 FROM 절의 서브쿼리

--이름과 월급과 순위를 출력하는데 순위가 1위린 사원만 출력해보기

select v.ename, v.sal, v.순위
from (select ename, sal, rank() over (order by sal desc)as 순위 from emp)v
where v.순위 =1;

--From 절의 서브쿼리를 in the view라고 한다

--where절에서는 분석함수를 사용 할 수 없다 ..! => from절에 서브 쿼리문 사용해 서브 쿼리문이 먼저 실행되고 출력된 결과를 하나의 집합으로 만들기 




--직업이 SALESMAN 인 사원들의 이름과 월급 출력, 직업이 SALESMAN인 사원들의 최대 월급과 월급도 같이 출력

select ename, sal,(select max(sal) from emp where job = 'SALESMAN') as 최대월급,
                  (select min(sal) from emp where job = 'SALESMAN') as 최소월급
from emp
where job='SALESMAN';

--Select절의 서브쿼리는 서브쿼리가 Select 절로 확장되었다 해서scalar 서브쿼리라 불린다

--스칼라 서브쿼리는 출력되는 행 수만큼 반복되어 실행