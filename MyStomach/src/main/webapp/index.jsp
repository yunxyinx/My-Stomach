<%-- 
    Document   : index
    Created on : Nov 10, 2020, 4:57:42 PM
    Author     : graciedaily
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

        <title>Index</title>
    </head>
    <body>
        <h1>${User.fname}   ${User.lname}</h1>

        <div class="container-fluid">
            <div class="row">

                <div class="col-md-4">

                </div>

                <div class="col-md-4">
                    <img src="images/${User.profile}.png" heigth="100" width="300">
                </div>

                <div class="col-md-4">

                </div>
            </div>
        </div>

        <br><br><br>

        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4">
                </div>
                <div class="col-md-4">
                    
                    
                        <a href="EditProfile.jsp">
                            <button type="button" class="btn btn-sm disabled active btn-block btn-outline-info">
                            Edit Profile
                            </button>
                        </a>
                    
                </div>
                <div class="col-md-4">
                </div>
            </div>
        </div>


   
    <br><br><br>


    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4">
            </div>
            <div class="col-md-4">
                <h5>น้ำหนัก = ${User.weight}</h5>
                <br>
                <h5>ส่วนสูง = ${User.height}</h5>
                <br>
                <h4>ค่า BMI ของคุณ = ${100*User.weight/User.height/2}</h4>
                <br>
                <h3>
                    อยู่ในเกณฑ์
                <c:choose>
                    <c:when test="${100*User.weight/User.height/2<18.5}">นํ้าหนักน้อย/ผอม</c:when>
                    <c:when test="${100*User.weight/User.height/2>18.5&&100*User.weight/User.height/2<22.9}">ปกติ(สุขภาพดี)</c:when>
                    <c:when test="${100*User.weight/User.height/2>23&&100*User.weight/User.height/2<24.9}">ท้วม(โรคอ้วนระดับ1)</c:when>
                    <c:when test="${100*User.weight/User.height/2>25&&100*User.weight/User.height/2<29.9}">อ้วน(โรคอ้วนระดับ2)</c:when>
                    <c:when test="${100*User.weight/User.height/2>30}"> อ้วน(โรคอ้วนระดับ2)</c:when>
                </c:choose>
                </h3>
            </div>
            <div class="col-md-4">
            </div>
        </div>
    </div>





    <br><br><br>


    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4">
            </div>
            <div class="col-md-4">

                <form action="Logout" method="post">
                    <button type="Logout" class="btn btn-sm active btn-block btn-danger disabled">
                        Logout
                    </button>

                </form>
            </div>
            <div class="col-md-4">
            </div>
        </div>
    </div>
</body>
</html>

