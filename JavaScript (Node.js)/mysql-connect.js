const mysql = require("mysql");

const connection = mysql.createConnection({
  host: "your_host",
  user: "your_username",
  password: "your_password",
  database: "your_database",
});

connection.connect((err) => {
  if (err) {
    console.error("Error connecting: " + err.stack);
    return;
  }
  console.log("Connected as id " + connection.threadId);
});

// Execute a query
connection.query("SELECT * FROM your_table", (error, results, fields) => {
  if (error) throw error;
  console.log(results);
});

// Close the connection
connection.end();
