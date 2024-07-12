import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class MySQLConnectJDBC {
    public static void main(String[] args) {
        String url = "jdbc:mysql://your_host:3306/your_database";
        String user = "your_username";
        String password = "your_password";

        try {
            // Establish the connection
            Connection conn = DriverManager.getConnection(url, user, password);

            // Create a statement object
            Statement stmt = conn.createStatement();

            // Execute a query
            ResultSet rs = stmt.executeQuery("SELECT * FROM your_table");

            // Process the result
            while (rs.next()) {
                System.out.println(rs.getString("column_name"));
            }

            // Close the connection
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}