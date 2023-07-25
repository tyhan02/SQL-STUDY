--데이터 수정하기(UPDATE)

--scott의 월급을 3200으로 수정하기


select sal, ename
from emp
where ename = 'SCOTT';



UPDATE emp
set sal = 3200
where ename = 'SCOTT';

select sal, ename
from emp
where ename = 'SCOTT';

--UPDATE문은 모든 절에서 서브쿼리 작성이 가능하다