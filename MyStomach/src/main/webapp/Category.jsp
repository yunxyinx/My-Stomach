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
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <h1>Category</h1>
        <hr><p>
        <form method="GET" action="CategorieServlet">
        <label for="category">Choose a category:</label>
        <select name="category" id="category">
            <option value="อาหารทั่วไป">อาหารทั่วไป</option>
            <option value="อาหารลดน้ำหนัก">อาหารลดน้ำหนัก</option>
            <option value="อาหารเพิ่มน้ำหนัก">อาหารเพิ่มน้ำหนัก</option>
        </select>
        <br><br>
        <input type="submit" value="Submit">
        </form>
    </center>
</body>
</html>
