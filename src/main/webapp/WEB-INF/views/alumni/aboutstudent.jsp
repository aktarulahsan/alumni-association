<%-- 
    Document   : test
    Created on : Dec 19, 2018, 10:42:42 AM
    Author     : Aktar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    
    <link href="resources/profile/css/bootstrap.min.css" rel="stylesheet">
<link rel="icon" href="resources/logo/alumni-logo.jpg">
        <link href="resources/profile/css/animate.min.css" rel="stylesheet">

        <link href="resources/profile/css/font-awesome.min.css" rel="stylesheet">

        <link href="resources/profile/css/timeline.css" rel="stylesheet">
        <link href="resources/profileone/timeline.css" rel="stylesheet">

        <script src="resources/profile/css/jquery.1.11.1.min.js.download"></script>

        <script src="resources/profile/css/bootstrap.min.js.download"></script>

        <script src="resources/profile/css/custom.js.download"></script>
        <link rel="stylesheet" href="resources/css/font-awesome.css">

        <script id="_carbonads_projs" type="text/javascript" src="resources/profile/css/CKYILKJI.json"></script>
    
    
    
    
</head>
    <body>
       <nav class="navbar navbar-default navbar-fixed-top navbar-principal">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
                    <a class="navbar-brand" href="http://demos.bootdey.com/dayzone/index.html"> <img src="resources/logo/alumni-logo.jpg" class="img-logo"> <b>Alumni</b> </a>
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
                                <li><a href="showallevental"> Add Event</a></li>
                                <li><a href="javascript:;">Help</a></li>
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
                      <a href="http://demos.bootdey.com/dayzone/about.html#" class="list-group-item active text-center">
                        <h4 class="fa fa-child"></h4><br>Overview
                      </a>
                      <a href="http://demos.bootdey.com/dayzone/about.html#" class="list-group-item text-center">
                        <h4 class="fa fa-briefcase"></h4><br>Work
                      </a>
                      <a href="http://demos.bootdey.com/dayzone/about.html#" class="list-group-item text-center">
                        <h4 class="fa fa-map-marker"></h4><br>Places
                      </a>
                      <a href="http://demos.bootdey.com/dayzone/about.html#" class="list-group-item text-center">
                        <h4 class="fa fa-newspaper-o"></h4><br>Contact info
                      </a>
                      <a href="http://demos.bootdey.com/dayzone/about.html#" class="list-group-item text-center">
                        <h4 class="fa fa-calendar"></h4><br>Events
                      </a>
                    </div>
                  </div>
                  <div class="col-lg-9 col-md-9 col-sm-9 col-xs-9 about-tab">
                    <!-- Overview section -->
                    <div class="about-tab-content active">
                       <ul class="list-group">
                        <li class="list-group-item"><i class="fa fa-briefcase text-primary"></i>&nbsp; Work at software developer</li>
                        <li class="list-group-item"><i class="fa fa-mobile text-primary"></i>&nbsp; +57 328 999 444 2</li>
                        <li class="list-group-item"><i class="fa fa-cubes text-primary"></i>&nbsp;@username (twitter)</li>
                        <li class="list-group-item"><i class="fa fa-birthday-cake text-primary"></i>&nbsp; August 12, 1990</li>
                        <li class="list-group-item"><i class="fa fa-envelope text-primary"></i>&nbsp; username@email.com</li>
                        <li class="list-group-item"><i class="fa fa-tags text-primary"></i>&nbsp; 
                          <label class="label label-info">Html 5</label> 
                          <label class="label label-primary">Css 3</label> 
                          <label class="label label-warning">Boostrap</label> 
                          <label class="label label-success">Jquery</label> 
                        </li>
                      </ul>
                    </div>
                    <!-- Work section -->
                    <div class="about-tab-content">
                       <ul class="list-group">
                        <li class="list-group-item"><i class="fa fa-briefcase"></i>&nbsp; Software developer at <a href="http://demos.bootdey.com/dayzone/about.html#">Deystrap</a></li>
                        <li class="list-group-item"><i class="fa fa-cubes"></i>&nbsp;Web designer at <a href="http://demos.bootdey.com/dayzone/about.html#">Dey-Dey</a></li>
                      </ul>
                    </div>

                    <!-- Places search -->
                    <div class="about-tab-content">
                      <ul class="photos">
                        <li>
                            <a href="http://demos.bootdey.com/dayzone/about.html#">
                              <img src="./Day-Zoneprofile_files/staticmap.png" alt="map 1" class="img-responsive show-in-modal tip">
                            </a>
                        </li>
                      </ul>
                    </div>
                    <!-- Contact section -->
                    <div class="about-tab-content">
                      <ul class="list-group">
                        <li class="list-group-item"><i class="fa fa-phone"></i>&nbsp; 533 44 55</li>
                        <li class="list-group-item"><i class="fa fa-mobile"></i>&nbsp; +57 328 999 444 2</li>
                        <li class="list-group-item"><i class="fa fa-cubes"></i>&nbsp;@username (twitter) <i class="fa fa-twitter text-twitter"></i></li>
                        <li class="list-group-item"><i class="fa fa-envelope"></i>&nbsp; username@email.com</li>
                      </ul>
                    </div>
                    <!-- Events section-->
                    <div class="about-tab-content">
                      <ul class="list-group">
                        <li class="list-group-item"><i class="fa fa-calendar text-danger"></i>&nbsp; <a href="http://demos.bootdey.com/dayzone/about.html#">August 12 welcome to my like</a></li>
                        <li class="list-group-item"><i class="fa fa-calendar text-danger"></i>&nbsp; <a href="http://demos.bootdey.com/dayzone/about.html#">August 5 Nach concert at barcelona</a></li>
                        <li class="list-group-item"><i class="fa fa-calendar text-danger"></i>&nbsp; <a href="http://demos.bootdey.com/dayzone/about.html#">July 13 El grones concert on medellin</a></li>
                        <li class="list-group-item"><i class="fa fa-calendar text-danger"></i>&nbsp; <a href="http://demos.bootdey.com/dayzone/about.html#">June 30 final of ty</a> </li>
                      </ul>
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
    <div class="chat-sidebar focus">
      <div class="list-group text-left">
        <p class="text-center visible-xs"><a href="http://demos.bootdey.com/dayzone/about.html#" class="hide-chat btn btn-success btn-sm">Hide</a></p> 
        <p class="text-center chat-title">Online users</p>  
        <a href="http://demos.bootdey.com/dayzone/messages.html" class="list-group-item">
          <i class="fa fa-check-circle connected-status"></i>
          <img src="./Day-Zoneprofile_files/guy-2.jpg" class="img-chat img-thumbnail">
          <span class="chat-user-name">Jeferh Smith</span>
        </a>
        <a href="http://demos.bootdey.com/dayzone/messages.html" class="list-group-item">
          <i class="fa fa-times-circle absent-status"></i>
          <img src="./Day-Zoneprofile_files/woman-1.jpg" class="img-chat img-thumbnail">
          <span class="chat-user-name">Dapibus acatar</span>
        </a>
        <a href="http://demos.bootdey.com/dayzone/messages.html" class="list-group-item">
          <i class="fa fa-check-circle connected-status"></i>
          <img src="./Day-Zoneprofile_files/guy-3.jpg" class="img-chat img-thumbnail">
          <span class="chat-user-name">Antony andrew lobghi</span>
        </a>
        <a href="http://demos.bootdey.com/dayzone/messages.html" class="list-group-item">
          <i class="fa fa-check-circle connected-status"></i>
          <img src="./Day-Zoneprofile_files/woman-2.jpg" class="img-chat img-thumbnail">
          <span class="chat-user-name">Maria fernanda coronel</span>
        </a>
        <a href="http://demos.bootdey.com/dayzone/messages.html" class="list-group-item">
          <i class="fa fa-check-circle connected-status"></i>
          <img src="./Day-Zoneprofile_files/guy-4.jpg" class="img-chat img-thumbnail">
          <span class="chat-user-name">Markton contz</span>
        </a>
        <a href="http://demos.bootdey.com/dayzone/messages.html" class="list-group-item">
          <i class="fa fa-times-circle absent-status"></i>
          <img src="./Day-Zoneprofile_files/woman-3.jpg" class="img-chat img-thumbnail">
          <span class="chat-user-name">Martha creaw</span>
        </a>
        <a href="http://demos.bootdey.com/dayzone/messages.html" class="list-group-item">
          <i class="fa fa-times-circle absent-status"></i>
          <img src="./Day-Zoneprofile_files/woman-8.jpg" class="img-chat img-thumbnail">
          <span class="chat-user-name">Yira Cartmen</span>
        </a>
        <a href="http://demos.bootdey.com/dayzone/messages.html" class="list-group-item">
          <i class="fa fa-check-circle connected-status"></i>
          <img src="./Day-Zoneprofile_files/woman-4.jpg" class="img-chat img-thumbnail">
          <span class="chat-user-name">Jhoanath matew</span>
        </a>
        <a href="http://demos.bootdey.com/dayzone/messages.html" class="list-group-item">
          <i class="fa fa-check-circle connected-status"></i>
          <img src="./Day-Zoneprofile_files/woman-5.jpg" class="img-chat img-thumbnail">
          <span class="chat-user-name">Ryanah Haywofd</span>
        </a>
        <a href="http://demos.bootdey.com/dayzone/messages.html" class="list-group-item">
          <i class="fa fa-check-circle connected-status"></i>
          <img src="./Day-Zoneprofile_files/woman-9.jpg" class="img-chat img-thumbnail">
          <span class="chat-user-name">Linda palma</span>
        </a>
        <a href="http://demos.bootdey.com/dayzone/messages.html" class="list-group-item">
          <i class="fa fa-check-circle connected-status"></i>
          <img src="./Day-Zoneprofile_files/woman-10.jpg" class="img-chat img-thumbnail">
          <span class="chat-user-name">Andrea ramos</span>
        </a>
        <a href="http://demos.bootdey.com/dayzone/messages.html" class="list-group-item">
          <i class="fa fa-check-circle connected-status"></i>
          <img src="./Day-Zoneprofile_files/child-1.jpg" class="img-chat img-thumbnail">
          <span class="chat-user-name">Dora ty bluekl</span>
        </a>        
      </div>
    </div>
        
    </body>
</html>
