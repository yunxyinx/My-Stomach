<%-- 
    Document   : Register
    Created on : Nov 6, 2020, 3:10:28 AM
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

        <title>Register</title>
    </head>
    <body>
        <script>
            function myFunction() {

                var Password = document.getElementById("Password").value;
                var Conpassword = document.getElementById("Conpassword").value;
                if (Password !== Conpassword) {
                    alert("รหัสผ่านไม่ตรงกัน");
                    return false;
                } else {
                    alert("สมัครสำเร็จ ");
                    return true;
                }


            }
        </script>




        <form  action="Register" method="POST" onsubmit="return myFunction()">
            <div align="center">
                <div class="whitebox">

                    <br>
                    <h1 style="color:#75DDF4">Sign in</h1><br>


                    <div class="row pb-md-5" style="  ">


                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-md-3">
                                </div>
                                <div class="col-md-6">
                                    <div align="left">
                                        <h5 style="color:#1DC7EC">Username</h5>
                                        <div class="form-group form-group-feedback form-group-feedback-right">

                                            <input type="text" name="Username" id="Username" class="form-control border-gray border" placeholder="Username" value="" required="" >
                                        </div>

                                        <div align="left">
                                            <h5 style="color:#1DC7EC">Password</h5>
                                            <div class="form-group form-group-feedback form-group-feedback-">
                                                <input type="password" name="Password" id="Password" class="form-control border-gray border" placeholder="Password" value="" required="">
                                            </div>
                                            <div align="left">
                                                <h5 style="color:#1DC7EC">Comfirm Password</h5>
                                                <div class="form-group form-group-feedback form-group-feedback-">
                                                    <input type="password" name="Confirm Password" id="Conpassword" class="form-control border-gray border" placeholder="Confirm Password" value="" required="">
                                                </div></div>


                                            <div align="left">
                                                <h5 style="color:#1DC7EC">Firstname</h5>
                                                <div class="form-group form-group-feedback form-group-feedback-right" >
                                                    <input type="text" name="Fname" id="Fname" class="form-control border-gray border" placeholder="Firstname" value="" required="" >
                                                </div>

                                                <div align="left">
                                                    <h5 style="color:#1DC7EC">Lastname</h5>
                                                    <div class="form-group form-group-feedback form-group-feedback-right" >
                                                        <input type="text" name="Lname" id="Lname" class="form-control border-gray border" placeholder="Lastname" value="" required="" >
                                                    </div>

                                                    <div align="left">
                                                        <h5 style="color:#1DC7EC">Email address</h5>
                                                        <div class="form-group form-group-feedback form-group-feedback-right" >
                                                            <input type="email" name="Email" id="Email" class="form-control border-gray border" placeholder="Email address" value="" required=""  >
                                                        </div>
                                                        <div align="left">
                                                            <h5 style="color:#1DC7EC">Height</h5>
                                                            <div class="form-group form-group-feedback form-group-feedback-right" >
                                                                <input type="height" name="Height" id="Height" class="form-control border-gray border" placeholder="Height" value="" required=""  >
                                                            </div> 
                                                            <div align="left">
                                                                <h5 style="color:#1DC7EC">Weight</h5>
                                                                <div class="form-group form-group-feedback form-group-feedback-right" >
                                                                    <input type="weight" name="Weight" id="Weight" class="form-control border-gray border" placeholder="Weight" value="" required=""  >
                                                                </div>

                                                            </div>
                                                            <div class="col-md-3">
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <!--                        <div class="col-12  border-right-md-1 pt-3 pb-2 pr-md-3">-->




                                                    <!--                    <div class="form-group form-group-feedback form-group-feedback-right" >
                                                                            <tr>
                                                                                    <td><%=(request.getAttribute("errMessage") == null) ? ""
                                                                : request.getAttribute("errMessage")%></td>
                                                                            </tr>
                                                                        </div>-->
                                                    <div class="mx-auto">

                                                        <button type="submit" class="btn btn_grey_login py-1 btn-block" name ="Register" style="border-radius: 5rem;
                                                                font-size: 1.2rem;
                                                                padding: .1375rem .875rem;
                                                                color: #FFF;
                                                                background-color: #75DDF4;
                                                                border: 1px solid #75DDF4;">Submit</button>

                                                    </div>
                                                    <br>
                                                    <div align="center">
                                                        Have an account? <a class="highlight" href="Login.jsp"><br>Sign in</a><br>
                                                    </div>
                                                </div>

                                                </form>
                                                </body>
                                                </html>
