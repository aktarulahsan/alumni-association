<%-- 
    Document   : addcategory
    Created on : Nov 22, 2018, 4:37:59 PM
    Author     : User
--%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">

            .form-control:FOCUS
            {
                border: 2px solid #9ccc65;
                border-radius: 5px;
            }

            .panel>.panel-heading {
                color: #558b2f;
                background-color: #aed581;
                border-color: #aed581;
            }
            .panel>.panel-body
            {
                background-color: #f1f8e9;
                border-color: #aed581;
            }
            .list-group-item {
                overflow: hidden;
                margin: 3px;
                border-radius: 3px;
            }
            #removebuttons
            {
                color: #ffffff;
                background-color: #e57373;
            }
            #removebuttons:HOVER {
                color: #ffffff;
                background-color: #e53935;
            }
            #editbuttons{
                color: #ffffff;
                background: linear-gradient(to bottom, #aed581 50%, #9ccc65 50%);
            }
            #editbuttons:HOVER {
                color: #ffffff;
                background: linear-gradient(to bottom, #9ccc65 50%, #8bc34a 50%);
            }
        </style>
        <script src="resources/js/angular.js"></script>
        <script>
            var blo = ${userprofileobject};
            console.log(blo);
            angular.module('myapp', []).controller('BlogpostController',
                    function ($scope) {
                        $scope.profile = blo;
                    });
        </script>

    </head>
    <body>
        <jsp:include page="../header.jsp" />
        <div class="container-fluid"
             style="width: 80%; margin-top: 10px; margin-bottom: 10px">
            <div class="panel animated fadeInDown delay-05s" id="panel-1">
                <div class="panel-heading">
                    <span class="lead">User profile</span>
                </div>
                <!-- end panel heading -->
                <div class="panel-body">
                    <div class="formcontainer">
                        <c:if test="${check}">
                            <form:form name="addblog"
                                       modelAttribute="addprofileobject1" action="addinprofile" enctype="multipart/form-data"
                                       method="post">
                                <div class="form-group">

                                </div>
                                <div class="form-group">

                                    <label class="col-md-3 control-label">emailid</label>

                                    <div class="col-md-8">

                                        <form:input class="form-control"
                                                    Placeholder="profile id " type="text" path="emailid"  required="true"></form:input>

                                        </div>

                                    </div>
                                    <div class="form-group">

                                        <label class="col-md-3 control-label">firstname</label>

                                        <div class="col-md-8">

                                        <form:input class="form-control"
                                                    Placeholder="profile id " type="text" path="firstname"  required="true"></form:input>

                                        </div>

                                    </div>
                                    <div class="form-group">

                                        <label class="col-md-3 control-label">lastname</label>

                                        <div class="col-md-8">

                                        <form:input class="form-control"
                                                    Placeholder="profile id " type="text" path="lastname"  required="true"></form:input>

                                        </div>

                                    </div>
                                    <div class="form-group">

                                        <label class="col-md-3 control-label">fathername</label>

                                        <div class="col-md-8">

                                        <form:input class="form-control"
                                                    Placeholder="profile id " type="text" path="fathername"  required="true"></form:input>

                                        </div>

                                    </div>
                                    <div class="form-group">

                                        <label class="col-md-3 control-label">mothername</label>

                                        <div class="col-md-8">

                                        <form:input class="form-control"
                                                    Placeholder="profile id " type="text" path="mothername"  required="true"></form:input>

                                        </div>

                                    </div>
                                    <div class="form-group">

                                        <label class="col-md-3 control-label">dateofbirth</label>

                                        <div class="col-md-8">

                                        <form:input class="form-control"
                                                    Placeholder="profile id " type="text" path="dateofbirth"  required="true"></form:input>

                                        </div>

                                    </div>
                                    <div class="form-group">

                                        <label class="col-md-3 control-label">gender</label>

                                        <div class="col-md-8">

                                        <form:input class="form-control"
                                                    Placeholder="profile id " type="text" path="gender"  required="true"></form:input>

                                        </div>

                                    </div>
                                    <div class="form-group">

                                        <label class="col-md-3 control-label">religion</label>

                                        <div class="col-md-8">

                                        <form:input class="form-control"
                                                    Placeholder="profile id " type="text" path="religion"  required="true"></form:input>

                                        </div>

                                    </div>
                                    <div class="form-group">

                                        <label class="col-md-3 control-label">maritalstatus</label>

                                        <div class="col-md-8">

                                        <form:input class="form-control"
                                                    Placeholder="profile id " type="text" path="maritalstatus"  required="true"></form:input>

                                        </div>

                                    </div>
                                    <div class="form-group">

                                        <label class="col-md-3 control-label">nationality</label>

                                        <div class="col-md-8">

                                        <form:input class="form-control"
                                                    Placeholder="profile id " type="text" path="nationality"  required="true"></form:input>

                                        </div>

                                    </div>
                                    <div class="form-group">

                                        <label class="col-md-3 control-label">nid</label>

                                        <div class="col-md-8">

                                        <form:input class="form-control"
                                                    Placeholder="profile id " type="text" path="nid"  required="true"></form:input>

                                        </div>

                                    </div>


                                <form:button id="editbuttons" type="submit" name="AddBlog"
                                             class="btn">Add Profile</form:button>
                                <form:button id="removebuttons" type="reset" class="btn">Reset
                                    Details</form:button>

                            </form:form>
                        </c:if>

                        <c:if test="${!check}">
                            <form:form name="addblog"
                                       modelAttribute="addprofileobject1" action="addinprofile" enctype="multipart/form-data"
                                       method="post">
                                <div class="form-group">
                                    <form:input id="name" class="form-control"
                                                Placeholder="Blogpost Id" type="text" path="profileid" readonly="true"></form:input>
                                    </div>
                                    <div class="form-group">

                                        <label class="col-md-3 control-label">emailid</label>

                                        <div class="col-md-8">

                                        <form:input class="form-control"
                                                    Placeholder="profile id " type="text" path="emailid"  required="true"></form:input>

                                        </div>

                                    </div>
                                    <div class="form-group">

                                        <label class="col-md-3 control-label">firstname</label>

                                        <div class="col-md-8">

                                        <form:input class="form-control"
                                                    Placeholder="profile id " type="text" path="firstname"  required="true"></form:input>

                                        </div>

                                    </div>
                                    <div class="form-group">

                                        <label class="col-md-3 control-label">lastname</label>

                                        <div class="col-md-8">

                                        <form:input class="form-control"
                                                    Placeholder="profile id " type="text" path="lastname"  required="true"></form:input>

                                        </div>

                                    </div>
                                    <div class="form-group">

                                        <label class="col-md-3 control-label">fathername</label>

                                        <div class="col-md-8">

                                        <form:input class="form-control"
                                                    Placeholder="profile id " type="text" path="fathername"  required="true"></form:input>

                                        </div>

                                    </div>
                                    <div class="form-group">

                                        <label class="col-md-3 control-label">mothername</label>

                                        <div class="col-md-8">

                                        <form:input class="form-control" 
                                                    Placeholder="profile id " type="text" path="mothername"  required="true"></form:input>

                                        </div>

                                    </div>
                                    <div class="form-group">

                                        <label class="col-md-3 control-label">dateofbirth</label>

                                        <div class="col-md-8">

                                       
