using MySql.Data.MySqlClient;
using System;

class Program
{
    static void Main()
    {
        string connectionString = "server=your_host;user=your_username;database=your_database;password=your_password;";

        using (var conn = new MySqlConnection(connectionString))
        {
            conn.Open();

            // Create a command object
            using (var cmd = new MySqlCommand("SELECT * FROM your_table", conn))
            {
                using (var reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        Console.WriteLine(reader["column_name"].ToString());
                    }
                }
            }
        }
    }
}