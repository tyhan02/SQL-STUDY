--집합 연산자로 데이터의 차이 출력하기

--부서번호 10번, 20번 출력하는 쿼리의 결과에서 부서번호 20번, 30번 출력하는 쿼리 결과 차이 출력해보기

select ename, sal, job, deptno
from emp
where deptno in (10,20)

MINUS

select ename, sal, job, deptno
from emp
where deptno in (20,30);


-- => 차집합...!!!

-- MINUS 연산자도 결과 데이터 내림차순으로 정렬해 출력한다

-- + 중복도 제거...!

-- MINUS 연산자 위쪽 쿼리를 A 집합. MINUS 연산자 아래쪽 쿼리를 B집합이라 한다면 A-B 가되는것