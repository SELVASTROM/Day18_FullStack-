-- 1. Create Database
CREATE DATABASE  student_credentials;
USE student_credentials;
CREATE TABLE student_details (
    id INT AUTO_INCREMENT PRIMARY KEY,
    student_name VARCHAR(50),
    student_age INT,
    student_rollno INT,
    student_email_id VARCHAR(100),
    student_DOB DATE,
    student_father_name VARCHAR(100),
    student_mother_name VARCHAR(100),
    student_dept VARCHAR(20),
    student_gender VARCHAR(10)
);
INSERT INTO student_details (student_name, student_age, student_rollno, student_email_id, student_DOB, student_father_name, student_mother_name, student_dept, student_gender) VALUES
('Selvamurugan', 20, 101, 'selvamurugan@example.com', '2004-06-27', 'Kumaravel', 'Geetha', 'IT', 'Male'),
('Sri Anuna Devi', 18, 102, 'srianuna@example.com', '2006-11-30', 'Kumaravel', 'Geetha', 'ECE', 'Female'),
('Brintha', 10, 103, 'brintha@example.com', '2012-02-14', 'Kumaravel', 'Geetha', 'EEE', 'Female'),
('Namitha', 11, 104, 'namitha@example.com', '2001-04-16', 'Kanjakarupu', 'Ganga', 'MBA', 'Female'),
('Sarathi', 12, 105, 'sarathi@example.com', '2002-06-17', 'Kathukarupu', 'Kalyani', 'IT', 'Male'),
('Kamal', 21, 106, 'kamal@example.com', '2004-06-23', 'Kavin', 'Kamala', 'IT', 'Male'),
('Divya', 19, 107, 'divya@example.com', '2005-09-15', 'Ravi', 'Uma', 'CSE', 'Female'),
('Vignesh', 22, 108, 'vignesh@example.com', '2003-03-08', 'Raj', 'Mala', 'IT', 'Male'),
('Aishwarya', 20, 109, 'aishwarya@example.com', '2004-01-12', 'Prakash', 'Latha', 'ECE', 'Female'),
('Saran', 17, 110, 'saran@example.com', '2007-07-20', 'Ganesh', 'Meena', 'EEE', 'Male');
SELECT * FROM student_details;
select student_name,student_dept
from student_details
where student_age>15 AND student_gender='male' ;
-- and student_dept='IT' and student_DOB<'2000-01-01';



CREATE TABLE Student (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    department VARCHAR(50),
    marks INT,
    city VARCHAR(50)
);
INSERT INTO Student (name, department, marks, city) VALUES
('Aarav Reddy', 'CSE', 92, 'Chennai'),
('Divya Suresh', 'ECE', 85, 'Bangalore'),
('Kiran Kumar', 'IT', 78, 'Hyderabad'),
('Meena Raj', 'EEE', 91, 'Pune'),
('Rahul Nair', 'MECH', 74, 'Kochi'),
('Anjali Sharma', 'CSE', 88, 'Delhi'),
('Siddharth Singh', 'IT', 95, 'Noida'),
('Pooja Iyer', 'ECE', 82, 'Mumbai'),
('Vignesh Das', 'EEE', 69, 'Chennai'),
('Sneha Rao', 'CSE', 98, 'Bangalore'),
('Harish Patel', 'IT', 64, 'Ahmedabad'),
('Nikita Joshi', 'CSE', 89, 'Nashik'),
('Arjun R', 'MECH', 55, 'Trichy'),
('Lavanya Menon', 'CSE', 96, 'Kochi'),
('Ravi Sekar', 'ECE', 73, 'Coimbatore'),
('Swetha Rajan', 'EEE', 68, 'Tiruppur'),
('Yash Verma', 'CSE', 91, 'Indore'),
('Karthik D', 'IT', 80, 'Chennai'),
('Deepika K', 'ECE', 87, 'Madurai'),
('Naveen Prabhu', 'EEE', 75, 'Trivandrum'),
('Aishwarya M', 'CSE', 94, 'Salem'),
('Rohit Jain', 'MECH', 62, 'Nagpur'),
('Priya S', 'IT', 84, 'Mysore'),
('Manoj Kumar', 'CSE', 79, 'Patna'),
('Vidya Rani', 'ECE', 93, 'Vizag'),
('Suresh Babu', 'EEE', 60, 'Tirunelveli'),
('Shalini G', 'CSE', 99, 'Coimbatore'),
('Bharath K', 'IT', 77, 'Thanjavur'),
('Preethi V', 'ECE', 86, 'Pondicherry'),
('Aravind R', 'CSE', 90, 'Tiruppur');

CREATE TABLE Employee (
    EmpId INT  auto_increment primary key,
    name VARCHAR(50),
    DeptID int,
    salary INT
);
INSERT INTO Employee (EmpId, name, DeptID, salary) VALUES
(1, 'ravi', '101', 50000),
(2, 'priya', '102', 60000),
(3, 'arjun', '101', 55000),
(4, 'Divya', '103', 45000),
(5, 'meena', '102', 70000);
create table Departments(DeptID int,Deptname varchar(20));
insert into  Departments(DeptID,Deptname)values(101,'IT'),(102,'HR'),(103,'Finance');
select d.Deptname,d.DeptID ,sum(salary) AS total_salary
from Employee e
join Departments d on e.DeptID =d.DeptID
group by d.DeptID,d.Deptname;
 Find employees earning more than average salary
 select name,salary
 from Employee 
 where  salary >(Select avg(salary) from Employee);
  Show employee names and their department names.
  select name,d.Deptname
  from Employee e
  join  Departments d on e.DeptID=d.DeptID;
   SELECT d.DeptID, d.DeptName, COUNT(e.EmpID) AS employee_count
FROM Employee e
JOIN Departments d ON e.DeptID = d.DeptID
GROUP BY d.DeptID, d.DeptName
HAVING COUNT(e.EmpID) > 1;
SELECT name, salary
FROM Employee
WHERE salary = (SELECT MAX(salary) FROM Employee);








CREATE VIEW HighSalaryEmployees AS
SELECT id, name, dept, salary
FROM Employee
WHERE salary > 50000;
SELECT * FROM HighSalaryEmployees;
CREATE INDEX idx_dept ON Employee(dept);

DROP VIEW HighSalaryEmployees;

ALTER TABLE Employee DROP INDEX idx_dept;
drop table Employee;
