<%-- 
    Document   : dietFood
    Created on : 25 ต.ค. 2020, 22:18:50
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
    <from action="dietFood" method="GET">
        <center>
            <h1>อาหารลดน้ำหนัก</h1>
            <table>
                <c:forEach var="menu" items="${dietFood}">
                    <tr>
                        <td><c:out value="${menu.food}"/></td>
                        <td><c:out value="${menu.calorie}"/></td>
                    </tr>
                </c:forEach>
            </table>
            <p><a href ="Category.jsp">Back</a></p>
        </center>
    </from>
</body>
</html>
