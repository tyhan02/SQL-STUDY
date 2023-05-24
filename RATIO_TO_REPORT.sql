--데이터 분석 함수로 비율 출력하기(RATIO_TO_REPORT)--

--부서번호가 20번인 사원들의 사원번호, 이름, 월급 출력하고, 20번 부서 번호 내에서 자신의 월급 비율이 어떻게 되는지 출력하기--

select empno, ename, sal, ratio_to_report(sal) over () as  비율
from emp
where deptno =20 ;

select sum(sal) as "합계"
from emp
where deptno =20;






select ename, empno, sal, ratio_to_report(sal) over () as  비율, sal/sum(sal) over () as "비교비율"
from emp
where deptno = 20;



