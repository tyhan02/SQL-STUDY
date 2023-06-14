--여러 테이블의 데이터를 조인해서 출력하기/ NATURAL JOIN--

--NATURAL 조인 방법으로 이름. 직업. 월급과 부서 위치 출력해보기--

select e.ename as 이름, e.job as 직업, e.sal as 월급, d.loc  as 부서위치
from emp e natural join dept d
where e.job= 'SALESMAN';