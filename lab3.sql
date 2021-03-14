
/*1번*/
SELECT sysdate as "DATE"
FROM dual;

/*2번,3번*/
SELECT employee_id, last_name, salary, 1.15*SALARY as "New Salary"
FROM employees;

/*4번*/

SELECT employee_id, last_name, salary,1.15*SALARY as "New SALARY",  1.15*SALARY - salary as "Increase"
FROM employees;

/*5번*/

SELECT last_name as "NAME", LENGTH(last_name) as "Length"
FROM employees
WHERE INITCAP(last_name) LIKE 'J%'  
OR INITCAP(last_name) LIKE 'A%'
OR INITCAP(last_name) LIKE 'M%'
ORDER BY last_name ASC;


/*6번*/
SELECT * FROM employees;

SELECT last_name, ROUND(MONTHS_BETWEEN(SYSDATE, hire_date)) as MONTHS_WORKED
FROM employees
ORDER BY MONTHS_WORKED DESC;

SELECT * FROM departments;


/*작은 따옴표 x*/

/*7번*/

SELECT last_name||' earns '||TO_CHAR(salary, '$99,999.00')||' monthly but wants ' ||TO_CHAR(salary*3,'$99,999.00') as "Dream Salarie"
FROM employees;

/*자릿수 표현 주의하기*/
SELECT 
*
FROM employees;

/*9번*/

SELECT last_name, hire_date, TO_CHAR(ADD_MONTHS(hire_date, 6), 'DY fmDD Month YYYY', 'NLS_DATE_LANGUAGE=english') as "REVIEW"
FROM employees;

/*NLS-> 영문 변경*/

/*11번*/

SELECT last_name, NVL(TO_CHAR(commission_pct),'NO Commission') as "COMM"
FROM employees
WHERE commission_pct IS NULL;

/*데이터 타입을 맞춰줘야 함 WHERE로 조건 설정*/

/*12번*/
/*RPAD(데이터, 고정길이, 문자) 예를 들어 RPAD('A',4,'B')이면 ABBB로 나옴 */

SELECT salary, last_name||' '|| RPAD(' ',SALARY/1000+1, '*') AS EMPLOYEE_AND_THEIR_SALARIES
FROM employees
ORDER BY EMPLOYEE_AND_THEIR_SALARIES DESC;



SELECT * FROM employees;

/*13번*/

SELECT job_id, DECODE(job_id, 'AD_PRES', 'A',
                    'ST_MAN', 'B',
                    'IT_PROG', 'C',
                    'SA_REP', 'D',
                    'ST_CLERK', 'E'
                    )
                    as "G"
FROM employees;

/*기타 0 표시는?*/