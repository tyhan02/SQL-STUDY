-- 집합 연산자로 데이터를 위아래로 연결하기--

-- 부서 번호와 부서 번호별 토탈 월급을 출력하는데 맨 아래쪽에 행에 토탈 월급을 출력하기--

select deptno, sum(sal)
from emp
group by deptno

UNION ALL
select to_number(null) as deptno, sum(sal)
from emp;

--UNION ALL 위쪽 쿼리와 아래쪽 쿼리의 컬럼 개수가 동일해야 한다
--UNION ALL 위쪽 쿼리와 아래쪽 쿼리 컬럼의 데이터 타입이 동일해야 한다 
--결과로 출력되는 컬럼명은 위쪽 쿼리의 컬럼명으로 출력된다 
--ORDER BY 절은 제일 아래쪽 쿼리에만 작성 가능
--동일한 데이터 있어도 중복 제거없이 그대로 출력한다
