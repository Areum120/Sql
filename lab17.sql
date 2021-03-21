/*17 GroupBy ���� ���*/

/*GROUP BY ����*/
SELECT department_id, job_id, SUM(salary), COUNT(employee_id)
FROM employees
GROUP BY department_id, job_id;

/*HAVING �� ����*/

SELECT department_id, AVG(salary)
FROM employees
GROUP BY department_id
HAVING AVG(salary) >9500;

/*ROLLUP, CUBE ��ȣ ���� ���� ���� ���� ���� �� ����*/
/*ROLLUP �׷�ȭ�� ���� �׷�ȭ ��� ���� �Ѱ����� �����ϴ� ��� ����(���� ����)�� ����*/

SELECT department_id, job_id, SUM(salary)
FROM employees
WHERE department_id<60
GROUP BY ROLLUP (department_id, job_id);


/*CUBE �׷�ȭ�� ROLLUP�� ��� �� �� ���� ��ǥȭ ���� �����ϴ� ��� ���� ����*/
SELECT department_id, job_id, SUM(salary)
FROM employees
WHERE department_id <60
GROUP BY CUBE (department_id, job_id);


