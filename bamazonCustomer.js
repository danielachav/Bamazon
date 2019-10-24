var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
  host: "localhost",

  // Your port; if not 3306
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "12dchave",
  database: "bamazon"
});

connection.connect(function(err) {
  if (err) throw err;
  console.log("connected as id " + connection.threadId + "\n");
  createProduct();
});

function start() {
    inquirer
        .prompt([
        {
            name: "orderItem",
            type: "input",
            message: "What would you like to order? Enter in the id number of the product you would like to view."
        }, 
        {
            name: "orderQuantity",
            type: "input",
            message: "How many would you like to order?"  
        }
    ])
    .then(function(answers) {
        var quantityNeeded = answers.orderQuantity
        var idRequested = answers.orderItem
        purchaseOrder(idRequested, quantityNeeded);
    })
};
function purchaseOrder(ID, amountNeeded){
    connection.query("SELECT * FROM products where item_id=" + ID, function(err, res){
        if (err) throw err;
        if(amountNeeded <= res[0].stock_quantity){
            var totalCost = res[0].price * amountNeeded;
            console.log("Congratulation, your item was in stock!");
            console.log("Your total cost for " + amountNeeded + " " + res[0].product_name + " is " + totalCost + " Thank you!");
            
            connection.query("update products set stock_quantity = stock_quantity - " + amountNeeded + " where item_id=" + ID);
            
        } else {
            console.log("Please learn how to read and do math, select a smaller quantity next time.")
            
        };
        readProducts();
        connection.end();
    });
};

function readProducts() {
    connection.query("select * from products", function(err, res) {
        if (err) throw err;

        console.table(res);
    })
};