
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