<!DOCTYPE html>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html lang="en">
    <head>
        <script src="resources/js/angular.js"></script>
        <script>
            //var eventres =${viewalleventrespons};
            var chat = ${userprofileobject};
            var eventrespons = ${viewalleventrespons};
            console.log(chat);
            angular.module('myapp', []).controller('BlogpostController', function ($scope) {

                $scope.profile = chat;
                $scope.applyeventuser = eventrespons;
                //$scope.alleventres = eventres;
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




                    <div class="profile-info col-sm-9 " >


                        <div class="panel animated fadeInDown delay-05s col-lg-12 row">
                            <div class="panel-group" id="accordion">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">Event list</a>
                                        </h4>
                                    </div>
                                    <div id="collapse1" class="panel-collapse collapse in ">
                                        <div class="panel-body">
                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <div class="comp-name-text">
                                                        <h2><b><u>${oneevent.title}</u></b></h2> 
                                                    </div>
                                                </div>
                                                <div class="col-sm-12">
                                                    <div class="locon-text">
                                                        <div class="row">
                                                            <div class="col-sm-12">
                                                                <div class="locon-text-d">
                                                                    ${oneevent.location} location</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-sm-12">
                                                    <div class="edu-text">
                                                        <div class="edu-text-d" >

                                                            <ul>
                                                                <li><h5>Discription</h5>  
                                                                </li>${oneevent.description}
                                                            </ul>

                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-sm-12">
                                                    <div class="edu-text">
                                                        <div class="edu-text-d" >
                                                            <h4><b>Contact Persone</b></h4>
                                                            ${oneevent.contactparson}

                                                        </div>
                                                    </div>
                                                </div>               
                                                <div class="col-sm-12">
                                                    <div class="row">
                                                        <div class="col-sm-9">
                                                            <div class="exp-text">
                                                                <div class="row">
                                                                    <div class="col-sm-12">
                                                                        <div class="exp-text-d" maxlength="50">
                                                                            ${oneevent.contactnumber}

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-3">
                                                            <div class="dead-text">
                                                                <div class="dead-text-s">
                                                                    <div class="dead-text-d">
                                                                        <strong>Registration Last Date</strong><br/>
                                                                        ${oneevent.reglastdate}
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>


                            <div class="panel-group col-lg-12" >
                                <div class="panel panel-default"  ng-repeat="evres in applyeventuser">
<!--                                    ng-repeat="x in alleventres"-->
                                    <div class="panel-heading">
                                        <div class="hidden">
                                            <form:form name="addblog"
                                           modelAttribute="eventres" action=""
                                           method="post">
                                             <div class="form-group">
                                        <form:input id="name" class="form-control"
                                                    Placeholder="Blogpost Id" type="text" path="emailid" value="{{evres.emailid}}" readonly="true"></form:input>
                                        </div>
                                             
                                           </form:form>
                                        </div>
                                         
                                        <h4 class="panel-title">
                                            <a href="#" data-toggle="collapse" data-parent="#" >{{evres.emailid}}</a>
                                        </h4>
                                    </div>
                                    <div class="panel-body">
                                        <div class="row">
                                            <div>
                                                {{evres.comment}}
                                                
                                            </div>
                                            <div>
                                                Respons Date
                                                {{evres.responsdate}}
                                            </div>

                                        </div>    
                                    </div>
                                </div>    
                            </div>                                                                



                        </div>

                        <!-- update info -->

                        <div class="panel animated fadeInDown delay-05s col-lg-12 " id="panel-1">
                            <div class="pull-left panel-body">
                                <a href="addedituserevent"><button id="addjob"
                                                                   type="submit" class="btn">Add new Event</button></a>
                            </div>
                            <!-- end panel heading -->
                            <br/><br/>

                           
                           
                        </div>
                        
                    </div>

                </div>
            </div>
            <br/><br/><br/><br/><br/>
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

        <!-- Footer -->
        <footer class="container-fluid text-center">

            <div class="container">

                <p>

                </p>   

                Copyrights and copy 2018 Alumni | Created By Md Aktarul Ahsan  | All Rights Reserved <br>

                <p></p>

            </div>

        </footer>
        <!-- Footer -->




        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>
        <script>
                                                    $(document).ready(function () {
                                                        var date_input = $('input[name="reglastdate"]'); //our date input has the name "date"
                                                        var container = $('.bootstrap-iso form').length > 0 ? $('.bootstrap-iso form').parent() : "body";
                                                        date_input.datepicker({
                                                            format: 'yyyy/MM/dd',
                                                            container: container,
                                                            todayHighlight: true,
                                                            autoclose: true,
                                                        })
                                                    })
        </script>


       
    </body>
</html>