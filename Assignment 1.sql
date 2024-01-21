create table Departments(
DepartmentID int PRIMARY KEY identity,
DepartmentName varchar(255)
);

create table Employees(
EmployeeID int PRIMARY KEY identity,
FirstName varchar(255) not null,
LastName varchar(255) not null,
Salary decimal not null,
DepartmentID int not null,
Foreign Key (DepartmentID) REFERENCES Departments(DepartmentID)
);

ALTER TABLE Employees ADD HireDate datetime not null;

INSERT INTO Departments (DepartmentName)
VALUES 
    ('Finance'),
    ('IT'),
    ('Marketing'),
    ('Cybersecurity'),
    ('Event Management');

INSERT INTO Employees (FirstName, LastName, Salary, DepartmentID, HireDate)
VALUES 
    ('John', 'Doe', 60000.00, 1, '2022-01-01 09:00:00'),
    ('Jane', 'Smith', 75000.50, 2, '2022-02-15 10:30:00'),
    ('Michael', 'Johnson', 80000.75, 3, '2022-03-10 11:45:00'),
    ('Emily', 'Williams', 55000.25, 1, '2022-04-20 08:15:00'),
    ('Daniel', 'Brown', 90000.00, 4, '2022-05-05 14:20:00'),
    ('Olivia', 'Miller', 65000.50, 2, '2022-06-12 13:00:00'),
    ('David', 'Jones', 70000.25, 3, '2022-07-08 12:30:00'),
    ('Sophia', 'Davis', 85000.00, 4, '2022-08-25 09:45:00'),
    ('Matthew', 'Taylor', 60000.75, 1, '2022-09-14 16:00:00'),
    ('Emma', 'Wilson', 75000.50, 2, '2022-10-30 08:45:00');

	select * from Employees;

	select * from Departments;

	UPDATE Employees SET Salary = Salary+(Salary*0.10) WHERE DepartmentID = 2;

	DELETE FROM Employees WHERE Salary < 60000;

	SELECT * FROM Employees INNER JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;

	SELECT FirstName,LastName, DepartmentName, Salary FROM Employees JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;      

    SELECT * FROM Employees LEFT JOIN  Departments ON Employees.DepartmentID = Departments.DepartmentID;

	SELECT Departments.DepartmentID, Departments.DepartmentName, COUNT(Employees.EmployeeID) AS EmployeeList FROM Departments LEFT JOIN Employees ON Departments.DepartmentID = Employees.DepartmentID
    GROUP BY Departments.DepartmentID, Departments.DepartmentID;

	SELECT * FROM Departments JOIN  Employees ON Departments.DepartmentID = Employees.DepartmentID WHERE EmployeeID = 1;

	SELECT FirstName, LastName, HireDate FROM Employees WHERE HireDate > '2022-01-01';




