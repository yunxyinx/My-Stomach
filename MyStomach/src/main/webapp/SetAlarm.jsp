<%-- 
    Document   : SetAlarm
    Created on : 10 ต.ค. 2020, 21:16:53
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
    <form action="SetAlarm" method="GET">

                <c:forEach var="i" begin="0" end="2">
                <label for="appt" name="breakfast">Breakfast: </label>
                <input type="time" valu e=i id="appt" name="time">
                
                <select name="foods"${i} id="foods">
                    <option type="dorpbox" name="foods" value="Apple"/>Apple
                    <option type="dorpbox" name="foods" value="Rice"/>Rice
                </select>
                    <br>
        </c:forEach>
        <label for="appt" name="breakfast">Break: </label>
        <input type="time" id="appt" name="time">
        
        <from action="MenuServlet" method="get">
        <select name="menu">
            <option value="${listMenu.menuID}">${listMenu.food}</option>
            <option value="${listMenu.menuID}">${listMenu.food}</option>
            <option value="${listMenu.menuID}">${listMenu.food}</option>
            </select>

        <br>
        <input type="submit"/>
        </from>

    </form>
</body>
</html>
