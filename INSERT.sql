--데이터 입력하기 INSERT

--사원 테이블에 데이터를 입력, 사원 번호 2812, 사원 이름 JACK, 월급 3500, 입사일 2019년 6월 5일, 직업 ANALYST

INSERT into emp (empno, ename, sal, hiredate, job)
values(2812, 'JACK', 3500, TO_DATE('2019/06/05', 'RRRR/MM/DD'), 'ANALYST');


select *
from emp;

--테이블에 NULL 입력은 (2812, 'JACK', 3500, NULL, NULL) or (2812, 'JACK', 3500, '', '')