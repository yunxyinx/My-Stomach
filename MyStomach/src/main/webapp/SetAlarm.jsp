<%-- 
    Document   : SetAlarm
    Created on : 10 ต.ค. 2020, 21:16:53
    Author     : yunxyinx
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <sql:setDataSouse var="" driver=""></sql:setDataSouse>
    <sql:query datasouse="" var="result"></sql:query>
    <form action="SetAlarm" method="GET">
        <table>
            <tr>
                <td><label for="appt" name="breakfast">Breakfast: </label>
                    <input type="time" id="appt" name="time"></td>
                <td><select name="foods" id="foods">
                        <option type="dorpbox" name="foods" value="Apple"/>Apple
                        <option type="dorpbox" name="foods" value="Rice"/>Rice
                    </select></td>
            </tr>
            <tr>
                <td><label for="appt" name="breakfast">Breakfast: </label>
                    <input type="time" id="appt" name="time1"></td>
                <td><select name="foods1" id="foods1">
                        <option type="dorpbox" name="foods" value="Sushi"/>Sushi
                        <option type="dorpbox" name="foods" value="Rice"/>Rice
                    </select>
                </td>
                <td>
                    <input type="number" name="meal"/>
                </td>
            </tr>
            <tr>
                <td><label for="appt" name="breakfast">Breakfast: </label>
                    <input type="time" id="appt" name="time"></td>
                <td><c:forEach var="row" items="${result.row}">
                        <select name="foods" id="foods">
                            <option type="dorpbox" name="foods" ><c:out value="${row.foods}"/></option>
                        </select></c:forEach></td>
            </tr>
        </table>
        <p>Calories: <input type="text" name="day"/></p>
        <input type="submit"/>

    </form>
</body>
</html>
