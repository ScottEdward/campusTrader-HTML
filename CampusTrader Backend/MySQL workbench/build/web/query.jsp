<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : response
    Created on : Mar 2, 2024, 5:12:44 PM
    Author     : tomha
--%>
<sql:query var="itemQuery" dataSource="jdbc/CampusTraderDB">
    SELECT itemName, itemDescription, itemCategoryName, postedDate FROM userItems
    where itemCategoryName = ? <sql:param value="${param.itemCategory}"/>
</sql:query>
    <c:set var="itemDetails" value="${itemQuery.rows[0]}"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Results</title>
    </head>
    <body>
        <table border="0">
    <thead>
        <tr>
            <th colspan="2">Items</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><strong>Item name: </strong></td>
            <td><span style="font-size:smaller; font-style:italic;">*${itemDetails.itemName}*</span></td>
        </tr>
        <tr>
            <td><strong>Description: </strong></td>
            <td><span style="font-size:smaller; font-style:italic;">*${itemDetails.itemDescription}*</span></td>
        </tr>
        <tr>
            <td><strong>Category: </strong></td>
            <td><span style="font-size:smaller; font-style:italic;">*${itemDetails.itemCategoryName}*</span></td>
        </tr>
        <tr>
            <td><strong>Posted Date: </strong></td>
            <td><span style="font-size:smaller; font-style:italic;">*${itemDetails.postedDate}*</span></td>
        </tr>
    </tbody>
</table>
    </body>
</html>
