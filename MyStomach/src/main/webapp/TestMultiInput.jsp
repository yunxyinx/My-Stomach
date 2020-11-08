<%-- 
    Document   : TestMultiInput
    Created on : 1 พ.ย. 2020, 4:39:08
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
        <h1>Hello World!</h1>
        <form id="users" action="form_sent.php" method="post">
            <div class="user">
                <input name="name" type="text" placeholder="Name"><br>
                <input name="phone" type="text" placeholder="Phone"><br>
                <input name="email" type="text" placeholder="E-Mail"><br><br>
            </div>
            <button id='add-user'>Add more fields</button><br><br>
            <input type="submit">   
        </form>

        <script>
            (function () {
                var button = document.getElementById("add-user");
                button.addEventListener('click', function (event) {
                    event.preventDefault();
                    var cln = document.getElementsByClassName("user")[0].cloneNode(true);
                    document.getElementById("users").insertBefore(cln, this);
                    return false;
                });
            })();
        </script>
    </body>
</html>
