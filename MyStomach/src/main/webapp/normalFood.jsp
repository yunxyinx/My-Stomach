<%-- 
    Document   : normalFood
    Created on : 25 ต.ค. 2020, 22:14:21
    Author     : yunxyinx
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>  
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <h1>อาหารทั่วไป</h1>
        <table>
            <c:forEach var="menu" items="${normalFood}">
                <tr>
                    <td><c:out value="${menu.food}"/></td>
                    <td><c:out value="${menu.calorie}"/></td>
                </tr>
            </c:forEach>
        </table>
        <p><a href ="Category.jsp">Back</a></p>
    </center>
</body>
</html>
