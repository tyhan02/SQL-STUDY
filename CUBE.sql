--직업과 직업별 토탈 월급 출력 + 첫 번째 행에 total 월급 출력--

select job, sum(sal)
from emp
group by cube(job);

--cube 사용 결과 차이 보기--

select deptno, sum(sal)
from emp
group by deptno;

select deptno, sum(sal)
from emp
group by cube(deptno);


--cube로 컬럼 2개 사용해보기--
select deptno, job, sum(sal)
from emp
group by cube(deptno, job);

