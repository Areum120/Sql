/*2�� ���� 2*/
/*1��*/
SELECT last_name, salary
FROM employees
WHERE salary >=12000;
/*2��*/
SELECT last_name, department_id
FROM employees
WHERE employee_id =176;
/*3��*/
SELECT last_name, salary
FROM employees
WHERE salary <5000 
OR salary >12000;/*and�� ���� �� ������ ���ÿ� �����ϴ� ����̾�� �ϴµ� �׷� ����� ���� �� ���� */

SELECT
    *
FROM employees;


