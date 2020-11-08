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
        <style> 
            h4 { 
                display: flex; 
                flex-direction: row; 
            } 

            h4:before, 
            h4:after { 
                content: ""; 
                flex: 1 1; 
                border-bottom: 2px solid #000; 
                margin: auto; 
            } 

            img { 
                height: 100px; 
                width: 100px; 
                border-radius: 50%; 
            } 
        </style> 
    </head>
    <body>
    <from action="dietFood" method="GET">
        <center>
            <h1>อาหารลดน้ำหนัก</h1>
            <h4><b><em>&nbsp;รายการอาหารทั้งหมด&nbsp;</em></b></h4>
            <table>
                <c:forEach var="menu" items="${dietFood}">
                    <tr>
                        <td><c:out value="${menu.food}"/></td>
                        <td><c:out value="${menu.calorie}"/> &ndash; cal</td>
                    </tr>
                </c:forEach>
            </table>
            <p><a href ="Category.jsp">Back</a></p>
        </center>
    </from>
</body>
</html>
