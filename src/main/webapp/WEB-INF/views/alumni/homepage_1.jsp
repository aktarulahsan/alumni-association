	


<!DOCTYPE html>


<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
    <head>
        


        <script src="resources/js/angular.js"></script>
        <script>
            var blo = ${allblogpostobject};
            var chat = ${userprofileobject};
            var comment = ${blogpostcomment};
            var blogandcomments = ${allcommentlist}
            console.log(blo);
            var app = angular.module('myapp', []);
            app.controller('BlogpostController',
                    function ($scope) {
                    $scope.Blogpost = blo;
                    $scope.Blogpostcomment = comment;
                    $scope.clo = chat;
                    $scope.blocom = blogandcomments;
                    console.log($scope.Blogpostcomment);
                    });
        </script>

<style>
            .responsiveblogimg {
                width: 100%;
                max-height: 300px;
                height: auto;
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

            <div class="col-md-10 no-paddin-xs">

                <div class="row">

                    <!-- left content-->

                    <div class="profile-nav col-md-4">

                        <div class="panel">

                            <div class="user-heading round">

                                <a href="http://localhost:8080/alumni/profile">

                                    <img src="resources/profileimage/${UserId}.jpg" alt="pic">

                                </a>

                                <h1>${uparsonalprofile.firstname} ${uparsonalprofile.lastname}</h1>


                                <p>Bangladesh</p>

                            </div>

                        </div>

                        <!-- Friends activity -->

                        <div class="widget">

                            <div class="widget-header">

                                <h3 class="widget-caption">Friends activity</h3>

                            </div>

                            <div class="widget-body bordered-top bordered-red">

                                <div class="card">

                                    <div class="content">

                                        <ul class="list-unstyled team-members">

                                            <li>

                                                <div class="row">

                                                    <div class="col-xs-3">

                                                        <div class="avatar">

                                                            <img class="notifications" src="resources/profileimage/${UserId}.jpg" alt="img" lass="img-circle img-no-padding img-responsive">

                                                        </div>

                                                    </div>

                                                    <div class="col-xs-9">

                                                        <b><a href="http://localhost:8080/alumni/home.html#">Carlos marthur</a></b> reviewed a 

                                                        <b><a href="http://localhost:8080/alumni/home.html#">publication</a></b>. 

                                                        <span class="timeago">5 days ago</span>

                                                    </div>

                                                </div>

                                            </li>

                                            <li>

                                                <div class="row">

                                                    <div class="col-xs-3">

                                                        <div class="avatar">

                                                            <img src="resources/profileimage/${UserId}.jpg" alt="img" class="img-circle img-no-padding img-responsive">

                                                        </div>

                                                    </div>

                                                    <div class="col-xs-9">

                                                        <b><a href="http://localhost:8080/alumni/home.html#">Hillary Markston</a></b> shared a 

                                                        <b><a href="http://localhost:8080/alumni/home.html#">publication</a></b>. 

                                                        <span class="timeago">5 min ago</span>

                                                    </div>

                                                </div>

                                            </li>

                                            <li>

                                                <div class="row">

                                                    <div class="col-xs-3">

                                                        <div class="avatar">

                                                            <img src="resources/profileimage/${UserId}.jpg" alt="Circle Image" class="img-circle img-no-padding img-responsive">

                                                        </div>

                                                    </div>

                                                    <div class="col-xs-9">

                                                        <b><a href="http://localhost:8080/alumni/home.html#">Leidy marshel</a></b> shared a 

                                                        <b><a href="http://localhost:8080/alumni/home.html#">publication</a></b>. 

                                                        <span class="timeago">5 min ago</span>

                                                    </div>

                                                </div>

                                            </li>

                                            <li>

                                                <div class="row">

                                                    <div class="col-xs-3">

                                                        <div class="avatar">

                                                            <img src="resources/profileimage/${UserId}.jpg" alt="Circle Image" class="img-circle img-no-padding img-responsive">

                                                        </div>

                                                    </div>

                                                    <div class="col-xs-9">

                                                        <b><a href="http://localhost:8080/alumni/home.html#">Presilla bo</a></b> shared a 

                                                        <b><a href="http://localhost:8080/alumni/home.html#">publication</a></b>. 

                                                        <span class="timeago">5 min ago</span>

                                                    </div>

                                                </div>

                                            </li>

                                            <li>

                                                <div class="row">

                                                    <div class="col-xs-3">

                                                        <div class="avatar">

                                                            <img src="resources/profileimage/${UserId}.jpg" alt="Circle Image" class="img-circle img-no-padding img-responsive">

                                                        </div>

                                                    </div>

                                                    <div class="col-xs-9">

                                                        <b><a href="http://localhost:8080/alumni/home.html#">Martha markguy</a></b> shared a 

                                                        <b><a href="http://localhost:8080/alumni/home.html#">publication</a></b>. 

                                                        <span class="timeago">5 min ago</span>

                                                    </div>

                                                </div>

                                            </li>

                                        </ul>					

                                    </div>

                                </div>

                            </div>

                        </div><!-- End Friends activity -->



                        <!-- People You May Know -->

                        <!-- People You May Know -->

                        <div class="widget">

                            <div class="widget-header">

                                <h3 class="widget-caption">People You May Know</h3>

                            </div>

                            <div class="widget-body bordered-top bordered-red">

                                <div class="card">

                                    <div class="content">

                                        <ul class="list-unstyled team-members">

                                            <li>

                                                <div class="row">

                                                    <div class="col-xs-3">

                                                        <div class="avatar">

                                                            <img src="./BookPost2_files/guy-2.jpg" alt="Circle Image" class="img-circle img-no-padding img-responsive">

                                                        </div>

                                                    </div>

                                                    <div class="col-xs-6">

                                                        Carlos marthur

                                                    </div>



                                                    <div class="col-xs-3 text-right">

                                                        <btn class="btn btn-sm btn-info btn-icon"><i class="fa fa-user-plus"></i></btn>

                                                    </div>

                                                </div>

                                            </li>

                                            <li>

                                                <div class="row">

                                                    <div class="col-xs-3">

                                                        <div class="avatar">

                                                            <img src="./BookPost2_files/woman-1.jpg" alt="Circle Image" class="img-circle img-no-padding img-responsive">

                                                        </div>

                                                    </div>

                                                    <div class="col-xs-6">

                                                        Maria gustami

                                                    </div>



                                                    <div class="col-xs-3 text-right">

                                                        <btn class="btn btn-sm btn-info btn-icon"><i class="fa fa-user-plus"></i></btn>

                                                    </div>

                                                </div>

                                            </li>

                                            <li>

                                                <div class="row">

                                                    <div class="col-xs-3">

                                                        <div class="avatar">

                                                            <img src="./BookPost2_files/woman-2.jpg" alt="Circle Image" class="img-circle img-no-padding img-responsive">

                                                        </div>

                                                    </div>

                                                    <div class="col-xs-6">

                                                        Angellina mcblown

                                                    </div>



                                                    <div class="col-xs-3 text-right">

                                                        <btn class="btn btn-sm btn-info  btn-icon"><i class="fa fa-user-plus"></i></btn>

                                                    </div>

                                                </div>

                                            </li>

                                        </ul>

                                    </div>

                                </div>					

                            </div>

                        </div><!-- End people yout may know -->											 			      

                    </div><!-- end left content-->

                    <!-- right  content-->

                    <div class="profile-info col-md-8  animated fadeInUp">

                        <div class="panel">

                            <form:form name="addblog"
                                       modelAttribute="addblogobject1" action="addbpost" enctype="multipart/form-data"
                                       method="post">






                                <form:hidden id="email" path="emailid" value="${UserId}" />

                                <form:textarea id="name" type="text" class="form-control" Placeholder="Blogpost Id" readonly="false" path="description" rows="5" cols="30" />


                                <div class="panel-footer">

                                    <button id="blogpost" name="AddBlog" class="btn btn-danger pull-right" type="submit">Post</button>


                                    <ul class="nav nav-pills">

                                        <li>

                                            <a href="#"><i class="fa fa-map-marker"></i></a>

                                        </li>

                                        <li>

                                            <a href="#"><i class="fa">
                                                    <form:input type="file" name="fileToUpload" id="fileToUpload"
                                                                class="fa fa-camera"  path="blogimage" ></form:input>

                                                    </i></a>

                                            </li>

                                            <li>

                                                <a href="#"><i class=" fa fa-film"></i></a>

                                            </li>

                                            <li>

                                                <a href="#"><i class="fa fa-microphone"></i></a>

                                            </li>

                                        </ul>

                                    </div>
                            </form:form>
                        </div>

                        <!-- first post-->

                        <div class="panel panel-white post panel-shadow">
                            <li class="list-group-item" height="45px"
                                ng-repeat="Blo in blocom">
                                
                                
                                
                                <div class="post-heading">

                                    <div class="pull-left image">

                                        <img src="resources/profileimage/{{Blo.emailid}}.jpg" class="avatar" alt="">

                                    </div>

                                    <div class="pull-left meta">

                                        <div class="title h5">

                                            <a href="http://localhost:8080/alumni/profile.html?fbclid=IwAR20iEBpiiAIxIR-SWpJbvkEQPtWB6xxnCYmW9fGoh5kZHWiyyBXajXGq9M#" class="post-user-name">{{Blo.emailid}}</a>



                                        </div>

                                        <h6 class="text-muted time">{{Blo.postdate}}</h6>

                                    </div>

                                </div>

                                <div class="post-image">
                                    

                                    <img src="resources/blogimg/{{Blo.picname}}.jpg" class="image show-in-modal responsiveblogimg" alt="">

                                </div>

                                <div class="post-description" >

                                    <p>{{Blo.description}}</p>

                                    <div class="stats">

                                        <a href="http://localhost:8080/alumni/profile.html?fbclid=IwAR20iEBpiiAIxIR-SWpJbvkEQPtWB6xxnCYmW9fGoh5kZHWiyyBXajXGq9M#" class="stat-item">

                                            <i class="fa fa-thumbs-up icon"></i>5000

                                        </a>

                                        <a href="http://localhost:8080/alumni/profile.html?fbclid=IwAR20iEBpiiAIxIR-SWpJbvkEQPtWB6xxnCYmW9fGoh5kZHWiyyBXajXGq9M#" class="stat-item">

                                            <i class="fa fa-retweet icon"></i>128

                                        </a>

                                        <a href="http://localhost:8080/alumni/profile.html?fbclid=IwAR20iEBpiiAIxIR-SWpJbvkEQPtWB6xxnCYmW9fGoh5kZHWiyyBXajXGq9M#" class="stat-item">

                                            <i class="fa fa-comments-o icon"></i>3

                                        </a>

                                    </div>

                                </div>

                                <div class="post-footer">

                                    <form:form name="addcomment"
                                               modelAttribute="bcomment" action="addcommentalhom"
                                               method="post">
                                        <form:hidden path="blogid" value="{{Blo.blogid}}" />
                                        <form:hidden path="emailid" value="${UserId}" />

                                        <form:input type="text" class="form-control add-comment-input"
                                                    placeholder="Add a comment..." path="comments"></form:input>
                                    </form:form>



                                    <div>

                                        <ul class="comments-list" ng-repeat="co in Blo.comments">

                                            <li class="comment">

                                                <a class="pull-left" href="http://demos.bootdey.com/bookpost/profile.html?fbclid=IwAR20iEBpiiAIxIR-SWpJbvkEQPtWB6xxnCYmW9fGoh5kZHWiyyBXajXGq9M#">

                                                    <img class="avatar" src="resources/profileimage/{{co.emailid}}.jpg" alt="avatar">

                                                </a>

                                                <div class="comment-body">

                                                    <div class="comment-heading">

                                                        <h4 class="comment-user-name"><a href="http://demos.bootdey.com/bookpost/profile.html?fbclid=IwAR20iEBpiiAIxIR-SWpJbvkEQPtWB6xxnCYmW9fGoh5kZHWiyyBXajXGq9M#">{{co.emailid}}</a></h4>

                                                        <h5 class="time">{{co.commentdate}}</h5>

                                                    </div>

                                                    <p>{{co.comments}}</p>


                                                </div>

                                            </li>

                                        </ul>
                                    </div>

                                </div>
                            </li>
                            </div><!--end right  content-->

                    </div>

                    
                    
                </div>

            </div>
                                    
                                    
                                    <!-- end timeline content-->


            <!-- Online users sidebar content-->

            <!-- Online users side        bar content-->

        </div>

            <footer class="container-fluid text-center">

            <div class="container">

                <p>

                </p>   

                Copyrights and copy 2018 Alumni | Created By Md Aktarul Ahsan  | All Rights Reserved <br>

                <p></p>

            </div>

        </footer>


    </body>
</html>