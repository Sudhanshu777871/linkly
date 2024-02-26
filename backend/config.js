const mysql = require("mysql");

const mysqlConnection = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: "url_shortner"
})

// connecting...................
mysqlConnection.connect((err) => {
    if (err) throw err;
    console.log("Connection Is SuccessFully..............")
})


module.exports = mysqlConnection;