
SELECT employees.employee_id, employees.last_name, employees.department_id, departments.department_id, departments.location_id
FROM employees, departments
WHERE employees.department_id =  departments.department_id /*���̺� ����*/
AND last_name = 'Matos';   

SELECT e.employee_id, e.last_name, e.department_id, d.department_id, d.location_id
FROM employees e, departments d
WHERE e.department_id =  d.department_id; /*���̺� ����*/

SELECT e.employee_id, e.last_name, e.department_id, d.department_id, d.location_id
FROM employees e, departments d
WHERE e.department_id =  d.department_id; /*���̺� ����*/

SELECT e.last_name, d.department_name, l.city /*��ġ���� �ϴ� Į��*/
FROM employees e, departments d, locations l
WHERE e.department_id =  d.department_id /*3�� �̻� ���̺� ���� ���� 2�� �ʿ�, �׷��� ��ĥ �� ����, but 2�� �̻� ������ ���� ���� Į���� 2���� �����µ� 3�� ���̺� ������ �� �Ⱥ���?*/
AND d.location_id = l.location_id;

SELECT*FROM employees;
SELECT*FROM departments;
SELECT*FROM locations;

/*������(���� �����ڰ� �ƴ� ������) ����Ͽ� �޿� ��� ��� * ���� job_grades->jobs�� ����*/
SELECT e.last_name, e.salary, j.grade_level
FROM employees e, jobs j
WHERE e.salary
BETWEEN j.lowest_SAL AND j.highest_SAL;

SELECT*FROM jobs;

/*��������-�� �������� �������� ���� �� ����� ��Ÿ���� �ʴ� �൵ �� �� ����, ���ϱ� ��ȣ(���ʸ� ���� �� �ְ�, ���� ���� ���� ���� �ݴ��� ���δ�*/

SELECT e.employee_id, e.last_name, e.department_id, d.department_id, d.location_id
FROM employees e, departments d
WHERE e.department_id(+) =  d.department_id; /*in, or ��� �Ұ���, ������ �ʿ� ����*/

/*��ü���� �Ŵ����� �������� �ʴ´ٰ� ��*/
SELECT worker.last_name||'works for'||maneger.last_name
FROM employees worker, employees manager
WHERE worker.manager_id = manager.employee_id;






