Use abc_company;

Create Table Departments (
Dep_id INT AUTO_INCREMENT PRIMARY KEY,
Department VARCHAR(50),
Location Varchar (50)
);

Create Table emp_details (
Emp_id INT PRIMARY KEY,
Name VARCHAR (100),
Dep_id INT,
Salary Decimal(10,2),
Foreign Key (Dep_id) References Departments(Dep_id)
);

Insert Into  Departments(Department, Location) Values
('HR' , 'Mumbai'),
('Finance' , 'Delhi'),
('IT' , 'Hydrabad'),
('Marketing' , 'Pune'),
('Operations' , 'Chennai'),
('Sales' , 'Delhi');

Insert Into emp_details(Emp_id, Name, Dep_id, Salary) Values
(1200, 'Harshit', 2, 52000.00),
(1201, 'Seema', 1, 49000.00),
(1202, 'Komal', 5, 65000.00),
(1203, 'Raghav', 4, 70000.00),
(1204, 'Arjun', 1, 44000.00),
(1205, 'Natasha', 3, 55000.00),
(1206, 'Lalita', 6, 73000.00),
(1207, 'Shaurya', 2, 87000.00),
(1208, 'Pranjal', 6, 91000.00),
(1209, 'Abhay', 5, 82000.00),
(1210, 'Disha', 2, 77000.00);

Select * From Departments;

Select * From emp_details;

-- View For high salary employees with complex Select

Create View high_salary_employees AS
Select e.Emp_id, e.Name, e.Dep_id, e.Salary, d.location
From emp_details e
Join Departments d
ON e.Dep_id = d.Dep_id
Where e.Salary > 65000
Order By e.Salary DESC;

-- Views for abstraction and Security

Create View employee_public_info AS
Select Emp_id, Name, Dep_id
From emp_details;

Select * From high_salary_employees;

Select * From employee_public_info;