ALTER TABLE employees ALTER hire_date TYPE DATE 
using to_date(hire_date, 'mm/dd/yy');

Select first_name, last_name, hire_date from employees
where hire_date between '1986-01-01' and '1986-12-31';

Select d.dept_no,d.emp_no, e.first_name, e.last_name 
From dept_namager d
Left JOIN employees e on d.emp_no = e.emp_no

Select e.emp_no,e.first_name, e.last_name, d.dept_no, n.dept_name
From dept_emp d
Left JOIN employees e on d.emp_no = e.emp_no
Left JOIN departments n on d.dept_no = n.dept_no

Select first_name, last_name, sex 
From employees
where first_name = 'Hercules'and left(last_name,1)='B';

Select e.emp_no, e.last_name,e.first_name,n.dept_name
From dept_emp d
Left JOIN employees e on d.emp_no = e.emp_no
Left JOIN departments n on d.dept_no = n.dept_no
Where n.dept_name = 'Sales';

Select e.emp_no, e.last_name,e.first_name,n.dept_name
From dept_emp d
Left JOIN employees e on d.emp_no = e.emp_no
Left JOIN departments n on d.dept_no = n.dept_no
Where n.dept_name = 'Sales' OR n.dept_name = 'Development';

Select last_name, count(*)
From employees
Group by last_name
Order by last_name DESC;