
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>


        <title>Login</title>
    </head>
    <body>
        ${message}
        <div align="center">
            <div class="whitebox">

                <br><br>
                <h1 style="color:#FFB0CE">Sign in</h1><br>
                <div class="insidewhitebox" align="left">
                    <form action="Login" method="post">
                        <div align="center">

                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-md-3">
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="username" class="lefttext" style="color:#FF8CB8" >Username <span class="text-danger">*</span></label>
                                            <input type="text" class="form-control" name="Username" id="Username" aria-describedby="errorUsername" style="width: 80%" placeholder="Username" value="${cookie.gg.value}">
                                            <small id="errorUsername" class="form-text text-danger">${errorUsername}</small>
                                        </div>

                                        <div class="form-group">
                                            <label for="password" style="color:#FF8CB8">Password <span class="text-danger">*</span></label>
                                            <input type="password" class="form-control" name="Password" id="Password" aria-describedby="errorPassword" style="width: 80%"  placeholder="Password" value="${cookie.kk.value}">
                                            <small id="errorPassword" class="form-text text-danger">${errorPassword}</small>

                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                    </div>
                                </div>
                            </div>  



                        </div>


                        <div align="center">
                            <div class="form-check">  
                                <input type="checkbox" class="form-check-input" id="remember" name="remember" >
                                <label class="form-check-label" for="remember"  >Remember me</label>
                            </div>
                        </div>
                        <br>
                        </div>
                        <!--                            <button type="submit" class="doquizbtn">Sign in</button>-->



                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-md-4">
                                </div>
                                <div class="col-md-4" >

                                    <button type="submit" class="btn active disabled btn-md btn-block " style="background-color:#FFB0CE; color:#ffffff" >
                                        Sign in
                                    </button>
                                </div>
                                <div class="col-md-4">
                                </div>
                            </div>
                        </div>


                    </form>
                    <br><br>
                    Don’t have an account? <a class="highlight" href="Register.jsp"><br>Sign up</a><br>
                    <!--                    or <a class="highlight" href="ForgotPassword">Forgot password?</a><br>-->
                    <br><br>

                </div>
            </div>
    </body>
</html>
