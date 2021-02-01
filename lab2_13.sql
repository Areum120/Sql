/*2장 연습 2*/
/*1번*/
SELECT last_name, salary
FROM employees
WHERE salary >=12000;
/*2번*/
SELECT last_name, department_id
FROM employees
WHERE employee_id =176;
/*3번*/
SELECT last_name, salary
FROM employees
WHERE salary 
NOT
BETWEEN 5000 
AND 12000;/*and를 쓰면 두 조건을 동시에 만족하는 사원이어야 하는데 그런 사원이 있을 수 없음 */

/*4번*/
SELECT last_name, job_id, hire_date
FROM employees
WHERE hire_date 
BETWEEN '06/02/20'  /*1998년이 없음 여기선 연도/월/일 순임, 20-02-1998로 뽑으려니까 오류가 남, 임의로 06년도로 설정*/
AND '06/05/01'
ORDER BY hire_date ASC;

/*5번*/
SELECT last_name, department_id
FROM employees
WHERE department_id =20  
or department_id =50/*and는 20,50동시라는 소리인데 안됨*/
ORDER BY last_name ASC;/*알파벳 순은 오름차순*/

/*6번*/
SELECT last_name  as "Employee", salary as "Monthly Salary", department_id
FROM employees
WHERE department_id =20  
or department_id =50
AND salary /*WHERE 2번쓸 필요 없음, 바로 뒤에 필요 칼럼명 바뀌어도 됨*/
BETWEEN 5000  
AND 12000;

/*7번*/
SELECT last_name, hire_date
FROM employees
WHERE hire_date 
LIKE '04/__/__';  /*1994년이 없음 여기선 연도/월/일 순임, 임의로 04년도로 설정*/

/*8번*/
SELECT last_name, job_id
FROM employees
WHERE manager_id is null;

/*9번*/

SELECT last_name, salary, commission_pct
FROM employees
WHERE commission_pct is NOT null
ORDER BY salary, commission_pct DESC;

/*10번*/
SELECT last_name
FROM employees
WHERE last_name 
LIKE '__a%'; 

/*11번*/
SELECT last_name
FROM employees
WHERE last_name 
LIKE '%a%e%';/*a,e동시에*/

/*12번*/
SELECT last_name,job_id,salary
FROM employees
WHERE (job_id = 'ST_CLERK'
OR job_id = 'SA_REP')
AND NOT salary =2500
AND NOT salary =3500
AND NOT salary =7000;/*2500,3500,7000모두가 아니므로 and 사용 */

/*13번*/

SELECT last_name as "Employee", salary as "Monthly Salary", commission_pct 
FROM employees
WHERE commission_pct =0.2
AND salary = 10500
OR salary = 8600; /*order by만 열 별칭 기준 사용 가능 */


