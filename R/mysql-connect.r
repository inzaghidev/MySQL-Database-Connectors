install.packages("RMySQL")
library(RMySQL)

con <- dbConnect(MySQL(), user = 'yourusername', password = 'yourpassword', host = 'localhost', dbname = 'yourdatabase')

result <- dbSendQuery(con, "SELECT * FROM yourtable")
data <- fetch(result)

print(data)

dbDisconnect(con)