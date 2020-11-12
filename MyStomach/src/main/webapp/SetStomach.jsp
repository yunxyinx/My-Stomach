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
        <link href="bootstrap-4.5.0-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="bootstrap-4.5.0-dist/js/bootstrap.min.js" type="text/javascript"></script>
        <title>JSP Page</title>

    </head>

    <body>
        <jsp:include page="Component/navBar.jsp"/>
    <center>
        <h1>Set Alarm</h1>
        <form action="Menu" method="post">
            <select name="catagory">
                <c:forEach items="${category}" var="c">
                    <option value="${c.categoryID}">${c.categoryName}</option>
                </c:forEach>
            </select>
            <input type="submit" value="เลือกประเภท">
        </form>
        <hr>


        <form id="sets" action="Plan" method="GET">
            <div name="s">
                <div class="set">
                    <input type="text" id="formGroupExampleInput" placeholder="Meal" name="meal">
                    <input type="time" name="time">
                    <select name="menu">
                        <c:forEach items="${listMenu}" var="menu">
                            <option value="${menu.menuID}">${menu.food} = ${menu.calorie} Calorie</option>
                            <c:out value="${menu.calorie}"/>
                        </c:forEach>
                    </select>
                    <br><br>
                </div>
            </div>
            <button id='add-set'>Add Set</button><br><br>
            <input type="submit" value="Submit">
        </form>


    </center>
    <script>
        (function () {
            var button = document.getElementById("add-set");
            button.addEventListener('click', function (event) {
                event.preventDefault();
                var cln = document.getElementsByClassName("set")[0].cloneNode(true);
                document.getElementById("sets").insertBefore(cln, this);
                return false;
            });
        })();
    </script>
</body>
</html>
