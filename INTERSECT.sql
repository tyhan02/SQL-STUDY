--집합 연산자로 데이터의 교집합 출력하기(INTERSECT)--

--부서 번호 10번,20번인 사원들을 출력하는 쿼리 겨로가와 부서 번호 20번, 30번 출력하는 쿼리 결과의 교집합 출력해보기 

select ename, sal, job, deptno
from emp
where deptno in (10,20)

INTERSECT

select ename, sal, job, deptno
from emp
where deptno in(20,30);

--INTERSECT 연산자도 UNION  연산자처럼 중복된 데이터 제거하고 결과 데이터 내림차순으로 정렬!!!