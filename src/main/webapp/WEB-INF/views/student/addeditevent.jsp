<!DOCTYPE html>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html lang="en"><head>
        <script src="resources/js/angular.js"></script>
        <script>

            var chat = ${userprofileobject};

            console.log(chat);
            angular.module('myapp', []).controller('BlogpostController', function ($scope) {

                $scope.profile = chat;

            });



        </script>
        <style>
            th {
                font-size: 13px;
            }
            td {
                font-size: 11px;
            }
        </style>
    </head>

    <body class="animated fadeIn" ng-app="myapp" ng-controller="BlogpostController">

        <jsp:include page="header.jsp" />

        <!-- Fixed navbar -->

        <nav class="navbar navbar-default navbar-fixed-top navbar-principal">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
                        <a class="navbar-brand" href="http://demos.bootdey.com/dayzone/index.html"> <img src="resources/logo/alumni-logo.jpg" class="img-logo"> <b>Student</b> </a>
                    </div>
                    <div id="navbar" class="collapse navbar-collapse nav_menu">
                        <div class="col-md-5 col-sm-4">
                            <form class="navbar-form">
                                <div class="form-group" style="display:inline;">
                                    <div class="input-group" style="display:table;">
                                        <input class="form-control" name="search" placeholder="Search..." autocomplete="off" type="text"> <span class="input-group-addon" style="width:1%;"> <span class="glyphicon glyphicon-search"></span> </span>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <ul class="nav navbar-nav navbar-right">
                            <li class="active"><a href="http://localhost:8080/alumni/timelines">${uparsonalprofile.firstname} ${uparsonalprofile.lastname}<img src="resources/profileimage/${UserId}.jpg" class="img-nav"></a></li>
                            <li><a href="homepagestu"><i class="fa fa-home"></i>&nbsp;   </a></li>
                            <li><a href="showalljobcircularstu"><i class="fa fa-briefcase"></i></a></li>
                            <li><a href="showalleventstu"><i class="fa fa-calendar"></i></a></li>


                            <li class="">
                                <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">

                                    <span class=" glyphicon glyphicon-triangle-bottom"></span>
                                </a>
                                <ul class="dropdown-menu  pull-right">
                                    <li><a href="allstudentevent"><i class="fa fa-envira pull-right"></i>Event</a></li>
                                    <li><a href="logout"><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
                                </ul>
                            </li>

                        </ul>
                    </div>
                </div>
            </nav>



        <!-- Timeline content -->

        <div class="container" style="margin-top:50px;">

            <div class="row">

                <div class="col-lg-11 no-paddin-xs">

                    <div class="profile-nav col-sm-3">

                        <div class="panel">

                            <div class="user-heading round">

                                <a href="#">

                                    <img src="resources/profileimage/${UserId}.jpg" alt="you have no Image">

                                </a>

                                <h1>${userprofile.firstname} ${userprofile.lastname}</h1>

                                <p>Bangladesh</p>

                            </div>



                            <ul class="nav nav-pills nav-stacked">

                                <li><a href="http://demos.bootdey.com/bookpost/profile.html"> <i class="fa fa-user"></i> Profile</a></li>

                                <li><a href="http://demos.bootdey.com/bookpost/about.html"> <i class="fa fa-info-circle"></i> About</a></li>

                                <li><a href="http://demos.bootdey.com/bookpost/friends.html"> <i class="fa fa-users"></i> Friends</a></li>

                                <li><a href="http://demos.bootdey.com/bookpost/photos.html"> <i class="fa fa-file-image-o"></i> Photos</a></li>

                                <li class="active"><a href="http://demos.bootdey.com/bookpost/edit_profile.html"> <i class="fa fa-edit"></i> Edit profile</a></li>

                            </ul>

                        </div>

                    </div>

                    <!--                                for using modal-->

                    <!--                    End Modal-->




                    <div class="profile-info col-sm-9" >

                        <!-- update info -->
                        <div class="panel animated fadeInDown delay-05s" id="panel-1">

                            <!-- end panel heading -->
                            <div class="panel-body">
                                <div class="formcontainer">
                                    <c:if test="${check}">
                                        <form:form name="addblog"
                                                   modelAttribute="viewallevent" action="addeventstu" 
                                                   method="post">
                                            <div class="widget-body">
                                                <!--<div>${userprofile}</div>-->

                                                <div class="form-group" hidden="true">

                                                    <label class="col-md-4 control-label">eventid </label>

                                                    <div class="col-md-7">

                                                        <form:input class="form-control"
                                                                    Placeholder="profile id " type="number" path="eventid"  ></form:input>

                                                        </div>

                                                    </div>

                                                    <div class="form-group" hidden="true">

                                                        <label class="col-md-4 control-label">emailid</label>

                                                        <div class="col-md-7">

                                                        <form:input class="form-control"
                                                                    Placeholder="profile id " type="text" path="emailid" value="${UserId}" required="true"></form:input>

                                                        </div>

                                                    </div>
                                                    <div class="form-group">

                                                        <label class="col-md-4 control-label">Contact Parson</label>

                                                        <div class="col-md-7">

                                                        <form:input class="form-control"
                                                                    Placeholder="Contact Parson" type="text" path="contactparson" required="true"></form:input>

                                                        </div>
                                                    </div>
                                                    <div class="form-group">

                                                        <label class="col-md-4 control-label">Title</label>

                                                        <div class="col-md-7">

                                                        <form:input class="form-control"
                                                                    Placeholder="Event name" type="text" path="title" required="true"></form:input>

                                                        </div>

                                                    </div>
                                                    <div class="form-group">

                                                        <label class="col-md-4 control-label">Event Description</label>

                                                        <div class="col-md-7">

                                                        <form:textarea class="form-control" rows="5"
                                                                       Placeholder="jobdescription" type="text" path="description" required="true"></form:textarea>

                                                        </div>

                                                    </div>

                                                    <div class="form-group">

                                                        <label class="col-md-4 control-label">Location</label>

                                                        <div class="col-md-7">
                                                        <form:input type="text" class="form-control"  path="location" placeholder="location" required="true" id="date" ></form:input>
                                                        </div>

                                                    </div>
                                                    <div class="form-group">

                                                        <label class="col-md-4 control-label">Fees</label>

                                                        <div class="col-md-7">
                                                        <form:input type="text" class="form-control"  path="fees" placeholder="if needed" required="false" id="date" ></form:input>

                                                        </div>

                                                    </div>
                                                    <div class="form-group">

                                                        <label class="col-md-4 control-label">Contact Number</label>

                                                        <div class="col-md-7">
                                                        <form:input type="number" class="form-control"  path="contactnumber" placeholder="0177425XXXX" required="true" id="date" ></form:input>
                                                        </div>

                                                    </div>
                                                    
                                                    <div class="form-group">

                                                        <label class="col-md-4 control-label">Apply Last Date</label>

                                                        <div class="col-md-7">
                                                        <form:input type="text" class="form-control"  path="reglastdate" placeholder="reglastdate" required="true" id="date" ></form:input>



                                                        </div>

                                                    </div>



                                                    <div class="form-group">

                                                    <form:button id="editbuttons" type="submit" name="Addjob"
                                                                 class="btn">Add Event </form:button>
                                                    <form:button id="removebuttons" type="reset" class="btn">Reset
                                                        Details</form:button>

                                                    </div>

                                                </div>
                                        </form:form>
                                    </c:if>

                                    <c:if test="${!check}">
                                        <form:form name="addblog"
                                                   modelAttribute="viewallevent" action="updateeventstu" 
                                                   method="post">
                                            <div class="widget-body">
