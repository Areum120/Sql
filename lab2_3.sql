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
WHERE salary 
NOT
BETWEEN 5000 
AND 12000;/*and�� ���� �� ������ ���ÿ� �����ϴ� ����̾�� �ϴµ� �׷� ����� ���� �� ���� */

/*4��*/
SELECT last_name, job_id, hire_date
FROM employees
WHERE hire_date 
BETWEEN '06/02/20'  /*1998���� ���� ���⼱ ����/��/�� ����, 20-02-1998�� �������ϱ� ������ ��, ���Ƿ� 06�⵵�� ����*/
AND '06/05/01'
ORDER BY hire_date ASC;

/*5��*/
SELECT last_name, department_id
FROM employees
WHERE department_id =20  
or department_id =50/*and�� 20,50���ö�� �Ҹ��ε� �ȵ�*/
ORDER BY last_name ASC;/*���ĺ� ���� ��������*/

/*6��*/
SELECT last_name, salary, department_id
FROM employees
WHERE department_id =20  
or department_id =50
AND salary /*WHERE 2���� �ʿ� ����, �ٷ� �ڿ� �ʿ� Į���� �ٲ� ��*/
BETWEEN 5000  
AND 12000;



SELECT
    *
FROM employees;


