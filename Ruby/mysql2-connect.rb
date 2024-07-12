require 'mysql2'

# Establish the connection
client = Mysql2::Client.new(
  host: "your_host",
  username: "your_username",
  password: "your_password",
  database: "your_database"
)

# Execute a query
results = client.query("SELECT * FROM your_table")

# Fetch and print the result
results.each do |row|
  puts row
end