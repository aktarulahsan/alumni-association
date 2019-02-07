<!DOCTYPE html>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html lang="en">
    <head>


        
        
        
        
        <script src="resources/js/angular.js"></script>
        <script>

            var chat = ${userprofileobject};
//            var circular = ${viewonevent};
            console.log(chat);
            angular.module('myapp', []).controller('BlogpostController', function ($scope) {

                $scope.profile = chat;
                //$scope.jobcircular = circular;

            });
        </script>
        <style>
            th {
                font-size: 13px;
            }
            td {
                font-size: 11px;
            }

            .apply-wrap {padding:0px 0px 4px 0px; margin:15px 0px 0px 0px; border:1px solid #c6c4c5; -webkit-border-radius:6px; -moz-border-radius:6px; border-radius:6px; position:relative; font-size:14px; background-color:#f3f3f3;}

            .aoc-wrapper {
                padding: 0px;
                margin: 0px;
            }

        </style>
    </head>

    <body class="animated fadeIn" ng-app="myapp" ng-controller="BlogpostController">
<jsp:include page="header.jsp" /> 
        
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




                    <div class="profile-info col-sm-8 " >


                        <!-- update info -->
                        <div class=" animated fadeInDown delay-05s " id="panel-1">
                            <div  class="panel-body col-lg-12 ">
                                <div class="formcontainer">
                                    <div>
                                        <table border="0" align="center" cellpadding="0" cellspacing="0" width="100%" >
                                            <tbody>
                                                <tr>
                                                    <td width="73%" height="" align="left" valign="bottom" class="BDJApplicantsName">
                                                        <!--Applicant's Name:-->
                                                        <h1>${viewonevent.title}</h1><a href="reportevent?getpid=${viewonevent.eventid}" class="glyphicon glyphicon-print pull-right"></a>

                                                    </td>

                                                </tr>
                                                <tr>
                                                    <td>
                                                        <h3>Contact Person ${viewonevent.contactparson}</h3>
                                                        <br/>

                                                        <h4><u>Event Description :</u></h4>     
                                                        <h5>${viewonevent.description}</h5>
                                                        <br>
                                                        <h4><u>Location :</u></h4>
                                                        <h5>${viewonevent.location}</h5>   
                                                        <h4><u>Fees :</u></h4>
                                                        <h5>${viewonevent.fees}</h5>
                                                        <br/>
                                                        <h4><u>Contact Number :</u></h4>
                                                        <h5>${viewonevent.contactnumber}</h5>
                                                        <br/>
                                                        <h4><u>Apply Last Date:</u></h4>
                                                        <h5>${viewonevent.reglastdate}</h5>
                                                    </td>
                                                    <td>

                                                    </td>
                                                </tr>



                                            </tbody>

                                        </table>
                                    </div>

                                    <div class="span12 centered-text centered-text text-center">Read Before Apply</div>
                                    <div>Candidates are requested to read the requirements carefully before submitting the application.
                                        *Photograph must be enclosed with the resume.</div><br/><br/><br/>

                                    <div class="container col-sm-12 text-center">
                                        
                                        <a href="#demo" class="btn btn-primary  " data-toggle="collapse">Response Event</a>
                                        <div id="demo" class="collapse">
                                            <div class="col-lg-12 container">

                                                <div class="panel panel-default">


                                                    <div class="panel-heading">
                                                        <form:form name="addblog"
                                                                   modelAttribute="applyevent" action="applyeventstudent" 
                                                                   method="post">
                                                            <div class="panel-body">

                                                                <div class="form-group" hidden="true">

                                                                    <label class="col-md-4 control-label">eventid </label>

                                                                    <div class="col-md-7">

                                                                        <form:input class="form-control" 
                                                                                    Placeholder="eventid id " type="text" path="eventid" value=" ${viewonevent.eventid}"></form:input>

                                                                        </div>

                                                                    </div>
                                                                <div class="form-group" hidden="true">

                                                                    <label class="col-md-4 control-label">emailid </label>

                                                                    <div class="col-md-7">

                                                                        <form:input class="form-control"
                                                                                    Placeholder="profile id " type="text" path="emailid" value=" ${UserId}"></form:input>

                                                                        </div>

                                                                    </div>
                                                                <div class="form-group">

                                                                    <label class="col-md-4 control-label">comment </label>

                                                                    <div class="col-md-7">

                                                                        <form:textarea class="form-control" rows="5"
                                                                       Placeholder="Enter your comment" type="text" path="comment" required="true"></form:textarea>
                                                                        </div>

                                                                    </div>
                                                                
                                                                
                                                                <br/><br/><br/>
                                                                <div class="form-group">
                                                                     <form:button id="editbuttons" type="submit" name="Addjob"
                                                                 class="btn">submit</form:button>
                                                                </div>
                                                               
                                                                
                                                                </div>
                                                        
                                                        
                                                        </form:form>
                                                        
                                                        

                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>



                                </div>





                            </div>
                            <!-- end panel heading -->
                            <br/><br/>


                            <!-- panel1 body end -->
                        </div>
                        <!-- end update info-->











                        <!-- update info -->

                        <!-- end update info-->

                    </div>

                </div>
            </div>

            <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
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


        <script>'undefined' === typeof _trfq || (window._trfq = []);
                    'undefined' === typeof _trfd && (window._trfd = []), _trfd.push({'tccl.baseHost': 'secureserver.net'}), _trfd.push({'ap': 'cpsh'}, {'server': 'p3plcpnl0537'}) // Monitoring performance to make your website faster. If you want to opt-out, please contact web hosting support.</script><script src="resources/profile/css/tcc_l.combined.1.0.6.min.js.download"></script>


    </body>
</html>