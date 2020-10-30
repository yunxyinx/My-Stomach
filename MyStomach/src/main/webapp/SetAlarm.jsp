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
        <script language="javascript">
            function myFunction() {
                var mySpan = document.getElementById('mySpan')
                var element1 = document.createElement('<input type="text" name="txt[]">');
                myElement1.setAttribute('id', "txt1");
                mySpan.appendChild(myElement1);
                var myElement2 = document.createElement('<br>');
                mySpan.appendChild(myElement2);
            }

            $("#new_alarm").click(function (e) {
                e.preventDefault();
                var content = $('<div class="t-item change"></div>').appendTo(".timer")
                content.append('<a href="#" class="fa fa-times times"></a>');
                content.append('<a href="#" class="fa fa-cog cog acti"></a>');
                content.append('<span class="time-edit"><input id="hours" type="text" value="00" /> <h2>:</h2><input id="minuties" type="text" value="00"/></span>');
                content.append('<span class="time-show" style="display:none;"><h2>00:00</h2></span>');
                content.append('<a href="#" class="fa fa-toggle-off on-off"></a>');
                var subcontent = $('<div/>', {id: 'foo', class: 'music'});
                content.append(subcontent);
                loadMusic('/music/Air Sweep 004.wav', false);
            });
            var hash = window.location.hash;
            if (hash == '#now') {
                $("#new_alarm").click();
            }
        </script>
    </head>

    <body>
        <span id="mySpan"></span>
        <input name="btnButton" id="btnButton" type="button" value="Create" onClick="JavaScript:fncCreateElement();">
        
        <button id="set" onclick="myFunction()">Add Set</button>
        <a href="#" id="new_alarm">
            <span class="fa fa-plus-circle">
            </span> สร้างอัลบั้มใหม่</a>
        <div class="t-item change">
            <a href="#" class="fa fa-times times"></a>
            <a href="#" class="fa fa-cog cog acti"></a>
            <span class="time-edit" style="display: inline;">
                <input id="hours" type="text" value="00"> <h2>:</h2>
                <input id="minuties" type="text" value="00"></span>
            <span class="time-show" style="display: none;"><h2>00:00</h2></span>
            <a href="#" class="fa fa-toggle-off on-off"></a>
            <div id="foo" class="music" style="display: block;">
            </div>
        </div>
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
            <div id="set">
                <label for="appt" name="breakfast">Break: </label>
                <input type="time" id="appt" name="time">

                <from action="Menu" method="get">
                    <select name="menu">
                        <c:forEach items="${listMenu}" var="menu">
                            <option>${menu.food}</option>
                        </c:forEach>
                    </select>
            </div>

            <br>
            <input type="submit"/>
        </from>

    </form>
</body>
</html>
