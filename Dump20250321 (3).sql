-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: employees

-- Table structure for table `attendance`

DROP TABLE IF EXISTS `attendance`;

CREATE TABLE `attendance` (
  `attendance_id` int NOT NULL,
  `employee_id` int DEFAULT NULL,
  `attendance_date` date DEFAULT NULL,
  `Status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`attendance_id`),
  KEY `employee_id` (`employee_id`),
  CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


-- Dumping data for table `attendance`

LOCK TABLES `attendance` WRITE;
INSERT INTO `attendance` VALUES (31,101,'2022-05-01','Present'),(32,102,'2022-05-01','Present'),(33,103,'2022-05-01','Absent'),(34,104,'2022-05-01','Present'),(35,105,'2022-05-01','Present'),(36,106,'2022-05-02','Present'),(37,107,'2022-05-02','Absent'),(38,108,'2022-05-02','Present'),(39,109,'2022-05-02','Present'),(40,110,'2022-05-02','Absent'),(41,111,'2022-05-02','Present'),(42,112,'2022-05-02','Absent'),(43,113,'2022-05-02','Present'),(44,114,'2022-05-02','Present'),(45,115,'2022-05-02','Absent'),(46,116,'2022-05-02','Present'),(47,117,'2022-05-02','Absent'),(48,118,'2022-05-02','Present'),(49,119,'2022-05-02','Present'),(50,120,'2022-05-02','Absent');
UNLOCK TABLES;

-- Table structure for table `benefits`

DROP TABLE IF EXISTS `benefits`;

CREATE TABLE `benefits` (
  `benefit_id` int NOT NULL,
  `employee_id` int DEFAULT NULL,
  `benefit_name` varchar(50) DEFAULT NULL,
  `eligible` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`benefit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table `benefits`


LOCK TABLES `benefits` WRITE;

INSERT INTO `benefits` VALUES (61,101,'Health Insurance','Yes'),(62,102,'Paid Time Off','No'),(63,103,'Paid Time Off','Yes'),(64,104,'Paid Time Off','No'),(65,105,'Health Insurance','Yes'),(66,116,'Retirement Plan','Yes'),(67,119,'Health Insurance','Yes'),(68,111,'Life Insurance','Yes'),(69,109,'Stock Options','Yes'),(70,116,'Gym Membership','Yes');
UNLOCK TABLES;

-- Table structure for table `departments`

DROP TABLE IF EXISTS `departments`;

CREATE TABLE `departments` (
  `department_id` int NOT NULL,
  `department_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;

INSERT INTO `departments` VALUES (1,'Engineering'),(2,'Human Resources'),(3,'Marketing'),(4,'Sales'),(5,'Customer Support');
UNLOCK TABLES;


-- Table structure for table `employeeprojects`


DROP TABLE IF EXISTS `employeeprojects`;

CREATE TABLE `employeeprojects` (
  `employee_id` int NOT NULL,
  `project_id` int NOT NULL,
  `Role` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`employee_id`,`project_id`),
  KEY `project_id` (`project_id`),
  CONSTRAINT `employeeprojects_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


--
-- Dumping data for table `employeeprojects`
--

LOCK TABLES `employeeprojects` WRITE;
INSERT INTO `employeeprojects` VALUES (101,21,'Developer'),(102,22,'Project Manager'),(103,21,'HR Coordinator'),(104,23,'HR Lead'),(105,23,'Marketing Specialist'),(111,24,'Data Analyst'),(112,26,'Lead Engineer'),(117,23,'Marketing Manager'),(118,25,'Recruiter'),(120,27,'Security Consultant');
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
CREATE TABLE `employees` (
  `employee_id` int NOT NULL,
  `emp_Name` varchar(50) DEFAULT NULL,
  `department_id` int DEFAULT NULL,
  `job_title` varchar(50) DEFAULT NULL,
  `hire_date` date DEFAULT NULL,
  `emp_age` int DEFAULT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
INSERT INTO `employees` VALUES (101,'John Doe',1,'Software Engineer','2022-01-10',30),(102,'Jane Smith',1,'Product Manager','2021-03-15',28),(103,'Michael Johnson',2,'HR Specialist','2020-05-20',35),(104,'Emily Brown',2,'HR Manager','2018-08-30',40),(105,'Daniel Williams',3,'Marketing Coordinator','2019-09-10',29),(106,'Alice Green',1,'Data Analyst','2022-02-15',26),(107,'Robert White',3,'Marketing Manager','2020-06-10',38),(108,'Laura Black',4,'Sales Manager','2019-07-25',45),(109,'James Brown',5,'Customer Support Representative','2021-09-14',32),(110,'Emma Wilson',3,'Social Media Manager','2018-11-19',34),(111,'David Lee',1,'Backend Developer','2020-03-22',31),(112,'Sophia Martinez',2,'HR Generalist','2017-12-11',41),(113,'Oliver King',4,'Sales Manager','2022-04-05',37),(114,'Mason Scott',1,'Frontend Developer','2021-06-07',27),(115,'Liam Harris',2,'HR Assistant','2019-10-12',33),(116,'Isabella Walker',5,'Help Desk Technician','2018-09-08',39),(117,'Ethan Hall',4,'Sales Analyst','2021-11-03',30),(118,'Mia Young',2,'HR Consultant','2020-02-28',36),(119,'Noah Allen',3,'Marketing Analyst','2019-01-15',42),(120,'Ava Adams',5,' Customer Support Representative','2023-05-20',25),(121,'Deepan',3,'Marketing Analyst','2022-02-15',22);
UNLOCK TABLES;

--
-- Table structure for table `performancereviews`
--

DROP TABLE IF EXISTS `performancereviews`;
CREATE TABLE `performancereviews` (
  `review_id` int NOT NULL,
  `employee_id` int DEFAULT NULL,
  `comments` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`review_id`),
  KEY `employee_id` (`employee_id`),
  CONSTRAINT `performancereviews_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `performancereviews`
--

LOCK TABLES `performancereviews` WRITE;
INSERT INTO `performancereviews` VALUES (51,101,'Consistent performance and great teamwork.'),(52,102,'Outstanding leadership and problem-solving skills.'),(53,103,'Good performance but needs improvement in communication.'),(54,104,'Strong HR management and employee relations.'),(55,105,'Great marketing strategies and execution.');
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
CREATE TABLE `projects` (
  `project_id` int NOT NULL,
  `employee_id` int DEFAULT NULL,
  `project_name` varchar(50) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  PRIMARY KEY (`project_id`),
  KEY `employee_id` (`employee_id`),
  CONSTRAINT `projects_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
INSERT INTO `projects` VALUES (21,101,'Website Redesign','2022-02-01','2022-05-31'),(22,110,'HR System Upgrade','2021-04-01','2021-12-31'),(23,116,'Marketing Campaign','2020-06-15','2020-12-15'),(24,107,'Cloud Migration','2023-01-01','2023-12-31'),(25,118,'New HR Policy','2022-03-15','2022-09-15'),(26,111,'AI Implementation','2023-06-01','2024-06-01'),(27,108,'Cybersecurity Enhancement','2022-09-01','2023-09-01');
UNLOCK TABLES;

--
-- Table structure for table `salaries`
--

DROP TABLE IF EXISTS `salaries`;
CREATE TABLE `salaries` (
  `salary_id` int NOT NULL,
  `employee_id` int DEFAULT NULL,
  `salary_amount` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`salary_id`),
  KEY `employee_id` (`employee_id`),
  CONSTRAINT `salaries_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `salaries`
--

LOCK TABLES `salaries` WRITE;
INSERT INTO `salaries` VALUES (11,101,70000.00),(12,102,80000.00),(13,103,60000.00),(14,104,90000.00),(15,105,65000.00),(16,106,68000.00),(17,107,85000.00),(18,108,55000.00),(19,109,72000.00),(20,110,63000.00),(21,111,75000.00),(22,112,58000.00),(23,113,78000.00),(24,114,85000.00),(25,115,55000.00),(26,116,72000.00),(27,117,63000.00),(28,118,75000.00),(29,119,58000.00),(30,120,58000.00);
UNLOCK TABLES;

--
-- Temporary view structure for view `total_num_of_emp`
--

DROP TABLE IF EXISTS `total_num_of_emp`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `uniquejobtitles`
--

DROP TABLE IF EXISTS `uniquejobtitles`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'employees'
--

DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_new_data`( in employee_id1 INT,in  emp_Name1 VARCHAR(50),in department_id1 INT,in job_title1 VARCHAR(50),in hire_date1 DATE,emp_age1 int)
begin
insert into Employees(employee_id ,emp_Name ,
    department_id ,
    job_title ,
    hire_date ,
    emp_age)
values ( employee_id1, emp_Name1, department_id1 , job_title1 , hire_date1,emp_age1);
select * from employees;
end ;;
DELIMITER ;
----------

DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `all_emp_details`()
begin
select * from employees;
end ;;
DELIMITER ;
-------------

DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `avg_salary_of_dept`()
begin
select   department_name ,avg(salary_amount) from Employees
join Departments
ON Employees.department_id = Departments.department_id 
join Salaries
on Salaries.employee_id = Employees.employee_id
group by department_name 
order by avg(salary_amount) ;
end ;;
DELIMITER ;

---------
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `both_in_hr_and_above_salary`(in dept_name varchar(20), in salary int)
begin
select emp_name , department_name,salary_amount from employees
join departments
on departments.department_id = employees.department_id
join salaries
on salaries.employee_id = employees.employee_id
where department_name = dept_name and salary_amount > salary; 
end ;;
DELIMITER ;
-------------

DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eligible_of_benifits`(in elig varchar (10))
begin
select emp_name , eligible  from employees
join Benefits
on Benefits.employee_id = employees.employee_id
where eligible = elig;
end ;;
DELIMITER ;
-------------

DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `emp_absent_on_date`(in  absenties varchar(20) ,in on_date date)
begin
select emp_Name , attendance_date,Status as abset from Employees
join Attendance
on Employees.employee_id= Attendance.employee_id
where Status = absenties and attendance_date = on_date;
end ;;
DELIMITER ;
---------

DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `emp_assign_pro`()
begin
select emp_Name ,project_name 
from employees
join Projects
on Employees.employee_id = Projects.employee_id;
end ;;
DELIMITER ;
----------
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `emp_attendance`(in emp_attendance varchar (10) )
begin
select emp_Name , attendance_date,Status as abset from Employees
join Attendance
on Employees.employee_id= Attendance.employee_id
where Status = emp_attendance ;
end ;;
DELIMITER ;
--------

DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `emp_dept_name`()
begin
select emp_Name , department_name from employees
join Departments
on Employees.department_id = Departments.department_id;
end ;;
DELIMITER ;
----------------
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `emp_no_assing_project`()
begin
select emp_name from employees
where employee_id not in (select employee_id from employeeprojects);
end ;;
DELIMITER ;
-------------
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `emp_project_name`(in proj_name varchar(50))
begin 
select emp_name from employees
where employee_id = (select employee_id from projects where project_name = proj_name ) ;
end ;;
DELIMITER ;
-----------
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `emp_salary_dept`()
begin
select emp_Name,salary_amount,department_name  from Employees
join Salaries
on Salaries.employee_id = Employees.employee_id
join Departments
on Departments.department_id = Employees.department_id;
end ;;
DELIMITER ;

------------
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `emp_salery_range`(
in enter_salary_value int)
begin
select emp_name,salary_amount from Employees
join Salaries
on Employees.employee_id = Salaries.employee_id
where salary_amount > enter_salary_value
order by salary_amount desc;
end ;;
DELIMITER ;
---------
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `emp_work_dept`(
in entry_dept_name varchar(20))
begin 
select emp_Name ,department_name from employees 
join Departments
on Departments.department_id = Employees.department_id
where department_name =  entry_dept_name;
end ;;
DELIMITER ;
-------------------
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `highest_salary`()
begin
select max(salary_amount) as heights_salary from employees
join Salaries
on Salaries.employee_id = Employees.employee_id ;
end ;;
DELIMITER ;
----------
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `no_of_emp_each_dept`()
begin
select distinct department_name ,count(*) as count_of_each_dept from Employees
join Departments
ON Employees.department_id = Departments.department_id
group by department_name;
end ;;
DELIMITER ;
-------------
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `salary_grater_than_avg_salary`()
begin
select emp_name, salary_amount from employees
join salaries
on salaries.employee_id = employees.employee_id
where salary_amount > (select avg(salary_amount ) as avg_salary from salaries);
end ;;
DELIMITER ;
-----------
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Update_employee_age`(IN emp_id INT, IN age INT)
BEGIN
    UPDATE Employees
    SET emp_age = age
    WHERE employee_id = emp_id;
END ;;
DELIMITER ;


-- Final view structure for view `total_num_of_emp`

-- Final view structure for view `uniquejobtitles`

-- Dump completed on 2025-03-21 18:23:50
