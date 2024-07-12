#include <mysql_driver.h>
#include <mysql_connection.h>
#include <cppconn/statement.h>
#include <cppconn/resultset.h>
#include <iostream>

int main() {
    sql::mysql::MySQL_Driver* driver;
    sql::Connection* conn;
    sql::Statement* stmt;
    sql::ResultSet* res;

    try {
        // Create a driver instance
        driver = sql::mysql::get_mysql_driver_instance();
        
        // Establish the connection
        conn = driver->connect("tcp://your_host:3306", "your_username", "your_password");
        
        // Select the database
        conn->setSchema("your_database");
        
        // Create a statement
        stmt = conn->createStatement();
        
        // Execute a query
        res = stmt->executeQuery("SELECT * FROM your_table");

        // Process the result
        while (res->next()) {
            std::cout << "Column: " << res->getString("column_name") << std::endl;
        }

        // Clean up
        delete res;
        delete stmt;
        delete conn;
    } catch (sql::SQLException& e) {
        std::cerr << "ERROR: SQLException" << std::endl;
        std::cerr << "Message: " << e.what() << std::endl;
        std::cerr << "MySQL Error Code: " << e.getErrorCode() << std::endl;
    }

    return 0;
}