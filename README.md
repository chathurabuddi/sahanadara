![alt text](https://raw.githubusercontent.com/chathurabuddi/sahanadara/master/sahanadara-ui/src/assets/sahanadara_logo.png)
# Sahanadara (සහනාධාර)
**A POC project for incident response management system**

### Prerequisites
1. Java 8 or later
2. Maven latest
3. NodeJs latest

### Project Setup
1. Create MySQL database using provided database script under _database_ directory. It contains database structure (DDL) and sample data.
2. Configure database username and password in _application.properties_ file under _sahanadara-api_ module.
3. Navigate to the _sahanadara-api_ module and run `mvn clean install` command to build the project.
4. You can run the application by executing `spring-boot:run` command in the project root directory. Service will be start at `http://localhost:8080`
5. Navigate to the _sahanadara-ui_ module and run `npm install` to install project dependancies.
6. Execute `ng serve` to run the application. application will be start at `http://localhost:4200`
7. Alternatively you can execute `ng build --prod` to generate deployment artifacts from the _sahanadara-ui_ module.