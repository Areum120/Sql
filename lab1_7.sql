    SELECT * 
    FROM employees;
    /*1�� �������� �亯*/
    /*6�� */
    DESC departments;/*���� ǥ��*/
    SELECT*
    FROM departments /*���̺� ��� ������ �˻�*/
    /*7��*/
    DESC employees;
    SELECT*
    FROM employees;
    /*�����ȣ, �̸�, �����ڵ�, �Ի��� ��, HIRE_DATE�� STARTDATE ��Ī �Է�*/
    SELECT employee_id, last_name, job_id, hire_date 
    FROM employees;
    SELECT hire_date AS STARTDATE 
    FROM employees; /*hire_date �ܵ����� ǥ��*/
    SELECT employee_id, last_name, job_id, hire_date from 
    employees;/*��Ī���� �˻��ϸ� ����, �� Į���� �Է��ؾ� �˻� ��*/
    SELECT employee_id, last_name, job_id, hire_date as STARTDATE 
    FROM employees; /*���� ���� ǥ�� */
    /*8�� ���� �Ϸ�*/
    /*9��* job_id columns -> �ߺ� ����*/
    SELECT DISTINCT job_id 
    FROM employees; /*distict ������ ���� �� ���� ����*/
    /*10��*/
    SELECT employee_id AS "EMP #", last_name AS "Employee", job_id AS "job", hire_date AS "Hire Date" 
    FROM employees; /*����, Ư������, ��ҹ��� ���� ��� ū����ǥ ���*/
    /*11��*/
    SELECT last_name||','||job_id AS "Employee and Title" /*��¥, ���� Ư�����ڴ� ���� ����ǥ�� ����, ���� ����*/
    FROM employees;
    /*12��* ��� ������ ǥ�� �� �� ��ǥ ����, �� �̸� THE_OUTPUT*/
    SELECT employee_id||','||first_name||','||last_name||','||email||','||phone_number||','||hire_date||','||job_id||','||salary||','||commission_pct||','||manager_id||','||department_id AS THE_OUTPUT 
    FROM employees;
   
