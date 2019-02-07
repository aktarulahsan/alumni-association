<%-- 
    Document   : sprofile
    Created on : Dec 21, 2018, 3:21:23 PM
    Author     : aktar
--%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alumni</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="resources/logo/alumni-logo.jpg">
        <link href="resources/css/bootstrap.min.css" rel="stylesheet">

        <link href="resources/profile/css/animate.min.css" rel="stylesheet">

        <link href="resources/profile/css/font-awesome.min.css" rel="stylesheet">

        <link href="resources/profile/css/timeline.css" rel="stylesheet">
        <link href="resources/profileone/timeline.css" rel="stylesheet">

        <script src="resources/profile/css/jquery.1.11.1.min.js.download"></script>
        <script src="resources/js/jquery.min.js"></script>
        <script src="resources/js/bootstrap.min.js"></script>

        <script src="resources/profile/css/bootstrap.min.js.download"></script>

        <script src="resources/profile/css/custom.js.download"></script>
        <link rel="stylesheet" href="resources/css/font-awesome.css">

        <script id="_carbonads_projs" type="text/javascript" src="resources/profile/css/CKYILKJI.json"></script>



        

        <script src="resources/js/angular.js"></script>
        <script>
            var edu =${educationlist};
            var skills =${skilllist};
            var jobhis =${jobhistorys};
            var applyjob =${applyjoblists};
            var applyevent =${appevent};
            //var batch =${batchf};

            console.log(edu);
            angular.module('myapp', []).controller('BlogpostController', function ($scope) {

                $scope.education = edu;
                $scope.ski = skills;
                $scope.jobh = jobhis;
                $scope.joblist = applyjob;
                $scope.apevent = applyevent;
                //$scope.batchfriend = batch;

            });



        </script>

        <style>
            .responsiveblogimg {
                width: 100%;
                max-height: 200px;
                height: auto;
            }
        </style>


    </head>
    <body class="animated fadeIn" ng-app="myapp"
          ng-controller="BlogpostController">
        <div class="col-lg-12 center">

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
            <div class="container">
                <div class="row">
                    <div class="col-md-11 no-paddin-xs">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="cover-photo" style="background-image:url(resources/profileimage/sk.jpg)">
                                <h2 class="cover-name right">Aktarul Ahsan</h2>
                                <img src="resources/profileimage/${UserId}.jpg" alt="pic" class="profile-photo img-thumbnail show-in-modal">
                                <div class="row">
                                    <div class="col-sm-10"></div>
                                    <div class="col-sm-2 right">

                                        <form:form name="addblog"
                                                   modelAttribute="profileobject1" action="uploadcoverpic" enctype="multipart/form-data"
                                                   method="post">
                                            <a href="#"><i class="fa">
                                                    <form:input type="file" name="fileToUpload" id="fileToUpload"
                                                                class="fa fa-camera"  path="" ></form:input>

                                                    </i></a>
                                            </form:form>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="panel-options">
                                <div class="navbar navbar-default navbar-cover">
                                    <div class="container-fluid">
                                        <div class="navbar-header">
                                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#profile-opts-navbar">  <span class="icon-bar"></span> </button>
                                        </div>
                                        <div class="collapse navbar-collapse" id="profile-opts-navbar">
                                            <ul class="nav navbar-nav navbar-right">
                                                <li class="active"><a href="timelineal"><i class="fa fa-tasks"></i>Timeline</a></li>
                                                <li><a href="http://localhost:8080/alumni/aboutstudentprofile"><i class="fa fa-info-circle"></i>About Alumni</a></li>
                                                <li><a href="sfriend"><i class="fa fa-users"></i>Friends</a></li>
                                                <li><a href="showstudentpic"><i class="fa fa-file-image-o"></i>Photos</a></li>
                                                <li><a href="http://demos.bootdey.com/dayzone/messages.html"><i class="fa fa-comment"></i>Messages</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="row">
                    <div class="col-md-11 no-paddin-xs">
                        <!-- tabs user info -->
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="panel panel-default panel-about">
                                <div class="panel-heading">
                                    <h3 class="panel-title">About
                                        <a href="http://demos.bootdey.com/dayzone/edit-profile.html" class="pull-right"><i class="fa fa-edit"></i>Edit</a>
                                    </h3>
                                </div>
                                <div class="panel-body">
                                    <div class="col-md-12 col-sm-12 col-xs-12 about-tab-container">

                                        <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2 about-tab-menu">


                                            <div>
                                                <ul class="nav nav-pills nav-stacked">
                                                    <li class="active"> <a data-toggle="pill" href="#over" class="list-group-item  text-center">
                                                            <h4 class="fa fa-child"></h4><br>Overview
                                                        </a></li>
                                                    <li> <a data-toggle="pill" href="#mw" class="list-group-item  text-center">
                                                            <h4 class="glyphicon glyphicon-education"></h4><br>Education
                                                        </a></li>
