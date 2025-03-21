# Employee Management Database

# Overview
This project is an SQL-based Employee Management System that organizes employee-related data into multiple tables, enabling efficient queries and management of employee details, departments, salaries, projects, attendance, performance reviews, and benefits.

# Database Schema
The database consists of the following tables:

1. Employees - Stores employee details such as employee ID, name, department, job title, and hire date.
2. Departments - Lists different departments within the company.
3. Salaries - Stores salary details of employees.
4. Projects - Stores project assignments and their timelines.
5. EmployeeProjects - Manages employee assignments to projects and their roles.
6. Attendance - Tracks employee attendance records.
7. PerformanceReviews - Stores performance review data.
8. **Benefits** - Lists employee benefits and eligibility.

# Features
- Stored Procedures: Used for retrieving and processing data efficiently.
- Views: Created for better data presentation and easy access to critical insights.
- Foreign Keys: Ensuring referential integrity between tables.

# Stored Procedures
The project includes various stored procedures for common queries:

1. all_emp_details() - Retrieves all employee details.
2. emp_work_dept(entry_dept_name) - Fetches employees in a specific department.
3. emp_salery_range(enter_salary_value) - Lists employees earning more than a given salary.
4. emp_dept_name() - Retrieves employees with their department names.
5. emp_assign_pro() - Lists employees and their assigned projects.
6. emp_attendance(emp_attendance) - Retrieves employees with a specific attendance status.
7. emp_absent_on_date(absenties, on_date) - Lists employees absent on a specific date.
8. emp_salary_dept() - Retrieves employees with their salary and department.
9. avg_salary_of_dept() - Calculates the average salary in each department.
10. highest_salary() - Finds the highest salary in the company.
11. no_of_emp_each_dept() - Counts employees in each department.
12. eligible_of_benifits(elig) - Finds employees eligible for benefits.
13. both_in_hr_and_above_salary(dept_name, salary) - Lists HR employees earning above a certain salary.
14. salary_grater_than_avg_salary() - Finds employees earning above the average salary.
15. emp_project_name(proj_name) - Retrieves employees working on a specific project.
16. emp_no_assing_project() - Lists employees without assigned projects.

## Views
- UniqueJobTitles - Displays distinct job titles.
- total_num_of_emp - Counts the total employees in the company.

# Installation and Setup
1. Install MySQL Server and MySQL Workbench.
2. Create the database and tables using the provided SQL script.
3. Insert sample data.
4. Execute the stored procedures and views as needed.

# Usage
- Run SQL queries to retrieve relevant employee data.
- Use views for simplified data retrieval.


