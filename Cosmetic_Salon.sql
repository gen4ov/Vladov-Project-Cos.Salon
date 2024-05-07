Create table Services(
service_id INT PRIMARY KEY,
service_name VArchar(50) not null,
description text,
price decimal(10, 2) not null
);

Create table Customers(
customer_id INT PRIMARY KEY,
f_name VArchar(50) not null,
l_name VArchar(50) not null,
email VArchar(100),
phone_number VArchar(20)
);

Create table Appointments (
appointment_id INT PRIMARY KEY,
customer_id INT,
service_id INT,
appointment_date DATE,
appointment_time TIME,
duration_minutes INT,
FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
FOREIGN KEY (service_id) REFERENCES Services(service_id)
);

Create table Employees(
employee_id INT PRIMARY KEY,
f_name VArchar(50) not null,
l_name VArchar(50) not null,
specialization VArchar(100)
);

Create table EmployeeSchedules(
schedule_id INT PRIMARY KEY,
employee_id INT,
day_of_week INT,
start_time TIME,
end_time TIME,
FOREIGN KEY (employee_id) REFERENCES Employees(employee_id)
);

Create table Payments(
payment_id INT PRIMARY KEY,
appointment_id INT,
amount decimal(10, 2) not null,
payment_date DATE,
FOREIGN KEY (appointment_id) REFERENCES Appointments(appointment_id)
);


