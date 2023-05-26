--데이터 분석 함수로 출력결과 넘버링 하기--

select empno, ename, sal, rank() over (order by sal desc) rank,
                        dense_rank() over (order by sal desc) dense_rank,
                        row_number() over (order by sal desc) as 번호
from emp
where deptno =20;


select deptno, ename, sal, row_number() over (partition by deptno order by sal desc) as 번호
from emp
where deptno in (10,20,30);