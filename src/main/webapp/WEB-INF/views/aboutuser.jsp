<!DOCTYPE html>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html lang="en"><head>


        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">



        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <meta name="viewport" content="width=device-width, initial-scale=1">

        <meta name="description" content="">

        <meta name="author" content="">

        <link rel="icon" href="http://demos.bootdey.com/bookpost/img/favicon.png">

        <title>Alumni</title>

        <!-- Bootstrap core CSS -->

        <link href="resources/profile/css/bootstrap.min.css" rel="stylesheet">

        <link href="resources/profile/css/animate.min.css" rel="stylesheet">

        <link href="resources/profile/css/font-awesome.min.css" rel="stylesheet">

        <link href="resources/profile/css/timeline.css" rel="stylesheet">

        <link href="resources/profileone/timeline.css" rel="stylesheet">
        
        <script src="resources/profile/css/jquery.1.11.1.min.js.download"></script>

        <script src="resources/profile/css/bootstrap.min.js.download"></script>

        <script src="resources/profile/css/custom.js.download"></script>
        <link rel="stylesheet" href="resources/css/font-awesome.css">

        <script id="_carbonads_projs" type="text/javascript" src="resources/profile/css/CKYILKJI.json"></script>

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
    </head>

    <body class="animated fadeIn" ng-app="myapp" ng-controller="BlogpostController">
        <jsp:include page="header.jsp" />


        <!-- Fixed navbar -->

        <nav class="navbar  navbar-fixed-top navbar-principal">

            <div class="container">

                <div class="navbar-header">

                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">

                        <span class="sr-only">Toggle navigation</span>

                        <span class="icon-bar"></span>

                        <span class="icon-bar"></span>

                        <span class="icon-bar"></span>

                    </button>

                    <a class="navbar-brand" href="http://demos.bootdey.com/bookpost/index.html">

                        <b>Alumni</b>

                    </a>

                </div>

                <div id="navbar" class="collapse navbar-collapse">

                    <div class="col-md-5 col-sm-4">         

                        <form class="navbar-form">

                            <div class="form-group" style="display:inline;">

                                <div class="input-group" style="display:table;">

                                    <input class="form-control" name="search" placeholder="Search..." autocomplete="off" type="text">

                                    <span class="input-group-addon" style="width:1%;">

                                        <span class="glyphicon glyphicon-search"></span>

                                    </span>

                                </div>

                            </div>

                        </form>

                    </div>        

                    <ul class="nav navbar-nav navbar-right">

                        <li>

                            <a href="userprofile">

                                ${sessionScope.UserLoggedIn}

                                <img src="resources/profileimage/${UserId}.jpg" alt="Image" class="img-nav">

                            </a>

                        </li>

                        <li><a href="http://demos.bootdey.com/bookpost/home.html"><i class="fa fa-bars"></i>&nbsp;Home</a></li>

                        <li><a href="http://demos.bootdey.com/bookpost/messages.html"><i class="fa fa-comments"></i></a></li>



                        <li><a href="#" class="nav-controller"><i class="fa fa-user"></i></a></li>        

                    </ul>

                </div>

            </div>

        </nav>
