
/*1번*/

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

/*2번* department_id=80 select에 꼭 공통인 요소는 안 넣어도 됨, 보여주고 싶은 것에만 보이면 됨 */

SELECT e.job_id, d.location_id
FROM employees e, departments d
WHERE e.department_id = d.department_id
AND e.department_id=80;

/*3번 AND 추가 조건은 꼭 공통으로 들어가지 않아도 됨*/

SELECT e.last_name, d.department_name, d.location_id, l.city
FROM employees e, departments d, locations l
WHERE e.department_id = d.department_id
AND d.location_id = l.location_id
AND e.commission_pct is not null;

/*4번*/

SELECT e.last_name, d.department_name
FROM employees e, departments d
WHERE e.last_name LIKE '%a%';

/*5번*/



/*6번*/



/*7번*/



/*8번*/


