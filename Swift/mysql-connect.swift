import MySQL

let connection = try MySQL.Connection(
    host: "localhost",
    user: "yourusername",
    password: "yourpassword",
    database: "yourdatabase"
)
try connection.open()

let statement = try connection.prepare(query: "SELECT * FROM yourtable")
let results = try statement.execute()

for row in results {
    print(row)
}

connection.close()