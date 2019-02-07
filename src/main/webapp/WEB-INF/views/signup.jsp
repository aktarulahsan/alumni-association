<%-- 
    Document   : login
    Created on : Nov 20, 2018, 3:44:20 PM
    Author     : User
--%>


<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Alumni Login</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--===============================================================================================-->	
        <link rel="icon" type="image/png" href="resources/images/icons/favicon.ico"/>
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="resources/vendor/bootstrap/css/bootstrap.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="resources/vendor/animate/animate.css">
        <!--===============================================================================================-->	
        <link rel="stylesheet" type="text/css" href="resources/vendor/css-hamburgers/hamburgers.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="resources/vendor/select2/select2.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="resources/css/util.css">
        <link rel="stylesheet" type="text/css" href="resources/css/main.css">
        <!--===============================================================================================-->
    </head>
    <body>

        <div class="limiter">
            <div class="container-login100">
                <div class="wrap-login100">
                    <div class="login100-pic js-tilt" data-tilt>
                        <img src="resources/logo/alumni-logo.jpg" alt="IMG">
                    </div>

                    <form:form modelAttribute="urm" action="reguser" class="login100-form validate-form">
                        <!-- urm -@modelattribute used in Usercontroller -->

                        <div class="wrap-input100 validate-input animated fadeInDown delay-3s" data-validate = "Valid email is required: ex@abc.xyz">

                            <form:input type="text" class="input100 " placeholder="Username"
                                        aria-describedby="basic-addon1" path="username" required="true"></form:input>               

                                <span class="focus-input100"></span>
                                <span class="symbol-input100">
                                    <i class="fa fa-user" aria-hidden="true"></i>
                                </span>
                            </div>

                            <div class="wrap-input100 validate-input animated fadeInLeft delay-3s" data-validate = "Valid email is required: ex@abc.xyz">

                            <form:input type="password" class="input100 " placeholder="password"
                                        aria-describedby="basic-addon1" path="password" required="true"></form:input>

                                <span class="focus-input100"></span>
                                <span class="symbol-input100">
                                    <i class="fa fa-lock" aria-hidden="true"></i>
                                </span>
                            </div>
                            <div class="wrap-input100 validate-input animated fadeInRight delay-3s" data-validate = "Valid email is required: ex@abc.xyz">

                            <form:input type="text" class="input100" placeholder="phone"
                                        aria-describedby="basic-addon1" path="phone" required="true"></form:input>

                                <span class="focus-input100"></span>
                                <span class="symbol-input100">
                                    <i class="fa fa-phone" aria-hidden="true"></i>
                                </span>
                            </div>
                            <div class="wrap-input100 validate-input animated fadeInUp delay-3s" data-validate = "Valid email is required: ex@abc.xyz">

                            <form:input type="text" class="input100" placeholder="emailid"
                                        aria-describedby="basic-addon1" path="emailid" required="true"></form:input>

                                <span class="focus-input100"></span>
                                <span class="symbol-input100">
                                    <i class="fa fa-envelope" aria-hidden="true"></i>
                                </span>
                            </div>

                            <div class="wrap-input100 validate-input animated fadeInUp delay-3s" data-validate = "Valid email is required: ex@abc.xyz">

                            <form:select  class="input100" 
                                        aria-describedby="basic-addon1" path="role" required="true">
                                 <option value="">---- Select ----</option>
                                        <option value="ROLE_STUDENT">ROLE_STUDENT</option>
                                        <option value="ROLE_ALUMNI">ROLE_ALUMNI</option>
                                
                                        </form:select>

                                <span class="focus-input100"></span>
                                <span class="symbol-input100">
                                    <i class="fa fa-user" aria-hidden="true"></i>
                                </span>
                            </div>


                            <div class="container-login100-form-btn">
                                <button class="login100-form-btn animated fadeInUpBig delay-3s" name="Submit" id="loginbutton"
                                        value="Sign Up" type="Submit">Sign UP</button>
                                
                                <a href="http://localhost:8080/alumni/" class="txt2" id="loginbutton">Cancel
                                    <span> <i class="fa fa-home m-l-5" aria-hidden="true"></i></span>
                                            </a>
                                          <span> <br/>          </span>
                                <a href="login" class="txt2" id="loginbutton">login
                                            <i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
                                            </a>
                            </div>


                    </form:form>
                </div>
            </div>
        </div>




        <!--===============================================================================================-->	
        <script src="resources/vendor/jquery/jquery-3.2.1.min.js"></script>
        <!--===============================================================================================-->
        <script src="resources/vendor/bootstrap/js/popper.js"></script>
        <script src="resources/vendor/bootstrap/js/bootstrap.min.js"></script>
        <!--===============================================================================================-->
        <script src="resources/vendor/select2/select2.min.js"></script>
        <!--===============================================================================================-->
        <script src="resources/vendor/tilt/tilt.jquery.min.js"></script>
        <script >
            $('.js-tilt').tilt({
                scale: 1.1
            })
        </script>
        <!--===============================================================================================-->
        <script src="resources/js/main.js"></script>

    </body>
</html>