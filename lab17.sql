/*17 GroupBy 향상된 기능*/

/*GROUP BY 복습*/
SELECT department_id, job_id, SUM(salary), COUNT(employee_id)
FROM employees
GROUP BY department_id, job_id;

/*HAVING 절 복습*/

SELECT department_id, AVG(salary)
FROM employees
GROUP BY department_id
HAVING AVG(salary) >9500;

/*ROLLUP, CUBE 상호 참조 열에 따라 상위 집계 행 산출*/
/*ROLLUP 그룹화는 정규 그룹화 행과 하위 총계합을 포함하는 결과 집합(누적 집계)을 산출*/

SELECT department_id, job_id, SUM(salary)
FROM employees
WHERE department_id<60
GROUP BY ROLLUP (department_id, job_id);


/*CUBE 그룹화는 ROLLUP의 결과 행 및 교차 도표화 행을 포함하는 결과 집합 산출*/
SELECT department_id, job_id, SUM(salary)
FROM employees
WHERE department_id <60
GROUP BY CUBE (department_id, job_id);