<!--                                                    <li> <a data-toggle="pill" href="#ski" class="list-group-item  text-center">
                                                            <h4 class="glyphicon glyphicon-star"></h4><br>Skill
                                                        </a></li>

                                                    <li> <a data-toggle="pill" href="#job" class="list-group-item  text-center">
                                                            <h4 class="fa fa-briefcase"></h4><br>Job History
                                                        </a></li>-->
                                                    <li> <a data-toggle="pill" href="#cv" class="list-group-item  text-center">
                                                            <h4 class="fa fa-briefcase"></h4><br>view CV
                                                        </a></li>
<!--                                                    <li> <a data-toggle="pill" href="#appjob" class="list-group-item  text-center">
                                                            <h4 class="fa fa-briefcase"></h4><br>apply job history
                                                        </a></li>-->
                                                    <li> <a data-toggle="pill" href="#appevent" class="list-group-item  text-center">
                                                            <h4 class="fa fa-briefcase"></h4><br>apply event history
                                                        </a></li>

                                                    <br/><br/><br/><br/><br/><br/><br/>
                                                </ul>

                                            </div>
                                        </div>
                                        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10 tab-content">
                                            <div id="over" class="tab-pane fade in active   ">
                                                <h1>parsonal information</h1>
                                                <div class="panel-body bio-graph-info">

                                                    <div class="row">
                                                        <div class="bio-row">
                                                            <p><span>First Name </span>: ${profileobject1.firstname}</p>
                                                        </div>
                                                        <div class="bio-row">
                                                            <p><span>Last Name </span>: ${profileobject1.lastname}</p>
                                                        </div>
                                                        <div class="bio-row">
                                                            <p><span>Father Name </span>: ${profileobject1.fathername}</p>
                                                        </div>
                                                        <div class="bio-row">
                                                            <p><span>Mother Name</span>: ${profileobject1.mothername}</p>
                                                        </div>
                                                        <div class="bio-row">
                                                            <p><span>Date Of Birth </span>: ${profileobject1.dateofbirth}</p>
                                                        </div>
                                                        <div class="bio-row">
                                                            <p><span>Gender </span>: ${profileobject1.gender}</p>
                                                        </div>
                                                        <div class="bio-row">
                                                            <p><span>Religion </span>: ${profileobject1.religion}</p>
                                                        </div>
                                                        <div class="bio-row">
                                                            <p><span>Marital Status </span>: ${profileobject1.maritalstatus}</p>
                                                        </div>
                                                        <div class="bio-row">
                                                            <p><span>Nationality </span>: ${profileobject1.nationality}</p>
                                                        </div>
                                                        <div class="bio-row">
                                                            <p><span>National ID </span>: ${profileobject1.nid}</p>
                                                        </div>

                                                    </div>
                                                    <div class="pull-right">
                                                        <a href="editstuprofile"><button id="editbuttons"
                                                                                          type="submit" class="btn">Edit</button></a> 
                                                    </div>
                                                </div>
                                            </div>
                                            <div id="mw" class="tab-pane fade">
                                                <div id="over" class="tab-pane fade in active ">
                                                    <div>

                                                        <form>
                                                            <div class="widget post panel-shadow animated fadeInUp">

                                                                <div class=" panel-body bio-graph-info">

                                                                    <h3 class="widget-caption">Education info</h3>
                                                                    <div class="pull-right">
                                                                        <a href="addstudenteducatoninfo"><button id="addeducation"
                                                                                                                type="button" class="btn">Add Education</button></a>
                                                                    </div>


                                                                </div>
                                                                <div>

                                                                    <div>

                                                                        <table class="table" ng-repeat="ox in education">
                                                                            <thead>
                                                                                <tr>
                                                                                    <th>Exam Name: </th>
                                                                                    <th>Major Subject:</th>

                                                                                    <th>Institute Name: </th>
                                                                                    <th>Passing Year: </th>
                                                                                    <th>Duration: </th>
                                                                                    <th>Result :</th>
                                                                                    <th>Achievement :</th>

                                                                                </tr>
                                                                            </thead>


                                                                            <tr>
                                                                                <td>{{ox.examtitle}}</td>
                                                                                <td>{{ox.majorsubject}}</td>
                                                                                <td>{{ox.institutename}}</td>
                                                                                <td>{{ox.passingyear}}</td>
                                                                                <td>{{ox.duration}}</td>
                                                                                <td>{{ox.result}}</td>
                                                                                <td>{{ox.achivment}}</td>
                                                                                <td>

                                                                                    <div class="pull-right">
                                                                                        <a href="editstudenteducation?getpid={{ox.eduinfoid}}"><button  id="editedu"
                                                                                                                                                       type="button" class="btn"><span class="glyphicon glyphicon-pencil"></span></button></a> 

                                                                                        <a href="removestudenteducation/{{ox.eduinfoid}}"><button  id="removebuttons"
                                                                                                                                               type="button" class="btn"><span class="glyphicon glyphicon-remove"></span></button></a>
                                                                                    </div>
                                                                                </td>   
                                                                            </tr>

                                                                        </table>

                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </form>



                                                    </div>



                                                </div>
                                            </div>

                                            <div id="ski" class="tab-pane fade ">
                                                <div class="panel-body bio-graph-info">

                                                    <div>
                                                        <form>
                                                            <div class="widget post panel-shadow animated fadeInUp">

                                                                <div class=" panel-body bio-graph-info">

                                                                    <h3 class="widget-caption">Skill</h3>

                                                                </div>
                                                                <div>
                                                                    <div>

                                                                        <table class="table" ng-repeat="x in ski">
                                                                            <thead>
                                                                                <tr>


                                                                                </tr>
                                                                            </thead>


                                                                            <tr>
                                                                                <td>{{x.skill}}</td>


                                                                            </tr>

                                                                        </table>





                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </form>

                                                        <div class="pull-right">
                                                            <a href="alumnikill"><button id="editbuttons"
                                                                                         type="submit" class="btn">Edit</button></a>
                                                        </div>
                                                    </div>



                                                </div>
                                            </div> 

                                            <div id="job" class="tab-pane fade ">
                                                <div class="panel-body bio-graph-info">
                                                    <div class="pull-right">
                                                        <a href="alumniaddjobhistory"><button id="addjob"
                                                                                              type="submit" class="btn">Add Job History</button></a>
                                                    </div>
                                                    <table class="table" ng-repeat="x in jobh">
                                                        <thead>
                                                            <tr>
                                                                <th>companyname: </th>
                                                                <th>designation:</th>

                                                                <th>department: </th>
                                                                <th>responsibility: </th>
                                                                <th>location: </th>
                                                                <th>startdate :</th>
                                                                <th>enddate :</th>
                                                            </tr>
                                                        </thead>


                                                        <tr>
                                                            <td>{{x.companynames}}</td>
                                                            <td>{{x.designation}}</td>

                                                            <td>{{x.department}}</td>
                                                            <td>{{x.responsibility}}</td>
                                                            <td>{{x.location}}</td>
                                                            <td>{{x.startdate}}</td>
                                                            <td>{{x.enddate}}</td>


                                                            <td>

                                                                <div class="pull-right">
                                                                    <a href="editalumnijobhistory?getpid={{x.jobhistoryid}}"><button  id="editjob"
                                                                                                                                      type="submit" class="btn">edit</button></a> 
                                                                    <br/>
                                                                    <a href="removejobhistorys/{{x.jobhistoryid}}"><button  id="removebuttons"
                                                                                                                            type="button" class="btn">Remove</button></a>
                                                                </div>
                                                            </td>
                                                        </tr>

                                                    </table>



                                                </div>                
                                            </div>  
                                            <!--xxxxxxxxxxxxxxxxxxxxxx                              job history                                                -->

                                            <!--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx                               User CV                           -->

                                            <div id="cv" class="tab-pane fade ">
                                                <div class="panel-body bio-graph-info">
                                                    
                                                    
                                                    
                                                    <jsp:include page="cv.jsp" />

                                                </div>

                                            </div>
                                            <!--    end User CV-->

                                            <!--jjjjjjjjjjjjjjjj    Apply job List                   jjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj-->

                                            <div id="appjob" class="tab-pane fade ">
                                                <div class="panel-body bio-graph-info">
                                                    <jsp:include page="pagecss.jsp"/>
                                                    <jsp:include page="applyjobhistory.jsp"/>

                                                </div>
                                            </div>
                                            <!--eeeeeeeeeeeeeeeeee    Apply Event List                   eeeeeeeeeeeeeeeeeeeeeeeeeee-->    

                                            <div id="appevent" class="tab-pane fade ">
                                                <div class="panel-body bio-graph-info">
                                                    <jsp:include page="pagecss.jsp"/>
                                                    <jsp:include page="applyeventlist.jsp"/>

                                                </div>
                                            </div>


                                        </div>
                                    </div>
                                </div>
                            </div><!-- end tabs user info -->

                            <!-- family -->
                            <div class="col-md-12">
                                <div class="panel panel-default panel-family">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">Family</h3>
                                    </div>
                                    <div class="panel-body">
                                        <div class="col-md-6 cols-sm-6 col-xs-12">
                                            <div class="media block-update-card">
                                                <a class="pull-left" href="http://demos.bootdey.com/dayzone/about.html#">
                                                    <img class="media-object update-card-MDimentions" src="./Day-Zoneprofile_files/woman-1.jpg" alt="...">
                                                </a>
                                                <div class="media-body update-card-body">
                                                    <h4 class="media-heading">Dapibus acatar</h4>
                                                    <div class="btn-toolbar card-body-social" role="toolbar">
                                                        <a href="http://demos.bootdey.com/dayzone/about.html#" class="btn btn-default">Add friend</a>
                                                        <a href="http://demos.bootdey.com/dayzone/about.html#" class="btn btn-default">message</a>
                                                    </div>
                                                </div>
                                            </div>   
                                        </div>

                                        <div class="col-md-6 cols-sm-6 col-xs-12">
                                            <div class="media block-update-card">
                                                <a class="pull-left" href="http://demos.bootdey.com/dayzone/about.html#">
                                                    <img class="media-object update-card-MDimentions" src="./Day-Zoneprofile_files/woman-4.jpg" alt="...">
                                                </a>
                                                <div class="media-body update-card-body">
                                                    <h4 class="media-heading">Jhoanath matew</h4>
                                                    <div class="btn-toolbar card-body-social" role="toolbar">
                                                        <a href="http://demos.bootdey.com/dayzone/about.html#" class="btn btn-default">Add friend</a>
                                                        <a href="http://demos.bootdey.com/dayzone/about.html#" class="btn btn-default">message</a>
                                                    </div>
                                                </div>
                                            </div>   
                                        </div>

                                        <div class="col-md-6 cols-sm-6 col-xs-12">
                                            <div class="media block-update-card">
                                                <a class="pull-left" href="http://demos.bootdey.com/dayzone/about.html#">
                                                    <img class="media-object update-card-MDimentions" src="./Day-Zoneprofile_files/guy-2.jpg" alt="...">
                                                </a>
                                                <div class="media-body update-card-body">
                                                    <h4 class="media-heading">Jeferh Smith</h4>
                                                    <div class="btn-toolbar card-body-social" role="toolbar">
                                                        <a href="http://demos.bootdey.com/dayzone/about.html#" class="btn btn-default">Add friend</a>
                                                        <a href="http://demos.bootdey.com/dayzone/about.html#" class="btn btn-default">message</a>
                                                    </div>
                                                </div>
                                            </div>   
                                        </div>

                                        <div class="col-md-6 cols-sm-6 col-xs-12">
                                            <div class="media block-update-card">
                                                <a class="pull-left" href="http://demos.bootdey.com/dayzone/about.html#">
                                                    <img class="media-object update-card-MDimentions" src="./Day-Zoneprofile_files/guy-4.jpg" alt="...">
                                                </a>
                                                <div class="media-body update-card-body">
                                                    <h4 class="media-heading">Markton contz</h4>
                                                    <div class="btn-toolbar card-body-social" role="toolbar">
                                                        <a href="http://demos.bootdey.com/dayzone/about.html#" class="btn btn-default">Add friend</a>
                                                        <a href="http://demos.bootdey.com/dayzone/about.html#" class="btn btn-default">message</a>
                                                    </div>
                                                </div>
                                            </div>   
                                        </div>

                                    </div>
                                </div>
                            </div><!-- end family-->
                        </div> 

                    </div>










                </div>





                <br/><br/><br/><br/><br/><br/>
            </div>

        </div>
        <div>
            <jsp:include page="../footer.jsp" />
        </div>



        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>
        <script>
                                                                                        $(document).ready(function () {
                                                                                            var date_input = $('input[name="passingyear"]'); //our date input has the name "date"
                                                                                            var container = $('.bootstrap-iso form').length > 0 ? $('.bootstrap-iso form').parent() : "body";
                                                                                            date_input.datepicker({
                                                                                                format: 'yyyy',
                                                                                                container: container,
                                                                                                todayHighlight: true,
                                                                                                autoclose: true,
                                                                                            })
                                                                                        })
        </script>

        
    </body>
</html>
