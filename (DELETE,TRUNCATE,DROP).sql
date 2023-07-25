--데이터 삭제하기 (DELETE / TRUNCATE / DROP)

--사원테이블에서 SCOTT의 행 데이터 삭제하기


select ename
from emp
where ename = 'SCOTT';


DELETE from emp
where ename = 'SCOTT';


select ename
from emp
where ename = 'SCOTT';