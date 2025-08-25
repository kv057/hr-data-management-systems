-- Below statement creates a new schema or database
create schema hr;
-- below statement indicates to use hr schema for any further queries/commands/statements.
use hr;

-- Create Table Employees
CREATE TABLE hr.employees (
    employee_id     INT(6), 
    first_name      VARCHAR(20) NOT NULL, 
    last_name       VARCHAR(25) , 
    phone		INT(10) not null ,
    hire_date       DATETIME NOT NULL 
	         DEFAULT CURRENT_TIMESTAMP, 
    job_id          VARCHAR(10) NOT NULL, 
    salary          DECIMAL(8,2) NOT NULL CHECK (salary > 1000), 
    commission_pct  DECIMAL(2,2), 
    manager_id      INT(6), 
    department_id   INT(4), 
    PRIMARY KEY (employee_id)
);

-- Adding New Column to a table by ALTER Command
ALTER TABLE employees ADD COLUMN email varchar(100);

-- Drop Column using ALTER Command
ALTER TABLE employees DROP COLUMN phone;

-- Modify Existing Column using ALTER Command
ALTER TABLE employees MODIFY COLUMN first_name varchar(50);

-- Rename a Column using ALTER Command
ALTER TABLE employees RENAME COLUMN email to email_id;

-- Rename the Entire Table(Be careful)
ALTER TABLE employees rename to employee_dtls;

-- Drop a Table 
DROP TABLE employee_dtls;

-- Truncate a Table (Delete/remove all the data from a table)
TRUNCATE table employee_dtls;

