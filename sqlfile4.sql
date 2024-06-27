create database db4;
use db4;
CREATE TABLE employees ( 
	EMPLOYEE_ID INT PRIMARY KEY, 
    FIRST_NAME VARCHAR(50), 
    LAST_NAME VARCHAR(50), 
    EMAIL VARCHAR(50), 
    PHONE_NUMBER VARCHAR(15), 
    HIRE_DATE DATE, 
    JOB_ID VARCHAR(10), 
    SALARY DECIMAL(10, 2) );
show tables;
select * from employees;
INSERT INTO employees (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY) VALUES (100, 'Steven', 'King', 'SKING', '515.123.4567', '1987-06-17', 'AD_PRES', 24000.00), 
																												  (101, 'Neena', 'Kochhar', 'NKOCHHAR', '515.123.4568', '1987-06-18', 'AD_VP', 17000.00), 
                                                                                                                  (102, 'Lex', 'De Haan', 'LDEHAAN', '515.123.4569', '1987-06-19', 'AD_VP', 17000.00), 
                                                                                                                  (103, 'Alexander', 'Hunold', 'AHUNOLD', '590.423.4567', '1987-06-20', 'IT_PROG', 9000.00);
												SELECT JOB_ID, COUNT(*) AS number_of_employees FROM employees GROUP BY JOB_ID;