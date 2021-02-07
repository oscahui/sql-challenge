DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_namager;
DROP TABLE IF EXISTS titles;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS dept_emp;

CREATE TABLE departments (
	dept_no VARCHAR(4) NOT NULL PRIMARY KEY,
	dept_name VARCHAR(45) NOT NULL
);

CREATE TABLE dept_manager (
  	dept_no VARCHAR(4) NOT NULL,
	emp_no INTEGER NOT NULL
 );
 
CREATE TABLE titles (
  title_id VARCHAR(5) NOT NULL PRIMARY KEY,
  title VARCHAR NOT NULL
);

CREATE TABLE employees (
    emp_no INTEGER NOT NULL PRIMARY KEY,
    emp_title VARCHAR NOT NULL,
    birth_date VARCHAR NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR(1) NOT NULL,
	hire_date VARCHAR NOT NULL
);

CREATE TABLE salaries (
	emp_no integer NOT NULL PRIMARY KEY,
	salary INTEGER NOT NULL
);

CREATE TABLE dept_emp (
  emp_no integer NOT NULL PRIMARY KEY,
  dept_no VARCHAR(4) NOT NULL
);

