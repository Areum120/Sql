
/* 5�� */

/*5��*/

SELECT Job_id, MAX(salary)as "Maximum", MIN(salary)as "Minimum", SUM(salary)as "Sum", AVG(salary) as "Average"
FROM employees
GROUP BY job_id;

/*7��*/
SELECT COUNT(manager_id)as "Number of Managers"
FROM employees
GROUP BY manager_id;

SELECT
*
FROM
employees;

/*9��*/

SELECT Manager_id, MIN(salary)
FROM employees
WHERE Manager_id is NOT NULL
GROUP BY Manager_id
HAVING MIN(salary)>=6000
ORDER BY MIN(salary)DESC; 

/*11��*/

/*�ѻ���� total, 02 03 04 05 �� ������ �Ի� ��� ��*/
/*���� �ϱ�*/

SELECT COUNT(employee_id) as "TOTAL", COUNT(Hire_date)
FROM employees
GROUP BY employee_id, hire_Date;


