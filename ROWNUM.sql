--출력되는 행 제한하기--

--사원 테이블에서 사원 번호, 이름, 직업, 월급을 상단 5개만 행에 출력하기--

select rownum, empno, ename,job, sal 
from emp
where rownum <=5;

--ROWNUM 은 psedu column으로 가짜의 뜻 그대로 '*' 로 검색해서는 출력되지 않는 감춰진 컬럼

--가짜 컬럼인 rownum 을 where절에 사용하여, 행을 제한 시키면 전체 테이블을 읽지 않고, 선택한 행만을 읽어 출력한다 

---> 대용량 테이블의 데이터 상단 행만 살펴볼 때 유용 --