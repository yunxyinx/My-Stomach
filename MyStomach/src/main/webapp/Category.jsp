<%-- 
    Document   : Category
    Created on : 25 ต.ค. 2020, 22:03:44
    Author     : yunxyinx
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <h1>Category</h1>
        <hr><p>
            Choose category !
                <br><br>
                <a disabled" href="dietFood">อาหารลดน้ำหนัก</a> | 
                <a href="normalFood">อาหารทั่วไป</a> | 
                <a href="weightGainFood">อาหารเพิ่มน้ำหนัก</a>
                </br>
        </div>
    </center>
</body>
</html>
