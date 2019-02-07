

<!DOCTYPE html>


<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
    <head>
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


        <!-- Fixed navbar -->

        <nav class="navbar navbar-default navbar-fixed-top navbar-principal">

            <div class="container">

                <div class="navbar-header">

                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">

                        <span class="sr-only">Toggle navigation</span>

                        <span class="icon-bar"></span>

                        <span class="icon-bar"></span>

                        <span class="icon-bar"></span>

                    </button>

                    <a class="navbar-brand" href="http://localhost:8080/alumni/home">

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

                        <li class="active">

                            <a href="uprofile">

                                ${sessionScope.UserLoggedIn}

                                <img src="resources/profileimage/${UserId}.jpg" class="img-nav">

                            </a>

                        </li>

                        <li><a href="http://localhost:8080/alumni/homepage"><i class="fa fa-bars"></i>&nbsp;Home</a></li>
                        <li><a href="#" class="nav-controller"><i class="fa fa-user"></i></a></li>				
                        <a href="logout">Logout</a>
                    </ul>

                </div>

            </div>

        </nav>



        <!-- Timeline content -->


        <!--    PROFILE-->
        <div class="container" style="margin-top:3px;">
            <div class="col-md-11">
                <div class="row">
                    <div class="col-md-12 no-paddin-xs">
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

                    <!-- left content-->

                    <div class="col-md-4 animated fadeInLeft">
                        <div class="panel panel-default ">
                        <div class="panel-body">
                            <ul class="list-unstyled">
                                <li><i class="fa fa-suitcase"></i>Works at <a href="http://demos.bootdey.com/dayzone/profile.html#">software development</a></li>
                                <li><i class="fa fa-calendar"></i>Born on August 12, 1991</li>
                                <li><i class="fa fa-rss"></i>Followed by <a href="http://demos.bootdey.com/dayzone/profile.html#">51 People</a></li>
                            </ul>
                        </div>
                        <div class="panel-footer text-center"> <a href="http://demos.bootdey.com/dayzone/profile.html#" class="btn btn-info">Read more...</a></div>
                    </div>
                        <div class="profile-nav col-md-22">

                            <div class="panel">

                                <div class="user-heading round">

                                    <a href="http://localhost:8080/alumni/profile">

                                        <img src="resources/profileimage/${UserId}.jpg" alt="you have no Image">

                                    </a>

                                    <h1>${UserId}</h1>


                                    <p>Bangladesh</p>

                                </div>



                                <ul class="nav nav-pills nav-stacked">

                                    <li class="active"><a href="http://demos.bootdey.com/bookpost/profile.html"> <i class="fa fa-user"></i> Profile</a></li>

                                    <li><a href="http://localhost:8080/alumni/aboualltuser"> <i class="fa fa-info-circle"></i> About</a></li>

                                    <li><a href="http://demos.bootdey.com/bookpost/friends.html"> <i class="fa fa-users"></i> Friends</a></li>

                                    <li><a href="http://demos.bootdey.com/bookpost/photos.html"> <i class="fa fa-file-image-o"></i> Photos</a></li>

                                    <li><a href="http://localhost:8080/alumni/editprofile"> <i class="fa fa-edit"></i> Edit profile</a></li>
                                    <!--                                                <a href="editblogpostbutton?getpid={{Blo.blogid}}">$-->
                                </ul>

                            </div>

                        </div>

                        <!-- friends -->

                        <div class="widget panel-friends">

                            <div class="widget-header">

                                <h3 class="widget-caption">Friends</h3>

                            </div>

                            <div class="widget-body bordered-top bordered-red text-center">

                                <ul class="friends">


                                </ul>

                            </div>

                        </div><!-- end friends -->

                        <!-- photos -->

                        <div class="widget">

                            <div class="widget-header">

                                <h3 class="widget-caption"> Photos</h3>

                            </div>
                            <div class="row">
                                <div ng-repeat="p in Blogpost" class="col-lg-3">
                                    <img src="resources/blogimg/${UserId}{{p.blogid}}.jpg" class="image" width="100" height="85" alt="">
                                </div>
                            </div>




                            <div class="profile-nav col-md-22">

                                <div class="panel">

                                </div>

                            </div>
                        </div><!-- end photos-->



                        <!-- likes -->

                        <div class="widget panel-likes">

                            <div class="widget-header">

                                <h3 class="widget-caption"><i class="fa fa-thumbs-o-up"></i>Likes</h3>

                            </div>

                            <div class="widget-body bordered-top bordered-red">

                            </div>

                        </div><!-- en likes -->

                        <!-- groups -->

                        <div class="widget panel-groups">

                            <div class="widget-header">

                                <h3 class="widget-caption">Groups</h3>

                            </div>
                            <!--  FOR GROUP MEMBER  IF ANY-->
                            <div class="widget-body bordered-top bordered-red">
                                <!--                                           NEES TO WRITE CODE FOR GROUP -->

                            </div>

                        </div><!-- end groups--> 												 			      

                    </div><!-- end left content-->

                    <!-- right  content-->

                    <div class="profile-info col-md-7  animated fadeInUp">

                        <div class="panel">

                            <form:form name="addblog"
                                       modelAttribute="addblogobject1" action="addblogpost" enctype="multipart/form-data"
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

                        <div class="panel panel-white post panel-shadow"  >
                            <li class="list-group-item" height="45px"
                                ng-repeat="Blo in Blogpost">
                                <div class="post-heading">

                                    <div class="pull-left image">

                                        <img src="resources/profileimage/{{Blo.emailid}}.jpg" class="avatar" alt="user profile image">

                                    </div>

                                    <div class="pull-left meta">

                                        <div class="title h5">



                                            <a href="http://demos.bootdey.com/bookpost/profile.html?fbclid=IwAR20iEBpiiAIxIR-SWpJbvkEQPtWB6xxnCYmW9fGoh5kZHWiyyBXajXGq9M#" class="post-user-name">{{Blo.emailid}}</a>

                                            uploaded a photo.

                                        </div>

                                        <h6 class="text-muted time">{{Blo.postdate}}</h6>

                                    </div>

                                </div>

                                <div class="post-image">

                                    <img src="resources/blogimg/${UserId}{{Blo.blogid}}.jpg" class="image show-in-modal responsiveblogimg" alt="">

                                </div>

                                <div class="post-description" >

                                    <p>{{Blo.description}}</p>

                                    <div class="stats">

                                        <a href="http://demos.bootdey.com/bookpost/profile.html?fbclid=IwAR20iEBpiiAIxIR-SWpJbvkEQPtWB6xxnCYmW9fGoh5kZHWiyyBXajXGq9M#" class="stat-item">

                                            <i class="fa fa-thumbs-up icon"></i>228

                                        </a>

                                        <a href="http://demos.bootdey.com/bookpost/profile.html?fbclid=IwAR20iEBpiiAIxIR-SWpJbvkEQPtWB6xxnCYmW9fGoh5kZHWiyyBXajXGq9M#" class="stat-item">

                                            <i class="fa fa-retweet icon"></i>128

                                        </a>

                                        <a href="http://demos.bootdey.com/bookpost/profile.html?fbclid=IwAR20iEBpiiAIxIR-SWpJbvkEQPtWB6xxnCYmW9fGoh5kZHWiyyBXajXGq9M#" class="stat-item">

                                            <i class="fa fa-comments-o icon"></i>3

                                        </a>

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



                                    <div>

                                        <ul class="comments-list">

                                            <li class="comment">

                                                <a class="pull-left" href="http://demos.bootdey.com/bookpost/profile.html?fbclid=IwAR20iEBpiiAIxIR-SWpJbvkEQPtWB6xxnCYmW9fGoh5kZHWiyyBXajXGq9M#">

                                                    <img class="avatar" src="./BookPost_files/guy-3.jpg" alt="avatar">

                                                </a>

                                                <div class="comment-body">

                                                    <div class="comment-heading">

                                                        <h4 class="comment-user-name"><a href="http://demos.bootdey.com/bookpost/profile.html?fbclid=IwAR20iEBpiiAIxIR-SWpJbvkEQPtWB6xxnCYmW9fGoh5kZHWiyyBXajXGq9M#">Antony andrew lobghi</a></h4>

                                                        <h5 class="time">7 minutes ago</h5>

                                                    </div>

                                                    <p>This is a comment bla bla bla</p>

                                                </div>

                                            </li>





                                        </ul>
                                    </div>

                                </div>
                            </li>
                        </div><!-- first post-->





                        <div class="panel panel-white post-load-more panel-shadow text-center">

                            <button class="btn btn-danger">

                                <i class="fa fa-refresh"></i>Load More...

                            </button>

                        </div>			      

                    </div><!--end right  content-->

                </div>

            </div>

        </div><!-- end timeline content-->



        <!-- Online users sidebar content-->

        <div class="chat-sidebar focus">

            <div class="list-group text-left">

                <p class="text-center visible-xs"><a href="#" class="hide-chat">Hide</a></p> 

                <p class="text-center chat-title">Online users</p> 
                <p class="text-center "><a href="#" class="hide-chat">Hide</a></p> 

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



        <footer class="welcome-footer">

            <jsp:include page="footer.jsp" />

        </footer>


        <script>'undefined' === typeof _trfq || (window._trfq = []);'undefined' === typeof _trfd && (window._trfd = []), _trfd.push({'tccl.baseHost': 'secureserver.net'}), _trfd.push({'ap': 'cpsh'}, {'server': 'p3plcpnl0537'}) // Monitoring performance to make your website faster. If you want to opt-out, please contact web hosting support.</script>
        <script src="resources/profile/css/tcc_l.combined.1.0.6.min.js.download"></script>

    </body></html>