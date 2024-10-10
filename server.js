const express = require('express');
const inquirer = require('inquirer');
const { Client } = require('pg');
const { password, database } = require('pg/lib/defaults');

const PORT = process.env.PORT || 3001;
const app = express();

app.use(express.urlencoded({ extented: false}));
app.use(express.json());

const client = new Client(
    {
        user: 'postgres',
        password: 'Xiomara1020?!?',
        host: 'localhost',
        database: 'employee_tracker'
    },
    console.log('Connected to the employee_tracker database.')
)

client.connect();



function run() {
    inquirer
    .prompt([
        {
            type: "list",
            message: "What would you like to do?",
            name: "choice",
            choices: ["View all Departments", "View all Roles", "View all Employees", "Add a Department", "Add a Role", "Update Employee Role", "Add an Employee"]
        }
    ])
    .then((response) => {
        if (response.choice === 'View all Departments') {
            viewDepartments();
        }
    })
}