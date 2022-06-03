SELECT titles.title, MAX(salaries.salary) FROM titles INNER JOIN salaries ON titles.emp_no = salaries.emp_no GROUP BY titles.title;


SELECT departments.name, dept_emp.emp_no, MAX(salaries.salary) FROM departments, dept_emp INNER JOIN salaries 
ON dept_emp.emp_no = salaries.emp_no AND dept_emp.dept_no = departments.dept_no GROUP BY dept_emp.emp_no 
