<!DOCTYPE html>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html lang="en">
    <head>

        <script src="resources/js/angular.js"></script>
        <script>
            var circular =${jobcircular};
            var chat = ${userprofileobject};
            console.log(chat);
            angular.module('myapp', []).controller('BlogpostController', function ($scope) {

            $scope.profile = chat;
            $scope.jobcircular = circular;
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
                    <a class="navbar-brand" href="http://demos.bootdey.com/dayzone/index.html"> <img src="resources/logo/alumni-logo.jpg" class="img-logo"> <b>Alumni</b> </a>
                </div>
                <div id="navbar" class="collapse navbar-collapse nav_menu">
                    <div class="col-md-5 col-sm-4">
                        <form class="navbar-form" method="get" action="/search">
                            <div class="form-group" style="display:inline;">
                                <div class="input-group" style="display:table;">
                                    <input class="form-control" id ="txt" name="searchString" placeholder="Search..." autocomplete="on" type="text"> <span class="input-group-addon" style="width:1%;"> <button id="button-id" type="submit"><span class="glyphicon glyphicon-search"></span></button> </span>
                                </div>
                            </div>
                            <div>
                                    ${player.superTeam}
       </div>
                        </form>
                    </div>
                    <ul class="nav navbar-nav navbar-right">
                        <li class="active"><a href="http://localhost:8080/alumni/timelineal">${profileobject1.firstname} ${profileobject1.lastname}<img src="resources/profileimage/${UserId}.jpg" class="img-nav"></a></li>
                        <li><a href="homepagealumni"><i class="fa fa-home"></i>&nbsp;   </a></li>
                        <li><a href="showalljobcircularal"><i class="fa fa-briefcase"></i></a></li>
                        <li><a href="showallevental"><i class="fa fa-calendar"></i></a></li>


                        <li class="">
                            <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">

                                <span class=" glyphicon glyphicon-triangle-bottom"></span>
                            </a>
                            <ul class="dropdown-menu  pull-right">
                                <li><a href="jobcircularal"> Add job Circular</a></li>
                                <li><a href="allalamnievent"> Add Event</a></li>
                                <li><a href="javascript:;">Help</a></li>
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

                                <h1>${UserId}</h1>

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


                        <!-- update info -->
                        <div class="panel animated fadeInDown delay-05s col-lg-12 " id="panel-1">
                            <div class="pull-left">
                                <a href="addjobcircularalpage"><button id="addjob"
                                                                     type="submit" class="btn">Add new Job Circular</button></a>
                            </div>
                            <!-- end panel heading -->
                            <br/><br/>

                            <div  class="panel-body pull-left container col-lg-12" ng-repeat="x in jobcircular">




                                <div class="panel-group" id="accordion">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse{{x.jobid}}">Job Circular {{$index + 1}}</a>
                                            </h4>
                                        </div>
                                        <div id="collapse{{x.jobid}}" class="panel-collapse collapse ">
                                            <div class="panel-body">

                                                <table border="0" align="center" cellpadding="0" cellspacing="0" width="100%" >
                                                    <tbody>
                                                        <tr>
                                                            <td width="73%" height="" align="left" valign="bottom" class="BDJApplicantsName">
                                                                <!--Applicant's Name:-->
                                                                <h1><u>{{x.title}}</u></h1>

                                                            </td>
                                                            

                                                        </tr>

                                                        <tr>
                                                            <tr>
                                                <td class="BDJNormalText04" align="left" valign="middle">
                                                    <!--Contact Address:-->

                                                    <h4>Address: {{x.companynames}}</h4>
                                                    <!--Home Phone:-->

                                                    <br>
                                                    <h5><u>Vacancy :</u></h5> {{x.vacancy}}
                                                    <!--Office Phone:-->

                                                    <br>
                                                    <h5><u>Job Responsibilities :</u></h5>{{x.responsibility}}
                                                    <!--Mobile:-->

                                                    <br>
                                                    <h5><u>Job Description :</u></h5>
                                                    {{x.jobdescription}}
                                                    <br>
                                                    <h5><u>Job Nature :</u></h5>
                                                    {{x.jobnature}}
                                                    <br>
                                                    <h5><u>Job Level :</u></h5>
                                                    {{x.joblevel}}
                                                    <br>
                                                    <h5><u>Education Qualification :</u></h5>
                                                    {{x.eduqualification}}
                                                    <br>
                                                    <h5><u>Experience :</u></h5>
                                                    {{x.experience}}
                                                    <br>
                                                    <h5><u>Location :</u></h5>
                                                    {{x.location}}
                                                    <h5><u>Salary :</u></h5>
                                                    {{x.salary}}
                                                    <h5><u>Other Benefits :</u></h5>
                                                    {{x.otherbenefits}}
                                                    <h5><u>Age Limit :</u></h5>
                                                    {{x.agelimit}}

                                                    <h5><u>Apply Last Date:</u></h5>
                                                    {{x.applylastdate}}
                                                </td>
                                            </tr>
                                                        </tr>
                                                        <tr>
                                                    <br/><br/><br/>

                                                    </tr>
                                                    
                                                    <tr>
                                                        <td>
                                                            <a href="editalumnijobcirculars?getpid={{x.jobid}}"><button  id="editjob"
                                                                                                                  type="submit" class="btn">edit</button></a>
                                                        
                                                <a href="removejobcircularal/{{x.jobid}}"><button  id="removebuttons" type="button" class="btn">Remove</button></a>
                                                       
                                                <a href="showjobresponsal?getpid={{x.jobid}}"><button  id="applylist" type="button" class="btn">Apply List</button></a>

                                                        </td>
                                                    </tr>
                                                    </tbody>

                                                </table>                    


                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
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
                                <a href="aboutfrind?getpid={{chat.emailid}}" class="list-group-item">

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
                                            var date_input = $('input[name="applylastdate"]'); //our date input has the name "date"
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