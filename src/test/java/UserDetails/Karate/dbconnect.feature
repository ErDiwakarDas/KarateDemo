@ignore
Feature: Db connection

Background:

# Create JDBC connection with DbUtils java class
* def config = { username:'root', password:'root', url:'jdbc:mysql://localhost:3306/projectdb', driverClassName:'com.mysql.jdbc.Driver' }
* def DbUtils = Java.type('UserDetails.Karate.DbUtils')
* def db = new DbUtils(config)

Scenario:

* def student = db.readRows('SELECT * FROM studenttab')
Then print student