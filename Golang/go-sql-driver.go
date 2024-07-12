package main

import (
	"database/sql"
	"fmt"

	_ "github.com/go-sql-driver/mysql"
)

func main() {
    // Establish the connection
    db, err := sql.Open("mysql", "your_username:your_password@tcp(your_host:3306)/your_database")
    if err != nil {
        panic(err)
    }
    defer db.Close()

    // Execute a query
    rows, err := db.Query("SELECT * FROM your_table")
    if err != nil {
        panic(err)
    }
    defer rows.Close()

    // Fetch and print the result
    for rows.Next() {
        var id int
        var name string
        err := rows.Scan(&id, &name)
        if err != nil {
            panic(err)
        }
        fmt.Println(id, name)
    }
}