<%-- 
    Document   : response
    Created on : Sep 18, 2019, 3:22:24 PM
    Author     : aiman
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<sql:query var="subjects" dataSource="jdbc/MySQLDataSource">
    SELECT s.name, s.description,
    CONCAT(c.first_name," ",c.nick_name ," ",c.last_name) as counselor,
    c.member_since as memberSince, c.telephone, c.email
    FROM mynewdatabase.Subject as s, mynewdatabase.Counselor as c
    WHERE c.counselor_id = s.counselor_idfk
    AND s.subject_id = ? <sql:param value="${param.subject_id}"/>
</sql:query>
<c:set var="counsSubj" scope="request" value="${counsSubjRs.rows[0]}"/>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>

        <link rel="stylesheet" type="text/css" href="style.css">

        <title>${counsSubj.name}</title>

    </head>

 

    <body>

        <table>

            <tr>

                <th colspan="2">${counsSubj.name}</th>

            </tr>

            <tr>

                <td><strong>Description: </strong></td>

                <td><span style="font-size:smaller; font-style:italic;">${counsSubj.description}</span></td>

            </tr>

            <tr>

                <td><strong>Counselor: </strong></td>

                <td><strong>${counsSubj.counselor}</strong>

                    <br><span style="font-size:smaller; font-style:italic;">

                    member since: ${counsSubj.memberSince}</span></td>

            </tr>

            <tr>

                <td><strong>Contact Details: </strong></td>

                <td><strong>email: </strong>

                    <a href="mailto:${counsSubj.email}">${counsSubj.email}</a>

                    <br><strong>phone: </strong>${counsSubj.telephone}</td>

            </tr>

        </table>

    </body>

</html>