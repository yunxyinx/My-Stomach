<%-- 
    Document   : Plan
    Created on : 10 ต.ค. 2020, 23:34:39
    Author     : yunxyinx
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>        
        <c:forEach items="${ml}" var="m">
            ${m.meal}<br>
            ${m.time}<br>
            ${m.menu.food}<br>
            ${m.menu.calorie}
            <hr>
        </c:forEach>

        <h1 class="header">ALL CALORIES</h1>
        <b> 
            = ${allcal}</b>

    </body>
</html>
</html>
