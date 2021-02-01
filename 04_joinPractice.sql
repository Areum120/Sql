
SELECT employees.employee_id, employees.last_name, employees.department_id, departments.department_id, departments.location_id
FROM employees, departments
WHERE employees.department_id =  departments.department_id /*테이블 조인*/
AND last_name = 'Matos';   

SELECT e.employee_id, e.last_name, e.department_id, d.department_id, d.location_id
FROM employees e, departments d
WHERE e.department_id =  d.department_id; /*테이블 조인*/

SELECT e.employee_id, e.last_name, e.department_id, d.department_id, d.location_id
FROM employees e, departments d
WHERE e.department_id =  d.department_id; /*테이블 조인*/

SELECT e.last_name, d.department_name, l.city /*합치려고 하는 칼럼*/
FROM employees e, departments d, locations l
WHERE e.department_id =  d.department_id /*3개 이상 테이블 조인 조건 2개 필요, 그래야 합칠 수 있음, but 2개 이상 조인인 것은 같은 칼럼이 2개가 나오는데 3개 테이블 조인은 왜 안보임?*/
AND d.location_id = l.location_id;

SELECT*FROM employees;
SELECT*FROM departments;
SELECT*FROM locations;

/*비등가조인(동등 연산자가 아닌 연산자) 사용하여 급여 등급 계산 * 교재 job_grades->jobs로 변경*/
SELECT e.last_name, e.salary, j.grade_level
FROM employees e, jobs j
WHERE e.salary
BETWEEN j.lowest_SAL AND j.highest_SAL;

SELECT*FROM jobs;

/*포괄조인-행 조인조건 만족하지 않을 시 결과에 나타나지 않는 행도 볼 수 있음, 더하기 기호(한쪽만 붙일 수 있고, 내가 보고 싶은 쪽의 반대편에 붙인다*/

SELECT e.employee_id, e.last_name, e.department_id, d.department_id, d.location_id
FROM employees e, departments d
WHERE e.department_id(+) =  d.department_id; /*in, or 사용 불가능, 누락된 쪽에 붙임*/

/*자체조인 매니저가 존재하지 않는다고 함*/
SELECT worker.last_name||'works for'||maneger.last_name
FROM employees worker, employees manager
WHERE worker.manager_id = manager.employee_id;






