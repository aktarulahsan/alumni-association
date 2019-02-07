	


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

        <script src="resources/profile/css/jquery.1.11.1.min.js.download"></script>

        <script src="resources/profile/css/bootstrap.min.js.download"></script>

        <script src="resources/profile/css/custom.js.download"></script>
        <link rel="stylesheet" href="resources/css/font-awesome.css">

        <script id="_carbonads_projs" type="text/javascript" src="resources/profile/css/CKYILKJI.json"></script>



        <script src="resources/js/angular.js"></script>
        <script>
            var blo = ${allblogpostobject};
            var chat = ${userprofileobject};
            var comment = ${blogpostcomment};
            var comments = ${allcommentlist};
            console.log(blo);
            var app = angular.module('myapp', []);
            app.controller('BlogpostController',
                    function ($scope) {
                    $scope.Blogpost = blo;
                    $scope.Blogpostcomment = comment;
                    $scope.allcom = comments;
                    $scope.clo = chat;
                    console.log($scope.Blogpostcomment);
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

    <body class="animated fadeIn" ng-app="myapp" ng-controller="BlogpostController">



        <!-- Fixed navbar -->

        <nav class="navbar navbar-default navbar-fixed-top navbar-principal">

            <div class="container">

                <div class="navbar-header">



                    <a class="navbar-brand" href="http://localhost:8080/alumni/homepage">

                        <b>Alumni</b>

                    </a>

                </div>

                <div id="navbar" class="collapse navbar-collapse">

                    <div class="col-md-5 col-sm-4">         
                        <!--                                        for search-->
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

                        <li class="active"><a href="http://localhost:8080/alumni/home.html"><i class="fa fa-bars"></i>&nbsp;Home</a></li>

                        <li><a href="http://localhost:8080/alumni/messages.html"><i class="fa fa-comments"></i></a></li>

                        <li class="dropdown">

                            <a href="http://localhost:8080/alumni/home.html#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">  Pages 

                                <span class="caret"></span>

                            </a>



                        </li>

                        <li><a href="http://localhost:8080/alumni/uprofile#" class="nav-controller"><i class="fa fa-user"></i></a></li>        

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

                                    <img src="resources/profileimage/${UserId}.jpg" alt="you have no Image">

                                </a>

                                <h1>${UserId}</h1>


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

                                                            <img class="notifications" src="./BookPost2_files/guy-2.jpg" alt="img" lass="img-circle img-no-padding img-responsive">

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

                                                            <img src="./BookPost2_files/woman-2.jpg" alt="img" class="img-circle img-no-padding img-responsive">

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

                                                            <img src="./BookPost2_files/woman-3.jpg" alt="Circle Image" class="img-circle img-no-padding img-responsive">

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

                                                            <img src="./BookPost2_files/woman-4.jpg" alt="Circle Image" class="img-circle img-no-padding img-responsive">

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

                                                            <img src="./BookPost2_files/woman-4.jpg" alt="Circle Image" class="img-circle img-no-padding img-responsive">

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
                                       modelAttribute="addblogobject1" action="addblogpostus" enctype="multipart/form-data"
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
                                ng-repeat="Blo in allcom">
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

                                    <img src="resources/blogimg/${UserId}{{Blo.blogid}}.jpg" class="image show-in-modal responsiveblogimg" alt="">

                                </div>

                                <div class="post-description" >

                                    <p>{{Blo.description}}</p>

                                    <div class="stats">

                                        <a href="http://localhost:8080/alumni/profile.html?fbclid=IwAR20iEBpiiAIxIR-SWpJbvkEQPtWB6xxnCYmW9fGoh5kZHWiyyBXajXGq9M#" class="stat-item">

                                            <i class="fa fa-thumbs-up icon"></i>228

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
                                               modelAttribute="bcomment" action="addcommentsal"
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

                                                    <img class="avatar" src="./BookPost_files/guy-3.jpg" alt="avatar">

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
                            </div>
                                    

                            <div class="panel panel-whi                                    te post-load-more panel-shadow text-center">

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

                    <p class="text-center visible-xs"><a href="http://localhost:8080/alumni/uprofile#" class="hide-chat">Hide</a></p> 

                    <p c        lass="text-center chat-title">Online users</p> 

                    <table >
                        <tr ng-repeat="chat in clo">

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

            </div><!-- Online users side        bar content-->



            <footer class="welcome-footer">

                <jsp:include page="footer.jsp" />

            </footer>





            <script>'undefined' === typeof _trfq || (window._trfq = []); 'undefined' === typeof _trfd && (window._trfd = []), _trfd.push({'tccl.baseHost': 'secureserver.net'}), _trfd.push({'ap': 'cpsh'}, {'server': 'p3plcpnl0537'}) // Monitoring performance to make your website faster. If you want to opt-out, please contact web hosting support.</script>
            <script src="resources/profile/css/tcc_l.combined.1.0.6.min.js.download"></script>

    </body>
</html>