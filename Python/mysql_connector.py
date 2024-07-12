import mysql.connector

# Establish the connection
conn = mysql.connector.connect(
    host="your_host",
    user="your_username",
    password="your_password",
    database="your_database"
)

# Create a cursor object
cursor = conn.cursor()

# Execute a query
cursor.execute("SELECT * FROM your_table")

# Fetch and print the result
for row in cursor.fetchall():
    print(row)

# Close the connection
conn.close()