<form:input type="text" class="form-control"  path="dateofbirth" placeholder="Purchase Date" required="true" id="date" ></form:input>
                                        </div>

                                    </div>
                                    <div class="form-group">

                                        <label class="col-md-3 control-label">gender</label>

                                        <div class="col-md-8">

                                        <form:input class="form-control"
                                                    Placeholder="profile id " type="text" path="gender"  required="true"></form:input>

                                        </div>

                                    </div>
                                    <div class="form-group">

                                        <label class="col-md-3 control-label">religion</label>

                                        <div class="col-md-8">

                                        <form:input class="form-control"
                                                    Placeholder="profile id " type="text" path="religion"  required="true"></form:input>

                                        </div>

                                    </div>
                                    <div class="form-group">

                                        <label class="col-md-3 control-label">maritalstatus</label>

                                        <div class="col-md-8">

                                        <form:input class="form-control"
                                                    Placeholder="profile id " type="text" path="maritalstatus"  required="true"></form:input>

                                        </div>

                                    </div>
                                    <div class="form-group">

                                        <label class="col-md-3 control-label">nationality</label>

                                        <div class="col-md-8">

                                        <form:input class="form-control"
                                                    Placeholder="profile id " type="text" path="nationality"  required="true"></form:input>

                                        </div>

                                    </div>
                                    <div class="form-group">

                                        <label class="col-md-3 control-label">nid</label>

                                        <div class="col-md-8">

                                        <form:input class="form-control"
                                                    Placeholder="profile id " type="text" path="nid"  required="true"></form:input>

                                        </div>

                                    </div>

                                <form:button id="editbuttons" type="submit" name="EditBlog"
                                             class="btn">Edit Profile</form:button>
                                <form:button id="removebuttons" type="reset" class="btn">Reset
                                    Details</form:button>
                            </form:form>
                        </c:if> 
                    </div>
                </div>
                <!-- panel1 body end -->
            </div>
            <!-- panel1 end -->
            <div class="panel animated fadeInUp delay-05s" id="panel-2">
                <div class="panel-heading">
                    <span class="lead">List Of Blogpost</span>
                </div>
                <!-- end panel2 heading -->
                <div class="panel-body" ng-app="myapp"
                     ng-controller="BlogpostController" width="100%">
                    <ul class="list-group ">
                        <li class="list-group-item" height="45px"
                            ng-repeat="Blo in profile">
                            <div class="pull-left">
                                <ul class="list-inline">
                                    <li><span><b>Blog Id: </b></span>{{Blo.profileid}}</li>
                                    <li><span><b>Title: </b></span>{{Blo.emailid}}</li>
                                    <li><span><b>Blog Description: </b></span>{{Blo.firstname}}</li>
                                    <li><span><b>Blog Description: </b></span>{{Blo.lastname}}</li>
                                    <li><span><b>Blog Description: </b></span>{{Blo.fathername}}</li>
                                    <li><span><b>Blog Description: </b></span>{{Blo.mothername}}</li>
                                    <li><span><b>Blog Description: </b></span>{{Blo.dateofbirth}}</li>

                                </ul>
                            </div>
                            <div class="pull-right">
                                <a href="showoneusereducation?getpid={{Blo.emailid}}"><button id="editbuttons"
                                                                                             type="submit" class="btn">Edit</button></a> <a
                                    href="removeprofile/{{Blo.profileid}}"><button  id="removebuttons"
                                                                                type="button" class="btn">Remove</button></a>
                            </div>
                        </li>
                    </ul>
                </div>
                <!-- panel2 body end -->
            </div>
            <!-- panel2 end -->


        </div>
 <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>
        <script>
            $(document).ready(function () {
                var date_input = $('input[name="dateofbirth"]'); //our date input has the name "date"
                var container = $('.bootstrap-iso form').length > 0 ? $('.bootstrap-iso form').parent() : "body";
                date_input.datepicker({
                    format: 'yyyy/mm/dd',
                    container: container,
                    todayHighlight: true,
                    autoclose: true,
                })
            })
        </script>
        <jsp:include page="../footer.jsp" />
    </body>
</html>