<!--                                                <div>${jobcicular}</div>-->

                                                <div class="form-group" hidden="true">

                                                    <label class="col-md-4 control-label">eventid </label>

                                                    <div class="col-md-7">

                                                        <form:input class="form-control"
                                                                    Placeholder="profile id " type="number" path="eventid"  ></form:input>

                                                        </div>

                                                    </div>

                                                    <div class="form-group" hidden="true">

                                                        <label class="col-md-4 control-label">emailid</label>

                                                        <div class="col-md-7">

                                                        <form:input class="form-control"
                                                                    Placeholder="profile id " type="text" path="emailid" value="${UserId}" required="true"></form:input>

                                                        </div>

                                                    </div>
                                                    <div class="form-group">

                                                        <label class="col-md-4 control-label">Contact Parson</label>

                                                        <div class="col-md-7">

                                                        <form:input class="form-control"
                                                                    Placeholder="companyname" type="text" path="contactparson" required="true"></form:input>

                                                        </div>
                                                    </div>
                                                    <div class="form-group">

                                                        <label class="col-md-4 control-label">title</label>

                                                        <div class="col-md-7">

                                                        <form:input class="form-control"
                                                                    Placeholder="designation" type="text" path="title" required="true"></form:input>

                                                        </div>

                                                    </div>
                                                    <div class="form-group">

                                                        <label class="col-md-4 control-label">Job Description</label>

                                                        <div class="col-md-7">

                                                        <form:textarea class="form-control" rows="5"
                                                                       Placeholder="jobdescription" type="text" path="description" required="true"></form:textarea>

                                                        </div>

                                                    </div>

                                                    <div class="form-group">

                                                        <label class="col-md-4 control-label">Location</label>

                                                        <div class="col-md-7">
                                                        <form:input type="text" class="form-control"  path="location" placeholder="location" required="true" id="date" ></form:input>
                                                        </div>

                                                    </div>
                                                    <div class="form-group">

                                                        <label class="col-md-4 control-label">Fees</label>

                                                        <div class="col-md-7">
                                                        <form:input type="text" class="form-control"  path="fees" placeholder="fees" required="true" id="date" ></form:input>

                                                        </div>

                                                    </div>
                                                    <div class="form-group">

                                                        <label class="col-md-4 control-label">Contact Number</label>

                                                        <div class="col-md-7">

                                                        <form:input type="number" class="form-control"  path="contactnumber"
                                                                    placeholder="fees" required="true" id="mobi" ></form:input>                                                            
                                                        </div>

                                                    </div>



                                                    <div class="form-group">

                                                        <label class="col-md-4 control-label">Apply Last Date</label>

                                                        <div class="col-md-7">
                                                        <form:input type="text" class="form-control"  path="reglastdate" placeholder="enddate" required="true" id="date" ></form:input>
                                                        </div>

                                                    </div>

                                                    <div class="form-group">

                                                        <button id="addeducation" name="EditBlog" class="btn btn-danger " type="submit">Update Event</button>

                                                    </div>

                                                </div>
                                        </form:form>
                                    </c:if> 

                                </div>
                            </div>
                            <!-- panel1 body end -->
                        </div><!-- end update info-->

                        <!-- update info -->

                        <!-- end update info-->

                    </div>

                </div>

            </div><!--End Timeline content -->



            <!-- Online users sidebar content-->

            <div class="chat-sidebar focus">

                <div class="list-group text-left">

                    <p class="text-center visible-xs"><a href="#" class="hide-chat">Hide</a></p> 

                    <p class="text-center chat-title">Online users</p> 

                    <table >
                        <tr ng-repeat="chat in profile">

                            <td>
                                <ul class="list-inline">
                                    <a href="http://localhost:8080/alumni/messages.html" class="list-group-item">

                                        <i class="fa fa-check-circle connected-status">

                                            <img src="resources/profileimage/{{chat.emailid}}.jpg" class="img-chat img-thumbnail" alt="Image">
                                            {{chat.firstname}} {{chat.lastname}}</i>

                                        <li></li>


                                    </a>
                                </ul>

                            </td>

                        </tr>
                    </table>

                </div>

            </div><!-- Online users sidebar content-->

            <jsp:include page="footer.jsp" />



            <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>
            <script>
                                                        $(document).ready(function () {
                                                            var date_input = $('input[name="reglastdate"]'); //our date input has the name "date"
                                                            var container = $('.bootstrap-iso form').length > 0 ? $('.bootstrap-iso form').parent() : "body";
                                                            date_input.datepicker({
                                                                format: 'yyyy/mm/dd',
                                                                container: container,
                                                                todayHighlight: true,
                                                                autoclose: true,
                                                            })
                                                        })
            </script>




          
        </div>
    </body>
</html>