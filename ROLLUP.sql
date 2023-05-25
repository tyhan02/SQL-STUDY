--직업과 직업별 토탈 월급 출력 + 맨 마지막행에 토탈 월급 출력하기--


select job, sum(sal)
from emp
group by rollup(job);

--rollup 사용하지 않았을 때 와 비교--
select job, sum(sal)
from emp
group by job;

--rollup에 컬럼 2개 사용--

select deptno, job, sum(sal)
from emp
group by rollup (deptno, job);
