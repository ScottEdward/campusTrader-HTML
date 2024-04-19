<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : index
    Created on : Feb 20, 2024, 10:27:49 PM
    Author     : tomha
--%>
<sql:query var="items" dataSource="jdbc/CampusTraderDB">
    SELECT * FROM userItems
</sql:query>
    

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CampusTrader</title>
    </head>
    <body>
        <h1>Welcome to CampusTrader!</h1>
        <table border="0">
            <thead>
                <tr>
                    <th>CampusTrader has a wide variety of items</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>To look for a specific category of items, please enter a category below</td>
                </tr>
                <tr>
                    <td>
                        <form action="query.jsp">
                            <strong>Please enter a category: </strong>
                            <select name="itemCategory">
                            <c:forEach var="row" items="${items.rows}">
                                <option *value="${row.itemCategory}"*>*${row.name}*</option>
                            </c:forEach>
                            </select>
                            <input type="submit" value="submit" name="submit" />
                        </form>
                    </td>
                </tr>
            </tbody>
        </table>

    </body>
</html>
