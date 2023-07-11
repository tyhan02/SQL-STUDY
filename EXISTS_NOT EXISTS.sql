--서브 쿼리 사용하기
--EXISTS 와 NOT EXISTS

--부서 테이블에 있는 부서 번호 중에서 사원테이블에도 존재하는 부서 번호의 부서 번호,
--부서 명, 부서 위치 출력하기

select *
from dept d
where EXISTS (select *
                from emp e
                where e.deptno =d.deptno);
                
--테이블 A에 존재하는 데이터가 테이블 B에 존재하는지 여부 확인할 때 EXISTS or NOT EXISTS 사용

--dept 테이블에는 존재하는 부서 번호인데 emp 테이블에 존재하지 않는 테이블 검색할때 NOT EXISTS

select *
from dept d
where not EXISTS (select *
                    from emp e
                    where e.deptno =d.deptno);
