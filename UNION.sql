--집합 연산자로 데이터를 위아래 연결하기--

--부서 번호롸 부서 번호별 토탈 월급 출력하는데 매 아래 행에 토탈 월급 출력하기

 select deptno, sum(sal)
 from emp
 group by deptno
 
 UNION
 
 select null as deptno, sum(sal)
 from emp;
 
--UNION ALL과 다르게 부서 번호가 내림차순...!
--UNION  ALL 과의 차이점은?
-- -중복된 데이터를 하나의 고유한 값으로 출력
-- - 첫번째 컬럼의 데이터를 기준으로 내림차순 정렬 하여 출력