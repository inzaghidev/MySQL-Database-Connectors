import java.sql.Connection
import java.sql.DriverManager
import java.sql.ResultSet

fun main() {
    val url = "jdbc:mysql://localhost:3306/yourdatabase"
    val username = "yourusername"
    val password = "yourpassword"

    var connection: Connection? = null

    try {
        connection = DriverManager.getConnection(url, username, password)

        val statement = connection.createStatement()
        val resultSet = statement.executeQuery("SELECT * FROM yourtable")

        while (resultSet.next()) {
            println(resultSet.getString("columnname"))
        }
    } catch (e: Exception) {
        e.printStackTrace()
    } finally {
        connection?.close()
    }
}