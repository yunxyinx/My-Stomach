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
    <body>
        <table>
            <tr>
                <td>
                    ${sa.time}
                    ${sa.foods}
                </td>
            </tr></table>
        <br>
        ${sa.time}
        ${sa.foods}
    <c:forEach items="${sa.time}" <br>
    </c:forEach> 
</body>
</html>
