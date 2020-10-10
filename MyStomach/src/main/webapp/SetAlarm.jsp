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
        <form action="SetAlarm" method="POST">
            
            <table id="myTable">
                <tr>
                    <td><label for="appt" name="breakfast">Breakfast: </label>
                        <input type="time" id="appt" name="time"></td>
                    <td><select name="foods" id="foods">
                            <option type="dorpbox" name="foods" value="Sushi"/>Sushi
                            <option type="dorpbox" name="foods" value="Rice"/>Rice
                        </select></td>
                </tr>
                <tr>
                    <td><label for="appt" name="breakfast">Breakfast: </label>
                        <input type="time" id="appt" name="time"></td>
                    <td><select name="foods" id="foods">
                            <option type="dorpbox" name="foods" value="Sushi"/>Sushi
                            <option type="dorpbox" name="foods" value="Rice"/>Rice
                        </select></td>
                </tr>
            </table>

            <input type="submit"/>
            
        </form>
    </body>
</html>
