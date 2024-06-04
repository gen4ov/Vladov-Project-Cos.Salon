CREATE ROLE salon_manager;
CREATE ROLE salon_employee;


CREATE USER 'manager'@'localhost' IDENTIFIED BY 'manager_password';
CREATE USER 'employee'@'localhost' IDENTIFIED BY 'employee_password';

GRANT salon_manager TO 'manager'@'localhost';
GRANT salon_employee TO 'employee'@'localhost';

