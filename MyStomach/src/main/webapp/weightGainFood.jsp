<%-- 
    Document   : WeightGainFood
    Created on : 25 ต.ค. 2020, 22:16:41
    Author     : yunxyinx
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>  
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <h1>อาหารเพิ่มน้ำหนัก</h1>
        <sql:setDataSouse var="" driver="com.mysql.cj.jdbc.Driver"></sql:setDataSouse>-->
        <sql:query datasouse= var="listFoods" />
        select * from menu where category)_categoryID = 3;
        <p><a href="Category">Back</a></p>
    </center>
    </body>
</html>
