
/*1��*/
SELECT sysdate as "DATE"
FROM dual;

/*2��,3��*/
SELECT employee_id, last_name, salary, 1.15*SALARY as "New Salary"
FROM employees;

/*4��*/

SELECT employee_id, last_name, salary,1.15*SALARY as "New SALARY",  1.15*SALARY - salary as "Increase"
FROM employees;

/*5��*/

SELECT last_name as "NAME", LENGTH(last_name) as "Length"
FROM employees
WHERE INITCAP(last_name) LIKE 'J%'  
OR INITCAP(last_name) LIKE 'A%'
OR INITCAP(last_name) LIKE 'M%'
ORDER BY last_name ASC;

/*���� ����ǥ x*/

/*7��*/

SELECT last_name||' earns '||TO_CHAR(salary, '$99,999.00')||' monthly but wants ' ||TO_CHAR(salary*3,'$99,999.00') as "Dream Salarie"
FROM employees;

/*�ڸ��� ǥ�� �����ϱ�*/
SELECT 
*
FROM employees;

/*9��*/

SELECT last_name, hire_date, TO_CHAR(ADD_MONTHS(hire_date, 6), 'DY fmDD Month YYYY', 'NLS_DATE_LANGUAGE=english') as "REVIEW"
FROM employees;

/*NLS-> ���� ����*/

/*11��*/

SELECT last_name, NVL(TO_CHAR(commission_pct),'NO Commission') as "COMM"
FROM employees
WHERE commission_pct IS NULL;

/*������ Ÿ���� ������� �� WHERE�� ���� ����*/

/*13��*/

SELECT job_id, DECODE(job_id, 'AD_PRES', 'A',
                    'ST_MAN', 'B',
                    'IT_PROG', 'C',
                    'SA_REP', 'D',
                    'ST_CLERK', 'E'
                    )
                    as "G"
FROM employees;

/*��Ÿ 0 ǥ�ô�?*/