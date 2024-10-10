INSERT INTO department (dept_name)
VALUES ('Engineering'),
('Finance'),
('Legal'),
('Sales');

INSERT INTO roles (title, salary, department_id)
VALUES ('Sales Lead', 100000, 4),
('Salesperson', 80000, 4),
('Lead Engineer', 150000, 1),
('Software Engineer', 120000, 1),
('Account Manager', 160000, 2),
('Accountant', 125000, 2),
('Legal Team Lead', 250000, 3),
('Lawyer', 190000, 3);

INSERT INTO employees (first_name, last_name, manager_id, role_id)
VALUES ('John', 'Doe', NULL, 1),
('Mike', 'Chan', 1, 2),
('Ashley', 'Rodriguez', NULL, 3),
('Kevin', 'Tupik', 3, 4),
('Kunal', 'Singh', NULL, 5),
('Malia', 'Brown', 5, 6),
('Sarah', 'Lourd', NULL, 7),
('Tom', 'Allen', 7, 8);