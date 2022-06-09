SELECT salaries.salary,departments.dept_name FROM salaries,departments,dept_emp 
WHERE (salaries.salary = (SELECT max(salaries.salary) FROM salaries)) AND (salaries.emp_no = dept_emp.emp_no) and (departments.dept_no = dept_emp.dept_no);
