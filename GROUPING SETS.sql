--데이터 분석 함수로 집계 결과 출력하기--

--부서번호와 직업, 부서 번호별 토탈 월급과 직업별 토탈 월급, 전체 토탈월급 출력하기--

select deptno, job , sum(sal)

from emp

group by grouping sets((deptno), (job), ()); 


select deptno, job , sum(sal)

from emp

group by grouping sets((deptno,job)); 
