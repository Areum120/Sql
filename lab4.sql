
/*1��*/

SELECT employees.last_name, employees.department_id, departments.department_id, departments.department_name
FROM employees, departments
WHERE employees.department_id=departments.department_id;

SELECT
    *
FROM employees;

SELECT
    *
FROM departments;

SELECT
    *
FROM locations;

/*2��* department_id=80 select�� �� ������ ��Ҵ� �� �־ ��, �����ְ� ���� �Ϳ��� ���̸� �� */

SELECT e.job_id, d.location_id
FROM employees e, departments d
WHERE e.department_id = d.department_id
AND e.department_id=80;

/*3�� AND �߰� ������ �� �������� ���� �ʾƵ� ��*/

SELECT e.last_name, d.department_name, d.location_id, l.city
FROM employees e, departments d, locations l
WHERE e.department_id = d.department_id
AND d.location_id = l.location_id
AND e.commission_pct is not null;

/*4��*/

SELECT e.last_name, d.department_name
FROM employees e, departments d
WHERE e.last_name LIKE '%a%';

/*5��*/



/*6��*/



/*7��*/



/*8��*/


