<%-- 
    Document   : test
    Created on : Dec 19, 2018, 10:42:42 AM
    Author     : Aktar
--%>


<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

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


        <link rel="icon" href="http://demos.bootdey.com/dayzone/img/favicon.ico">
        <title>Day-Zone</title>
        <link href="./bootstrap.min.css" rel="stylesheet">
        <link href="./animate.min.css" rel="stylesheet">
        <link href="./font-awesome.min.css" rel="stylesheet">

        <script async="" src="./analytics.js.download"></script><script async="" src="./analytics.js.download"></script><script src="./jquery.1.11.1.min.js.download"></script>
        <script src="./bootstrap.min.js.download"></script>
        <script src="./custom.js.download"></script>
        <!--[if lt IE 9]> <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script> <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->

        <script src="resources/js/angular.js"></script>
        <script>
            var blo = ${blogpostobject};
            var chat = ${userprofileobject};
            console.log(blo);
            angular.module('myapp', []).controller('BlogpostController',
                    function ($scope) {
                        $scope.Blogpost = blo;
                        $scope.profile = chat;

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
        <div class="col-lg-12">
            <nav class="navbar navbar-default navbar-fixed-top navbar-principal">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
                        <a class="navbar-brand" href="http://demos.bootdey.com/dayzone/index.html"> <img src="./logo-white.png" class="img-logo"> <b>Day-Zone</b> </a>
                    </div>
                    <div id="navbar" class="collapse navbar-collapse">
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
                            <li class="active"><a href="http://demos.bootdey.com/dayzone/profile.html">Marthin McKlowin<img src="./profile.jpg" class="img-nav"></a></li>
                            <li><a href="http://demos.bootdey.com/dayzone/home.html"><i class="fa fa-bars"></i>&nbsp;Home</a></li>
                            <li><a href="http://demos.bootdey.com/dayzone/messages.html"><i class="fa fa-comments"></i></a></li>
                            <li><a href="http://demos.bootdey.com/dayzone/notifications.html"><i class="fa fa-globe"></i></a></li>
                            <li><a href="http://demos.bootdey.com/dayzone/profile.html#" class="nav-controller"><i class="fa fa-user"></i>Users</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
            <div class="container center-block">
                <div class="row">
                    <div class="col-md-10 no-paddin-xs">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="cover-photo" style="background-image:url(resources/profileimage/sk.jpg)">
                                <h2 class="cover-name right">Aktarul Ahsan</h2>
                                <img src="resources/profileimage/ak@gmail.com.jpg" class="profile-photo img-thumbnail show-in-modal">
                                <div class="row">
                                    <div class="col-sm-10"></div>
                                    <div class="col-sm-2 right">

<!--                                        <form:form name="addblog"
                                                   modelAttribute="addblogobject1" action="addblogpostus" enctype="multipart/form-data"
                                                   method="post">
                                            <a href="#"><i class="fa">
                                                    <form:input type="file" name="fileToUpload" id="fileToUpload"
                                                                class="fa fa-camera"  path="" ></form:input>

                                                </i></a>
                                        </form:form>-->
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
                        <div class="col-md-5 user-detail no-paddin-xs">
                            <div class="panel panel-default panel-user-detail">
                                <div class="panel-body">
                                    <ul class="list-unstyled">
                                        <li><i class="fa fa-suitcase"></i>Works at <a href="http://demos.bootdey.com/dayzone/profile.html#">software development</a></li>
                                        <li><i class="fa fa-calendar"></i>Born on August 12, 1991</li>
                                        <li><i class="fa fa-rss"></i>Followed by <a href="http://demos.bootdey.com/dayzone/profile.html#">51 People</a></li>
                                    </ul>
                                </div>
                                <div class="panel-footer text-center"> <a href="http://demos.bootdey.com/dayzone/profile.html#" class="btn btn-info">Read more...</a></div>
                            </div>
                            <div class="panel panel-default panel-friends">
                                <div class="panel-heading"> <a href="http://demos.bootdey.com/dayzone/profile.html#" class="pull-right">View all&nbsp;<i class="fa fa-share-square-o"></i></a>
                                    <h3 class="panel-title">Friends</h3></div>
                                <div class="panel-body text-center">
                                    <ul class="friends">
                                        <li>
                                            <a href="http://demos.bootdey.com/dayzone/profile.html#"> <img src="resources/profileimage/sk.jpg" title="Jhoanath matew" class="img-responsive tip"> </a>
                                        </li>

                                    </ul>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading"> <a href="http://demos.bootdey.com/dayzone/profile.html#" class="pull-right">View all&nbsp;<i class="fa fa-share-square-o"></i></a>
                                    <h3 class="panel-title">Photos</h3></div>
                                <div class="panel-body text-center">
                                    <ul class="photos">
                                        <li>
                                            <a href="http://demos.bootdey.com/dayzone/profile.html#"> <img src="./5.jpg" alt="photo 1" class="img-responsive show-in-modal"> </a>
                                        </li>

                                    </ul>
                                </div>
                            </div>

                            <div class="panel panel-default panel-groups">
                                <div class="panel-heading">
                                    <h3 class="panel-title">Groups</h3></div>
                                <div class="panel-body">
                                    <ul class="list-group">
                                        <li class="list-group-item">
                                            <div class="col-xs-3 col-sm-6 col-md-3"> <img src="./likes-5.png" alt="Group" class="img-responsive img-circle"> </div>
                                            <div class="col-xs-9 col-sm-6"> <span class="name">Bootdey competitors</span> </div>
                                            <div class="clearfix"></div>
                                        </li>
                                        <li class="list-group-item">
                                            <div class="col-xs-3 col-sm-6 col-md-3"> <img src="./likes-1.png" alt="Group" class="img-responsive img-circle"> </div>
                                            <div class="col-xs-9 col-sm-6"> <span class="name">Git in action</span> </div>
                                            <div class="clearfix"></div>
                                        </li>
                                        <li class="list-group-item">
                                            <div class="col-xs-3 col-sm-6 col-md-3"> <img src="./likes-6.png" alt="Group" class="img-responsive img-circle"> </div>
                                            <div class="col-xs-9 col-sm-6"> <span class="name">Bootdey Snippets</span> </div>
                                            <div class="clearfix"></div>
                                        </li>
                                        <li class="list-group-item">
                                            <div class="col-xs-3 col-sm-6 col-md-3"> <img src="./likes-2.png" alt="Group" class="img-responsive img-circle"> </div>
                                            <div class="col-xs-9 col-sm-6"> <span class="name">Html 5 live</span> </div>
                                            <div class="clearfix"></div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-7 no-paddin-xs">
                            <div class="panel">
                                
                                
                                
                                

                            </div>
                            <div class="panel panel-white post panel-shadow">
                                <div class="post-heading">
                                    <div class="pull-left image"> <img src="./profile.jpg" class="avatar" alt="user profile image"> </div>
                                    <div class="pull-left meta">
                                        <div class="title h5"> <a href="http://demos.bootdey.com/dayzone/profile.html#" class="post-user-name">Nickson Bejarano</a> uploaded a photo. </div>
                                        <h6 class="text-muted time">5 seconds ago</h6> </div>
                                </div>
                                <div class="post-image"> <img src="./game.jpg" class="image show-in-modal" alt="image post"> </div>
                                <div class="post-description">
                                    <p>This is a short description</p>
                                    <div class="stats">
                                        <a href="http://demos.bootdey.com/dayzone/profile.html#" class="stat-item"> <i class="fa fa-thumbs-up icon"></i> 228 </a>
                                        <a href="http://demos.bootdey.com/dayzone/profile.html#" class="stat-item"> <i class="fa fa-retweet icon"></i> 128 </a>
                                        <a href="http://demos.bootdey.com/dayzone/profile.html#" class="stat-item"> <i class="fa fa-comments-o icon"></i> 3 </a>
                                    </div>
                                </div>
                                <div class="post-footer">

                                    <form:form name="addcomment"
                                               modelAttribute="bcomment" action="addcomments"
                                               method="post">
                                        <form:hidden path="blogid" value="{{Blo.blogid}}" />
                                        <form:hidden path="emailid" value="${UserId}" />

                                        <form:input type="text" class="form-control add-comment-input"
                                                    placeholder="Add a comment..." path="comments"></form:input>
                                    </form:form>


                                    <input class="form-control add-comment-input" placeholder="Add a comment..." type="text">
                                    <ul class="comments-list">
                                        <li class="comment">
                                            <a class="pull-left" href="http://demos.bootdey.com/dayzone/profile.html#"> <img class="avatar" src="./guy-3.jpg" alt="avatar"> </a>
                                            <div class="comment-body">
                                                <div class="comment-heading">
                                                    <h4 class="comment-user-name"><a href="http://demos.bootdey.com/dayzone/profile.html#">Antony andrew lobghi</a></h4>
                                                    <h5 class="time">7 minutes ago</h5> </div>
                                                <p>This is a comment bla bla bla</p>
                                            </div>
                                        </li>


                                    </ul>
                                </div>
                            </div>


                            <div class="panel panel-white post-load-more panel-shadow text-center">
                                <button class="btn btn-default"><i class="fa fa-refresh"></i>Load More...</button>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

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
        </div>
    </body>
</html>
