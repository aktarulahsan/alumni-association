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
        <title>JSP Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <link href="resources/css/bootstrap.min.css" rel="stylesheet">

        <link href="resources/profile/css/animate.min.css" rel="stylesheet">

        <link href="resources/profile/css/font-awesome.min.css" rel="stylesheet">

        <link href="resources/profile/css/timeline.css" rel="stylesheet">
        <link href="resources/profileone/timeline.css" rel="stylesheet">

        <script src="resources/profile/css/jquery.1.11.1.min.js.download"></script>

        <script src="resources/profile/css/bootstrap.min.js.download"></script>

        <script src="resources/profile/css/custom.js.download"></script>
        <link rel="stylesheet" href="resources/css/font-awesome.css">

        <script id="_carbonads_projs" type="text/javascript" src="resources/profile/css/CKYILKJI.json"></script>


        <link rel="icon" href="http://demos.bootdey.com/dayzone/img/favicon.ico">
        <title>Day-Zone</title>
        <link href="./bootstrap.min.css" rel="stylesheet">
        <link href="./animate.min.css" rel="stylesheet">
        <link href="./font-awesome.min.css" rel="stylesheet">

        <script async="" src="./analytics.js.download"></script><script async="" src="./analytics.js.download"></script><script src="./jquery.1.11.1.min.js.download"></script>
        <script src="./bootstrap.min.js.download"></script>
        <script src="./custom.js.download"></script>

       
        <script src="resources/js/angular.js"></script>
        <script>
            var edu =${educationlist};
            var chat = ${userprofileobject};
            var skills =${skilllist};
            var jobhis =${jobhistorys};
            console.log(chat);
            angular.module('myapp', []).controller('BlogpostController', function ($scope) {

                $scope.profile = chat;
                $scope.education = edu;
                $scope.ski = skills;
                $scope.jobh = jobhis;
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
                    <div class="col-md-10 no-paddin-xs">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="cover-photo" style="background-image:url(resources/profileimage/sk.jpg)">
                                <h2 class="cover-name right">Aktarul Ahsan</h2>
                                <img src="resources/profileimage/ak@gmail.com.jpg" class="profile-photo img-thumbnail show-in-modal">
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
                                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#profile-opts-navbar"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
                                        </div>
                                        <div class="collapse navbar-collapse" id="profile-opts-navbar">
                                            <ul class="nav navbar-nav navbar-right">
                                                <li class="active"><a href="http://demos.bootdey.com/dayzone/profile.html#"><i class="fa fa-tasks"></i>Timeline</a></li>
                                                <li><a href="http://localhost:8080/alumni/aboutstudentprofile"><i class="fa fa-info-circle"></i>About student</a></li>
                                                <li><a href="http://demos.bootdey.com/dayzone/friends.html"><i class="fa fa-users"></i>Friends</a></li>
                                                <li><a href="http://demos.bootdey.com/dayzone/photos.html"><i class="fa fa-file-image-o"></i>Photos</a></li>
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
                   <div class="col-md-10 no-paddin-xs">
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

                          <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 about-tab-menu">

                              <div class="list-group">
                                  <a data-toggle="pill" href="aboutstudentprofile" class="list-group-item  text-center">
                                      <h4 class="fa fa-child"></h4><br>Overview
                                  </a>
                                  <a data-toggle="pill" href="#" class="list-group-item active text-center">
                                      <h4 class="fa fa-child"></h4><br>Education
                                  </a>



                              </div>
                          </div>
                          <div class="col-lg-9 col-md-9 col-sm-9 col-xs-9 tab-content">
                              <div id="over" class="tab-pane fade in active ">
                                  <div>

                            <form>
                                <div class="widget post panel-shadow animated fadeInUp">

                                    <div class=" panel-body bio-graph-info">

                                        <h3 class="widget-caption">Education info</h3>
                                        

                                    </div>
                                    <div>
                                        <div>

                                            <table class="table" ng-repeat="pq in education">
                                                <thead>
                                                    <tr>
                                                        <th>Exam Name: </th>
                                                        <th>Major Subject:</th>

                                                        <th>Institute Name: </th>
                                                        <th>Passing Year: </th>
                                                        <th>Duration: </th>
                                                        <th>Result :</th>
                                                        <th>Achievement :</th>
                                                        <th></th>
                                                    </tr>
                                                </thead>


                                                <tr>
                                                    <td>{{pq.examtitle}}</td>
                                                    <td>{{pq.majorsubject}}</td>
                                                    <td>{{pq.institutename}}</td>
                                                    <td>{{pq.passingyear}}</td>
                                                    <td>{{pq.duration}}</td>
                                                    <td>{{pq.result}}</td>
                                                    <td>{{pq.achivment}}</td>
                                                    <td><a href="addskill"><button id="editbuttons"
                                                           type="submit" class="btn">Edit</button></a></td>
                                                </tr>

                                            </table>

                                        </div>
                                    </div>
                                </div>
                            </form>



                        </div>
                                                
                                                
                                                
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
                                    <div>
                                        <jsp:include page="../footer.jsp" />
                                    </div>

                                    
                                    
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
                                    
                                    <script>'undefined' === typeof _trfq || (window._trfq = []); 'undefined' === typeof _trfd && (window._trfd = []), _trfd.push({'tccl.baseHost': 'secureserver.net'}), _trfd.push({'ap': 'cpsh'}, {'server': 'p3plcpnl0537'}) // Monitoring performance to make your website faster. If you want to opt-out, please contact web hosting support.</script>
            <script src="resources/profile/css/tcc_l.combined.1.0.6.min.js.download"></script>

    </body>
</html>
