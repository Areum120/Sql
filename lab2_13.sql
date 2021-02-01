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
SELECT last_name  as "Employee", salary as "Monthly Salary", department_id
FROM employees
WHERE department_id =20  
or department_id =50
AND salary /*WHERE 2���� �ʿ� ����, �ٷ� �ڿ� �ʿ� Į���� �ٲ� ��*/
BETWEEN 5000  
AND 12000;

/*7��*/
SELECT last_name, hire_date
FROM employees
WHERE hire_date 
LIKE '04/__/__';  /*1994���� ���� ���⼱ ����/��/�� ����, ���Ƿ� 04�⵵�� ����*/

/*8��*/
SELECT last_name, job_id
FROM employees
WHERE manager_id is null;

/*9��*/

SELECT last_name, salary, commission_pct
FROM employees
WHERE commission_pct is NOT null
ORDER BY salary, commission_pct DESC;

/*10��*/
SELECT last_name
FROM employees
WHERE last_name 
LIKE '__a%'; 

/*11��*/
SELECT last_name
FROM employees
WHERE last_name 
LIKE '%a%e%';/*a,e���ÿ�*/

/*12��*/
SELECT last_name,job_id,salary
FROM employees
WHERE (job_id = 'ST_CLERK'
OR job_id = 'SA_REP')
AND NOT salary =2500
AND NOT salary =3500
AND NOT salary =7000;/*2500,3500,7000��ΰ� �ƴϹǷ� and ��� */

/*13��*/

SELECT last_name as "Employee", salary as "Monthly Salary", commission_pct 
FROM employees
WHERE commission_pct =0.2
AND salary = 10500
OR salary = 8600; /*order by�� �� ��Ī ���� ��� ���� */


