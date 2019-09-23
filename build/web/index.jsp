<%-- 
    Document   : response
    Created on : Sep 18, 2019, 3:22:24 PM
    Author     : aiman
--%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<sql:query var="subjects" dataSource="jdbc/MySQLDataSource">
    SELECT subject_id as id, name FROM mynewdatabase.Subject
</sql:query>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="style.css">
        <title>IFPWAFCAD Homepage</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <h1>Welcome to IFPWAFCAD, the International Former Professional Wrestler</h1>
        <table border="0">
            <thead>
                <tr>
                    <th>IFPWAFCAD offers expert counseling in a wide range of fields.</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>To view the contact details of an IFPWAFCAD certified former professional wrestler in your area, select a subject below:</td>
                </tr>
                <tr>
                    <td><form action="response.jsp"><strong>Select a subject:</strong>
                             <select name="subject_id">
                            <c:forEach var="subject" items="${subjects.rows}">
                               <option value="${subject.id}">${subject.name}</option>
                            </c:forEach>
                            </select>
                            <input type="submit" value="submit" name="submit" />
                        </form></td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
