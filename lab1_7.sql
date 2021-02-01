    SELECT * 
    FROM employees;
    /*1장 연습문제 답변*/
    /*6번 */
    DESC departments;/*구조 표시*/
    SELECT*
    FROM departments /*테이블 모든 데이터 검색*/
    /*7번*/
    DESC employees;
    SELECT*
    FROM employees;
    /*사원번호, 이름, 업무코드, 입사일 순, HIRE_DATE에 STARTDATE 별칭 입력*/
    SELECT employee_id, last_name, job_id, hire_date 
    FROM employees;
    SELECT hire_date AS STARTDATE 
    FROM employees; /*hire_date 단독열만 표시*/
    SELECT employee_id, last_name, job_id, hire_date from 
    employees;/*별칭으로 검색하면 오류, 원 칼럼명 입력해야 검색 됨*/
    SELECT employee_id, last_name, job_id, hire_date as STARTDATE 
    FROM employees; /*같이 쓰면 표현 */
    /*8번 저장 완료*/
    /*9번* job_id columns -> 중복 제거*/
    SELECT DISTINCT job_id 
    FROM employees; /*distict 다음에 여러 열 지정 가능*/
    /*10번*/
    SELECT employee_id AS "EMP #", last_name AS "Employee", job_id AS "job", hire_date AS "Hire Date" 
    FROM employees; /*공백, 특수문자, 대소문자 구문 경우 큰따옴표 사용*/
    /*11번*/
    SELECT last_name||','||job_id AS "Employee and Title" /*날짜, 문자 특수문자는 작은 따옴표로 묶기, 숫자 제외*/
    FROM employees;
    /*12번* 모든 데이터 표시 각 열 쉼표 구분, 열 이름 THE_OUTPUT*/
    SELECT employee_id||','||first_name||','||last_name||','||email||','||phone_number||','||hire_date||','||job_id||','||salary||','||commission_pct||','||manager_id||','||department_id AS THE_OUTPUT 
    FROM employees;
   
