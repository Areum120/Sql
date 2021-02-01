
/*1번*/
SELECT sysdate as "DATE"
FROM dual;

/*2번,3번*/
SELECT employee_id, last_name, salary, 1.15*SALARY as "New Salary"
FROM employees;

/*4번*/

SELECT employee_id, last_name, salary,1.15*SALARY as "New Salary", (New Salary - salary)as "Increase"
FROM employees e;



/*5번*/


