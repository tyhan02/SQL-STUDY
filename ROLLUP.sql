--직업과 직업별 토탈 월급 출력 + 맨 마지막행에 토탈 월급 출력하기--


select job, sum(sal)
from emp
group by rollup(job);