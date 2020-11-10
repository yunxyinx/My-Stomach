<%-- 
    Document   : RegisterComplete
    Created on : Nov 10, 2020, 4:59:54 PM
    Author     : graciedaily
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

        <title>Register Complete</title>
    </head>
    <body>
<br><br><br><br><br>
        <div align="center">
            <div class="whitebox">
                <br><br>
                <h1>Sign up Complete</h1><br>
                <h3>Welcome <span style="color: #2ABBCF; font-weight: bold;">${member.username}</span></h3><br>
                <p>Thank you for taking time to register.<br>
                    We hope you will enjoy MyStomach </p>
                <br><br>
                <a href="Login.jsp"><button type="Go to Profile!" class="editprofile">Login</button></a>
                    
            </div>
        </div>
    </body>
</html>
