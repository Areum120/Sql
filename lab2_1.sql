/*2장 연습 2*/
/*1번*/
SELECT last_name, salary
FROM employees
WHERE salary >=12000;
/*2번*/
SELECT last_name, department_id
FROM employees
WHERE employee_id =176;
/*3번*/
SELECT last_name, salary
FROM employees
WHERE salary <5000 
OR salary >12000;/*and를 쓰면 두 조건을 동시에 만족하는 사원이어야 하는데 그런 사원이 있을 수 없음 */

SELECT
    *
FROM employees;


