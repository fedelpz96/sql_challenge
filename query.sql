-- SQL CHALLENGE

-- DONE: 	Data imported

-- DONE: 	List the following details of each employee: 
-- 			employee number, last name, first name, sex, and salary.
select employees.emp_no, employees.last_name, employees.first_name, employees.sex , salaries.salary
from employees
inner join salaries
on employees.emp_no=salaries.emp_no;


-- DONE:	List first name, last name, and hire date 
-- 			for employees who were hired in 1986.
select first_name, last_name, hire_date
from employees
where hire_date like '%86';


-- DONE:	List the manager of each department with the following information: 
-- 			department number, department name, the manager's employee number, last name, first name.
select dept_emp.dept_no, departments.dept_name, employees.emp_no, employees.last_name, employees.first_name, employees.emp_title_id
from employees
inner join dept_emp on employees.emp_no=dept_emp.emp_no
inner join departments on dept_emp.dept_no=departments.dept_no
where emp_title_id like 'm0001';


-- DONE: 	List the department of each employee with the following information: 
-- 			employee number, last name, first name, and department name.
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
inner join dept_emp on employees.emp_no=dept_emp.emp_no
inner join departments on dept_emp.dept_no=departments.dept_no;


-- DONE:	List first name, last name, and sex for employees whose 
-- 			first name is "Hercules" and last names begin with "B."
select first_name, last_name, sex
from employees
where first_name like 'Hercules'
and last_name like 'B%';


-- DONE: 	List all employees in the Sales department, including their 
-- 			employee number, last name, first name, and department name.
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
inner join dept_emp on employees.emp_no=dept_emp.emp_no
inner join departments on dept_emp.dept_no=departments.dept_no
where dept_emp.dept_no like 'd007';


-- DONE:	List all employees in the Sales and Development departments, including their 
-- 			employee number, last name, first name, and department name.
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name 
from employees
inner join dept_emp on employees.emp_no=dept_emp.emp_no
inner join departments on dept_emp.dept_no=departments.dept_no
where dept_emp.dept_no like 'd007' 
or dept_emp.dept_no like 'd005';


-- DONE:	In descending order, list the frequency count of employee last names, 
-- 			i.e., how many employees share each last name.
select last_name, count(last_name) as "count_last_name"
from employees
group by last_name
order by "count_last_name" desc;