<!--////////////////////////////////-->


        <!-- Timeline content -->

        <div class="container">
        <div class="row">
            <div class="col-md-11 no-paddin-xs">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="cover-photo" style="background-image:url(resources/profileimage/sk.jpg)"> <img src="resources/profileimage/ak@gmail.com.jpg" class="profile-photo img-thumbnail show-in-modal">
                        <h2 class="cover-name">Aktarul Ahsan</h2> </div>
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
                                        <li><a href="http://demos.bootdey.com/dayzone/about.html"><i class="fa fa-info-circle"></i>About</a></li>
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
        
    </div>
        
        <div class="col-lg-12" style="margin-top:50px;">
            

            <div class="row">

                <div class="col-md-11 ">

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

                    <div class="profile-info col-md-6" >

                        <!-- update info -->
                        <div class="panel animated fadeInDown delay-05s" id="panel-1">

                            <!-- end panel heading -->
                            <div class="panel-body">


                                <form:form name="addblog"
                                           modelAttribute="profileobject1" action="edituserprofile" enctype="multipart/form-data"
                                           method="post">
                                    <div class="widget post panel-shadow animated fadeInUp">

                                        <div class="widget-header">

                                            <h3 class="widget-caption">Edit info</h3>

                                        </div>  
                                        <br/>

                                        <div class="panel-body bio-graph-info">
                                            <h1>Bio Graph</h1>
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
                                                <a href="edituserprofile"><button id="editbuttons"
                                                                                  type="submit" class="btn">Edit</button></a> 
                                            </div>
                                        </div>


                                        <br/>

                                    </div>




                                </form:form>

                            </div>
                            <!-- panel1 body end -->
                        </div><!-- end update info-->
                        <div>

                            <form>
                                <div class="widget post panel-shadow animated fadeInUp">

                                    <div class=" panel-body bio-graph-info">

                                        <h3 class="widget-caption">Education info</h3>

                                    </div>
                                    <div>
                                        <div>

                                            <table class="table" ng-repeat="x in education">
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
                                                    <td>{{x.examtitle}}</td>
                                                    <td>{{x.majorsubject}}</td>

                                                    <td>{{x.institutename}}</td>
                                                    <td>{{x.passingyear}}</td>
                                                    <td>{{x.duration}}</td>
                                                    <td>{{x.result}}</td>
                                                    <td>{{x.achivment}}</td>

                                                </tr>

                                            </table>

                                        </div>
                                    </div>
                                </div>
                            </form>



                        </div>
                        <!-- update info -->
                        <!--                        for User Skill -->

                        <div>
                            <form>
                                <div class="widget post panel-shadow animated fadeInUp">


                                    <div>
                                        <div>

                                            <table class="table" ng-repeat="x in ski">
                                                <thead>
                                                    <tr>
                                                        <th>Skill </th>

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
                                <a href="addskill"><button id="editbuttons"
                                                           type="submit" class="btn">Edit</button></a>
                            </div>
                        </div>
                        <!--end of User Skill-->
                        <!--                Start of User Job History-->

                        <div>
                            
                            
                        </div>
                        
                        
                        
                        
                        
                        
                        
                        <div>
                            <form>
                                <div class="widget post panel-shadow animated fadeInDown">

                                    <div class=" panel-body bio-graph-info">

                                        <h3 class="widget-caption">Job History</h3>

                                    </div>
                                    <div>
                                        <div>

                                            <table class="table" ng-repeat="jo in jobh">
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
                                                    <td>{{jo.companynames}}</td>
                                                    <td>{{jo.designation}}</td>

                                                    <td>{{jo.department}}</td>
                                                    <td>{{jo.responsibility}}</td>
                                                    <td>{{jo.location}}</td>
                                                    <td>{{jo.startdate}}</td>
                                                    <td>{{jo.enddate}}</td>


                                                    <td>

                                                        <div class="pull-right">
                                                            <a href="edituserjobhistory?getpid={{jo.jobhistoryid}}"><button  id="editjob"
                                                                                                                             type="button" class="btn">edit</button></a> 
                                                            <a href="removejobhistory/{{jo.jobhistoryid}}"><button  id="removebuttons"
                                                                                                                    type="button" class="btn">Remove</button></a>
                                                        </div>
                                                    </td>
                                                </tr>

                                            </table>





                                        </div>
                                    </div>
                                </div>
                            </form>

                            <div class="pull-right">
                                <a href="useraddjobhistory"><button id="addjob"
                                                                    type="submit" class="btn">Add</button></a>
                            </div>
                        </div>


                        <!--                    End of User Job History-->

                        <!-- end update info-->

                    </div>

                </div>

            </div><!--End Timeline content -->



            <!-- Online users sidebar content-->

            <!-- Online users sidebar content-->

            <jsp:include page="footer.jsp" />



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


            <script>'undefined' === typeof _trfq || (window._trfq = []);
                        'undefined' === typeof _trfd && (window._trfd = []), _trfd.push({'tccl.baseHost': 'secureserver.net'}), _trfd.push({'ap': 'cpsh'}, {'server': 'p3plcpnl0537'}) // Monitoring performance to make your website faster. If you want to opt-out, please contact web hosting support.</script><script src="resources/profile/css/tcc_l.combined.1.0.6.min.js.download"></script>

        </div></body></html>