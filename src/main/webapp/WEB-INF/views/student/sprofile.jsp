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
        
       <script src="resources/js/angular.js"></script>
        <script>
            var blo = ${blogpostobject};
            var blogandcoment = ${allblogandcommentlist};
            var chatlist = ${userprofileobject};
            var blogpicture =${bpicture};
            var friends =${bfriend};
            console.log(blo);
            angular.module('myapp', []).controller('BlogpostController',
                    function ($scope) {
                        $scope.Blogpost = blo;
                        $scope.boancom = blogandcoment;
                        $scope.clo = chatlist;
                        $scope.pictuer = blogpicture;
                        $scope.frindlist = friends;
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
        <jsp:include page="header.jsp" />
        
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


            <div class="container" style="margin-top:0px;">
                <div class="row">
                    <div class="col-md-11 no-paddin-xs">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="cover-photo" style="background-image:url(resources/profileimage/sk.jpg)">
                                <h2 class="cover-name right">Aktarul Ahsan</h2>
                                <img src="resources/profileimage/${UserId}.jpg" alt="pic" class="profile-photo img-thumbnail show-in-modal">
                                <div class="row">
                                    <div class="col-sm-10"></div>
                                    <div class="col-sm-2 right">

<!--                                        <form:form name="addblog"
                                                   modelAttribute="addblogobject1" action="addpostinatimelinewpic" enctype="multipart/form-data"
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
                                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#profile-opts-navbar">  <span class="icon-bar"></span> </button>
                                        </div>
                                        <div class="collapse navbar-collapse" id="profile-opts-navbar">
                                            <ul class="nav navbar-nav navbar-right">
                                                <li class="active"><a href="timelines"><i class="fa fa-tasks"></i>Timeline</a></li>
                                                <li><a href="http://localhost:8080/alumni/aboutstudentprofile"><i class="fa fa-info-circle"></i>About Alumni</a></li>
                                                <li><a href="batchf"><i class="fa fa-users"></i>Friends</a></li>
                                                <li><a href="showalumnipic"><i class="fa fa-file-image-o"></i>Photos</a></li>
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
                        <div class="col-md-5 user-detail no-paddin-xs">
                            <div class="panel panel-default panel-user-detail">
                                <div class="panel-body">
                                    <ul class="list-unstyled">
                                        <li><i class="fa fa-suitcase"></i><a href="http://demos.bootdey.com/dayzone/profile.html#">software development</a></li>
                                        <li><i class="fa fa-calendar"></i>Born on ${uparsonalprofile.dateofbirth}</li>
                                        <li><i class="fa fa-rss"></i>Followed by <a href="http://demos.bootdey.com/dayzone/profile.html#">51 People</a></li>
                                    </ul>
                                </div>
                                <div class="panel-footer text-center"> <a href="http://demos.bootdey.com/dayzone/profile.html#" class="btn btn-info">Read more...</a></div>
                            </div>
                            <div class="panel panel-default panel-friends">
                                <div class="panel-heading"> <a href="http://demos.bootdey.com/dayzone/profile.html#" class="pull-right">View all&nbsp;<i class="fa fa-share-square-o"></i></a>
                                    <h3 class="panel-title">Friends</h3></div>
                                <div class="panel-body text-center">
                                    <div class="col-md-4" ng-repeat="bf in frindlist | limitTo:8">
                                        <a href="http://demos.bootdey.com/dayzone/profile.html#"> <img src="resources/profileimage/{{bf.emailid}}.jpg" class="img-responsive show-in-modal"> </a>    
                                    </div>
                                    
                                </div>
                            </div>
                            <div class="panel-friends panel panel-default">
                                <div class="panel-heading"> <a href="http://demos.bootdey.com/dayzone/profile.html#" class="pull-right">View all&nbsp;<i class="fa fa-share-square-o"></i></a>
                                    <h3 class="panel-title">Photos</h3></div>
                                    <div class="panel panel-body text-center col-lg-12 " >
                                        <div class="col-md-4"  ng-repeat="pic in pictuer | limitTo:8">
                                        <a href="http://demos.bootdey.com/dayzone/profile.html#"> <img src="resources/blogimg/{{pic.picname}}.jpg" class="img-responsive show-in-modal"> </a>    
                                        </div>
                                    
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

                            <form:form name="addblog"
                                       modelAttribute="addblogobject1" action="addpostinstimelinewpic" enctype="multipart/form-data"
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
                            
                            <div class="panel panel-white post panel-shadow"  >
                            <li class="list-group-item" height="45px"  ng-repeat=" com in boancom">
                                <div class="post-heading">

                                    <div class="pull-left image">

                                        <img src="resources/profileimage/{{com.emailid}}.jpg" class="avatar" alt="user profile image">

                                    </div>

                                    <div class="pull-left meta">

                                        <div class="title h5">
                                            <a href="http://demos.bootdey.com/bookpost/profile.html?fbclid=IwAR20iEBpiiAIxIR-SWpJbvkEQPtWB6xxnCYmW9fGoh5kZHWiyyBXajXGq9M#" class="post-user-name">{{com.emailid}}</a>

                                        </div>

                                        <h6 class="text-muted time">{{com.postdate}}</h6>
                                        
                                    </div>
                                    <div class="pull-right"><button type="button" class="glyphicon glyphicon-pencil " data-toggle="modal" data-target="#myModal"></button></div>

                                </div>

                                <div class="post-image">

                                    <img src="resources/blogimg/{{com.picname}}.jpg" class="image show-in-modal responsiveblogimg" alt="">

                                </div>

                                <div class="post-description" >

                                    {{com.description}}

                                    <div class="stats">

                                        <a href="http://demos.bootdey.com/bookpost/profile.html?fbclid=IwAR20iEBpiiAIxIR-SWpJbvkEQPtWB6xxnCYmW9fGoh5kZHWiyyBXajXGq9M#" class="stat-item">

                                            <i class="fa fa-thumbs-up icon"></i>228

                                        </a>

                                        <a href="http://demos.bootdey.com/bookpost/profile.html?fbclid=IwAR20iEBpiiAIxIR-SWpJbvkEQPtWB6xxnCYmW9fGoh5kZHWiyyBXajXGq9M#" class="stat-item">

                                            <i class="fa fa-retweet icon"></i>128

                                        </a>

                                        <a href="http://demos.bootdey.com/bookpost/profile.html?fbclid=IwAR20iEBpiiAIxIR-SWpJbvkEQPtWB6xxnCYmW9fGoh5kZHWiyyBXajXGq9M#" class="stat-item">

                                            <i class="fa fa-comments-o icon"></i>{{com.comments.length}}

                                        </a>

                                    </div>

                                </div>
                                
<!--                                EDIT POST--><!--                                EDIT POST--><!--                                EDIT POST-->
                                
                                <div class="modal fade" id="myModal" role="dialog">
                                        <div class="modal-dialog">

                                            <!-- Modal content-->
                                            <div class="panel">

                                                <form:form name="addblog"
                                                           modelAttribute="addblogobject1" action="updatepostusers" enctype="multipart/form-data"
                                                           method="post">

                                                    <form:hidden id="email" path="blogid" value="{{com.blogid}}" />
                                                    <form:hidden id="email" path="emailid" value="{{com.emailid}}" />
                                                    <form:hidden id="email" path="picname" value="{{com.picname}}" />

                                                    <form:textarea id="name" type="text" class="form-control" value="{{com.description}}" readonly="false" path="description" rows="5" cols="30"/>
                                                    

                                                    <div class="panel-footer">

                                                        
                                                        <form:button id="editbuttons" type="submit" name="EditBlog"
                                                 class="btn btn-danger pull-right">update</form:button>

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

                                        </div>
                                    </div>
                                
                                
                                
                                
                                <div class="post-footer">

                                    <form:form name="addcomment"
                                               modelAttribute="bcomment" action="addcommentsalumnitimeline"
                                               method="post">
                                        <form:hidden path="blogid" value="{{com.blogid}}" />
                                        <form:hidden path="emailid" value="${UserId}" />

                                        <form:input type="text" class="form-control add-comment-input"
                                                    placeholder="Add a comment..." path="comments"></form:input>
                                    </form:form>



                                    <div>

                                        <ul class="comments-list" ng-repeat="ucom in com.comments">

                                            <li class="comment">

                                                <a class="pull-left" href="http://demos.bootdey.com/bookpost/profile.html?fbclid=IwAR20iEBpiiAIxIR-SWpJbvkEQPtWB6xxnCYmW9fGoh5kZHWiyyBXajXGq9M#">

                                                    <img class="avatar" src="resources/profileimage/{{ucom.emailid}}.jpg" alt="avatar">

                                                </a>

                                                <div class="comment-body">

                                                    <div class="comment-heading">

                                                        <h4 class="comment-user-name"><a href="http://demos.bootdey.com/bookpost/profile.html?fbclid=IwAR20iEBpiiAIxIR-SWpJbvkEQPtWB6xxnCYmW9fGoh5kZHWiyyBXajXGq9M#">{{co.emailid}}</a></h4>

                                                        <h5 class="time">{{ucom.commentdate}}</h5>

                                                    </div>

                                                    <p>{{ucom.comments}}</p>


                                                </div>

                                            </li>

                                        </ul>
                                    </div>

                                </div> 
                                
                            </li>
                        </div>
                        

                            <div class="panel panel-white post-load-more panel-shadow text-center">
                                <button class="btn btn-default"><i class="fa fa-refresh"></i>Load More...</button>
                            </div>
                        </div>

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
                                    
                                    

    </body>
</html>
