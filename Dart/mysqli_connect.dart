import 'package:mysql1/mysql1.dart';

void main() async {
  // Configuration settings
  final settings = ConnectionSettings(
    host: 'your_host',
    port: 3306,
    user: 'your_username',
    password: 'your_password',
    db: 'your_database',
  );

  // Establish the connection
  final conn = await MySqlConnection.connect(settings);
  print('Connection established');

  // Execute a query
  var results = await conn.query('SELECT * FROM your_table');

  // Process the result
  for (var row in results) {
    print('Column: ${row[0]}');
  }

  // Close the connection
  await conn.close();
}