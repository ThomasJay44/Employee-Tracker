DROP DATABASE IF EXISTS staff_db;
CREATE DATABASE staff_db;

USE staff_db;

CREATE TABLE department (
  -- id set to ainteger, automatic increment, and primary key
      id INT AUTO_INCREMENT PRIMARY KEY,
  -- name set to varchar, max size 30, not null
      name VARCHAR(30)
);


CREATE TABLE role (
  -- id set to integer, automatic increment, and primary key
    id INT AUTO_INCREMENT PRIMARY KEY,
  -- title set to varchar, max size 30, and not null
    title VARCHAR(30) NOT NULL,
  -- salary set to decimal and not null
    salary INT NOT NULL,
  -- department id set to integer and not null
    department_id INT NOT NULL,
  -- foreign key department id referencing department table on id with on delete constraint
    CONSTRAINT fk_department FOREIGN KEY (department_id) REFERENCES department(id) ON DELETE CASCADE,
  -- optional - index on department id
    INDEX dep_ind (department_id),
);

CREATE TABLE employee (
  -- id set to integer with automatic increment and primary key constraints
    id INT AUTO_INCREMENT PRIMARY KEY,
  -- first name set to var char, max size 30, and not null contraint
    first_name VARCHAR(30) NOT NULL,
  -- last name set to var char, max size 30, and not null
    last_name VARCHAR(30) NOT NULL,
  -- role id set to integer and not null
    role_id INT NOT NULL,
  -- manager id set to integer
    manager_id INT,
  -- foreign key on role id referencing role table on id with on delete constraint
    CONSTRAINT fk_role FOREIGN KEY (role_id) REFERENCES role(id) ON DELETE CASCADE,
  -- foreign key on manager id referencing employee table on id with on delete constraint
    CONSTRAINT fk_manager FOREIGN KEY (manager_id) REFERENCES employee(id) ON DELETE SET NULL
  -- optional - indexes on role id, manager id
    manager_id INT UNSIGNED,
    INDEX man_ind (manager_id),
);
