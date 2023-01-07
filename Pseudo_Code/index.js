
const inquirer = require("inquirer");
const mysql = require("mysql2");
// Optional: import asciiart-logo
// import your database module
const config = require('./package.json');
const db = require("./db");

const { menu, department, role, employee, update } = require("./questions");

// Import console table for logging information on screen in table format
require("console.table");

// Call startup function

// function: start up
//    optional: display logo text using asciiart-logo
//    call function to the main prompt for questions


// function - main prompt for questions
// - Prompt with the list of choices
// - In .then callback, check user's response with the switch-case statement.
//    call the appropriate function depending on what the user chose
//      - in case of view employees, call the view employees function
//      - in case of add employee, call the add employee function
//      - in case of update employee's role, call the update employee role function
//      - in case of view departments, call the view departments function
//      - in case of add department, call the add department function
//      - in case of view roles, call the view roles function
//      - in case of add role, call the add role function
//      - in default, call function to quit
//
// OPTIONAL:
//      - in case of update employee's manager, call the update employee manager function
//      - in case of view employees by manager, call the view employees by manager function
//      - in case of view employees by department, call the view employees by department function
//      - in case of view utilized budget by department, call the function to view utilized budget by department
//      - in case of remove department, call the remove department function
//      - in case of remove role, call the remove role function
//      - in case of remve employee, call the remove employee function
//      - in default, call function to quit

// function - View all employees
  // 1. call find all employees method on database connection
  //    in .then callback, display returned data with console table method
  // 2. call function to load main prompt for questions
  //

// function - View all roles
// 1. call find all roles method on database connection
//    in .then callback, dispalay returned data with console table
// 2. call function to load main prompt for questons
//

// function - View all deparments
//  1. call find all departments method on database connnection
//      in .then call back, display returned data with console table
//  2. call function to load main prompt for questions
//

// Add a department
//  1. prompt user for the name of the department
//      in .then callback, call create department method on database connection, passing the returned data as input argument
//  2. call function to load main prompt for questions
//

// functon - Add a role
//  **prompt for user to enter the role, the salary, and what department the role belongs to
//  1. call find all departments method on database connection to get array of existing department records
//      in .then call back, create array of objects with names and ids from returned data with .map() method
//  2. prompt user for title, salary, and department choosing from the list of departmernts created above
//      in .then callback, call funcon to create role on database connection, passing returned data from prompt as input argument
//  3. call function to load main prompt for questions
//

// function - Add a new employee
function addEmployee() {
  inquirer.prompt(employee).then((data) => {
      // {first_name: data.first_name, last_name: data.last_name, role_id: data.role_id, manager_id: data.manager.id}
      db.query(`INSERT INTO employee SET ?`, data, (err, results) => {
          console.log(`${data.first_name} ${data.last_name} is added to the employee list.`);
          init();
      });
  });
}

// function - Update an employee's role
function updateEmployee() {
  inquirer.prompt(update).then((data) => {
      db.query(
          `UPDATE employee SET role = "${data.updateRole}" WHERE employee_id = ${data.updateID};`, (err, results) => {
              console.log(`employee is updated`);
              init();
          });
  });
}


// function - Exit the application

// ========================
//  OPTIONAL
// ========================

// fuction - View all employees that belong to a department

// function - View all employees that report to a specific manager

// function - Update an employee's manager

// function - View all departments and show their total utilized department budget

// function - Delete an employee

// function - Delete a department

// function - Delete a role

