select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salaries
from employees
join salaries
on employees.emp_no = salaries.emp_no;

select first_name, last_name, hire_date
from employees
where hire_date between '1986-01-01' and '1986-12-31';

select departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.first_name, employees.last_name
from departments
join dept_manager
on departments.dept_no = dept_manager.dept_no
join employees
on dept_manager.emp_no = employees.emp_no;

select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
from dept_emp
join employees
on dept_emp.emp_no = employees.emp_no
join departments
on dept_emp.dept_no = departments.dept_no;

select first_name, last_name, sex
from employees
where first_name = 'Hercules'
and last_name like 'B%';

select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
from dept_emp
join employees
on dept_emp.emp_no = employees.emp_no
join departments
on dept_emp.dept_no = departments.dept_no
where departments.dept_name = 'Sales';

select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
from dept_emp
join employees
on dept_emp.emp_no = employees.emp_no
join departments
on dept_emp.dept_no = departments.dept_no
where departments.dept_name = 'Sales' or departments.dept_name ='Development';

select last_name, count (last_name) as "frequency"
from employees
group by last_name
order by count (last_name) desc;