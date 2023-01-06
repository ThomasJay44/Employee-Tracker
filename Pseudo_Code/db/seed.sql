-- USE your_database;
USE staff_db;

-- INSERT INTO your_table_for_departments
INSERT INTO department (name)
VALUES 
    ("Front-End"),
    ("Grocery"),
    ("Produce"),
    ("Bakery"),
    ("Deli"),
    ("Seafood"),
    ("Meat"),
    ("Maintenance");

-- INSERT INTO your_table_for_roles
INSERT INTO role (title, salary, department_id)
VALUES  
    ("Manager", 100000, 1)
    ("Clerk", 65000, 1)
    ("Manager", 113000, 2)
    ("Clerk", 57000, 2)
    ("Manager", 110000, 3)
    ("Clerk", 43000, 3)
    ("Manager", 105000, 4)
    ("Clerk", 88000, 4)
    ("Manager", 194000, 5)
    ("Clerk", 74000, 5)
    ("Manager", 177000, 6)
    ("Clerk", 63000, 6)
    ("Manager", 142000, 7)
    ("Clerk", 77000, 7)
    ("Manager", 122000, 8)
    ("Clerk", 44000, 8);
        
-- INSERT INTO your_table_for_employees
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES     
    ('Zach', 'Braff', 1, NULL),
    ('Donald', 'Faison', 2, 1),
    ('Sarah', 'Chalke', 3, NULL),
    ('Bill', 'Lawrence', 4, 3),
    ('Judy', 'Reyes', 5, NULL),
    ('Malia', 'Brown', 6, 5),
    ('Neil', 'Flynn', 7, NULL),
    ('John', 'McGinley', 8, 7),
    ('Ken', 'Jenkins', 9, NULL),
    ('Christa', 'Miller', 10, 9),
    ('Sam', 'Lloyd', 11, NULL),
    ('Elizabeth', 'Banks', 12, 11),
    ('Masi', 'Oka', 13, NULL),
    ('Richard', 'Kind', 14, 13),
    ('Scott', 'Foley', 15, NULL),
    ('John', 'Ritter', 16, 15);
