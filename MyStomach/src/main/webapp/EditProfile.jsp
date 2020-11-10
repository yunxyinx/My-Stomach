<%-- 
    Document   : EditProfile
    Created on : Nov 10, 2020, 4:56:37 PM
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

        <title>Edit Profile</title>
    </head>
    <body>
        <h1>Edit Profile</h1>
        
        <img src="images/${User.profile}.png" heigth="100" width="200">
        <form action="EditProfileServlet" method="get">
            <input type="text" name="Fname" id="Fname" class="form-control border-gray border" placeholder="Firstname" value="${User.fname}" required=""  > : FirstName
                   

                    <div class="form-group form-group-feedback form-group-feedback-right" >
                        <input type="text" name="Lname" id="Lname" class="form-control border-gray border" placeholder="Lastname" value="${User.lname}" required="" > : LastName
                    </div>

                    
                    <div class="form-group form-group-feedback form-group-feedback-right" >
                        <input type="height" name="Height" id="Height" class="form-control border-gray border" placeholder="Height" value="${User.height}" required=""  > : Height
                    </div>                
                    <div class="form-group form-group-feedback form-group-feedback-right" >
                        <input type="weight" name="Weight" id="Weight" class="form-control border-gray border" placeholder="Weight" value="${User.weight}" required=""  > : Weight
                    </div>
                    <input type="number" name="profile" min="1" max="5" value="${User.profile}">
                 <input type="submit" value="edit">
               </form>
    </body>
</html>