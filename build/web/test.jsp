<%-- 
    Document   : test.jsp
    Created on : Sep 22, 2019, 6:22:09 PM
    Author     : aiman
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<sql:query var="subjects" dataSource="jdbc/MySQLDataSource">
    SELECT subject_id as id, name FROM mynewdatabase.Subject
</sql:query>
    
    
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div>TODO write content</div>
    </body>
</html>
    