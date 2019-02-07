<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="resources/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="resources/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="resources/dashboardcss/css/ionicons.min.css">
  <!-- jvectormap -->
  <link rel="stylesheet" href="resources/dashboardcss/css/jquery-jvectormap.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="resources/dashboardcss/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="resources/dashboardcss/css/_all-skins.min.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
  
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
  
</head>
<body class="hold-transition skin-blue sidebar-mini" ng-app="myapp"
          ng-controller="BlogpostController">  
    <jsp:include page="header.jsp" />
<div class="wrapper">

  <header class="main-header">

    <!-- Logo -->
    <link rel="icon" href="resources/logo/alumni-logo.jpg">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>Admin</b>Alumni</span>
    </a>

    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>
      <!-- Navbar Right Menu -->
      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- Messages: style can be found in dropdown.less-->
          <li class="dropdown messages-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-envelope-o"></i>
              <span class="label label-success"></span>
            </a>
            <ul class="dropdown-menu">
                
            </ul>
          </li>
          <!-- Notifications: style can be found in dropdown.less -->
          <li class="dropdown notifications-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-bell-o"></i>
              <span class="label label-warning"></span>
            </a>
            <ul class="dropdown-menu">
                
            </ul>
          </li>
          <!-- Tasks: style can be found in dropdown.less -->
          <li class="dropdown tasks-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-flag-o"></i>
              <span class="label label-danger"> </span>
            </a>
            <ul class="dropdown-menu">
            </ul>
          </li>
          <!-- User Account: style can be found in dropdown.less -->
          <li class="dropdown user user-menu">
              <li class="">
                  <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                    <img src="resources/profileimage/${UserId}.jpg" class="img-sm"  alt=" ">${ownpf.firstname} ${ownpf.lastname}
                    <span class=" fa fa-angle-down"></span>
                  </a>
                  <ul class="dropdown-menu dropdown-usermenu pull-right">
                    <li><a href="javascript:;"> Profile</a></li>
                    <li>
                      <a href="javascript:;">
                        <span class="badge bg-red pull-right">50%</span>
                        <span>Settings</span>
                      </a>
                    </li>
                    <li><a href="javascript:;">Help</a></li>
                    <li><a href="logout"><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
                  </ul>
                </li>
          </li>
          <!-- Control Sidebar Toggle Button -->
          <li>
            <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
          </li>
        </ul>
      </div>

    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="resources/profileimage/${UserId}.jpg" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p>${profileobject1.firstname} ${profileobject1.lastname}</p>
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>
      <!-- search form -->
      <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="Search...">
          <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat">
                  <i class="fa fa-search"></i>
                </button>
              </span>
        </div>
      </form>
      <!-- /.search form -->
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">
        <a href="admindashboard"><i class="fa fa-circle-o"></i> Dashboardsss ss</a>
        </li>
        <li class="header">
        <a href="alluser"><i class="fa fa-user"></i> All User</a>
        </li>
        <li class="header">
        <a href="allpost"><i class="fa fa-user"></i> All post</a>
        </li>
        <li class="header">
        <a href="addadminpost"><i class="fa fa-user"></i> Add post</a>
        </li>
        <li class="header">
        <a href="alljobcircular"><i class="fa fa-briefcase"></i> All Job Circular</a>
        </li>
        <li class="header">
        <a href="addjobcircularadminpage"><i class="fa fa-briefcase"></i> Add Job Circular</a>
        </li>
        <li class="header">
        <a href="showalleventsss"><i class="fa fa-calendar"></i> All Event</a>
        </li>
        <li class="header">
        <a href="addeditusereventadmin"><i class="fa fa-calendar"></i> Add Event</a>
        </li>
        
        
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
     <div class="row">
                    <div class="panel panel-default panel-about col-lg-11">
                                <div class="panel-heading">
                                    <h3 class="panel-title">About
                                        <a href="http://demos.bootdey.com/dayzone/edit-profile.html" class="pull-right"></a>
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
                                                    <li> <a data-toggle="pill" href="#ski" class="list-group-item  text-center">
                                                            <h4 class="glyphicon glyphicon-star"></h4><br>Skill
                                                        </a></li>

                                                    <li> <a data-toggle="pill" href="#job" class="list-group-item  text-center">
                                                            <h4 class="fa fa-briefcase"></h4><br>Job History
                                                        </a></li>
                                                    <li> <a data-toggle="pill" href="#cv" class="list-group-item  text-center">
                                                            <h4 class="fa fa-briefcase"></h4><br>view CV
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
                                                            <p><span>Mobile number </span>: ${profileobject1.mobilenumber}</p>
                                                        </div>
                                                        <div class="bio-row">
                                                            <p><span>User Type </span>: ${profileobject1.status}</p>
                                                        </div>
                                                        <div class="bio-row">
                                                            <p><span>National ID </span>: ${profileobject1.nid}</p>
                                                        </div>

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

                                            
                                            <!--eeeeeeeeeeeeeeeeee    Apply Event List                   eeeeeeeeeeeeeeeeeeeeeeeeeee-->    

                                            


                                        </div>
                                    </div>
                                </div>
                            </div>







                </div>
 
      
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <footer class="main-footer">
    <div class="pull-right hidden-xs">
    </div>
    <strong> Copyrights and copy 2019 Alumni | Created By Md Aktarul Ahsan  | All Rights Reserved <br></strong> All rights
    reserved.
  </footer>

  <!-- Control Sidebar -->
  
  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>

</div>
<!-- ./wrapper -->

<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>
            <script>
                                                        $(document).ready(function () {
                                                            var date_input = $('input[name="joindate"]'); //our date input has the name "date"
                                                            var container = $('.bootstrap-iso form').length > 0 ? $('.bootstrap-iso form').parent() : "body";
                                                            date_input.datepicker({
                                                                format: 'yyyy/MM/dd',
                                                                container: container,
                                                                todayHighlight: true,
                                                                autoclose: true,
                                                            })
                                                        })
            </script>



















<!-- jQuery 3 -->
<script src="resources/dashboardcss/js/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="resources/js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="resources/dashboardcss/js/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="resources/dashboardcss/js/adminlte.min.js"></script>
<!-- Sparkline -->
<script src="resources/dashboardcss/js/jquery.sparkline.min.js"></script>
<!-- jvectormap  -->
<script src="resources/dashboardcss/js/jquery-jvectormap-1.2.2.min.js"></script>
<script src="resources/dashboardcss/js/jquery-jvectormap-world-mill-en.js"></script>
<!-- SlimScroll -->
<script src="resources/dashboardcss/js/jquery.slimscroll.min.js"></script>
<!-- ChartJS -->
<script src="resources/dashboardcss/js/Chart.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="resources/dashboardcss/js/dashboard2.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="resources/dashboardcss/js/demo.js"></script>
</body>
</html>
