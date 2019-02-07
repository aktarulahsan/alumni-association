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
        <script src="resources/profile/css/jquery.1.11.1.min.js.download"></script>
        <script src="resources/profile/css/bootstrap.min.js.download"></script>
        <script src="resources/profile/css/custom.js.download"></script>
        <link rel="stylesheet" href="resources/css/font-awesome.css">
        <script id="_carbonads_projs" type="text/javascript" src="resources/profile/css/CKYILKJI.json"></script>

        <script src="resources/js/angular.js"></script>
        <script>
            var edu =${educationlist};
            var chat = ${userprofileobject};

            console.log(chat);
            angular.module('myapp', []).controller('BlogpostController', function ($scope) {

                $scope.profile = chat;
                $scope.education = edu;
            });



        </script>
        <style>
            th {
                font-size: 13px;
            }
            td {
                font-size: 11px;
            }
        </style>
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



        <!-- Timeline content -->

        <div class="container" style="margin-top:50px;">

            <div class="row">

                <div class="col-lg-11 no-paddin-xs">

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

                    <!--                                for using modal-->

                    <!--                    End Modal-->




                    <div class="profile-info col-sm-9" >

                        <!-- update info -->
                        <div class="panel animated fadeInDown delay-05s" id="panel-1">

                            <!-- end panel heading -->
                            <div class="panel-body">
                                <div class="formcontainer">
                                    <c:if test="${check}">
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
                                                                        <th>Achievement</th>
                                                                        <th>Result :</th>
                                                                    </tr>
                                                                </thead>


                                                                <tr>
                                                                    <td>{{x.examtitle}}</td>
                                                                    <td>{{x.majorsubject}}</td>

                                                                    <td>{{x.institutename}}</td>
                                                                    <td>{{x.passingyear}}</td>
                                                                    <td>{{x.result}}</td>
                                                                    <td>{{x.duration}}</td>
                                                                    <td>{{x.achivment}}</td>
                                                                    <td><a href="removeeducation/{{x.eduinfoid}}"><button  id="removebuttons"
                                                                             type="button" class="btn">Remove</button></a></td>
                                                                </tr>

                                                            </table>





                                                        </div>
                                                    </div>
                                                </div>
                                            </form>

                                            <div class="pull-right">
                                                <a href="addusereducatoninfo"><button id="editbuttons"
                                                                                      type="submit" class="btn">Edit</button></a>
                                            </div>
                                        </div>
                                    </c:if>

                                    <c:if test="${!check}">
                                        <form:form name="addblog"
                                                   modelAttribute="educationinfo" action="addeducation" 
                                                   method="post">
                                            <div class="widget-body">
                                                <!--<div>${userprofile}</div>-->

                                                <div class="form-group" hidden="true">

                                                    <label class="col-md-4 control-label">Education id </label>

                                                    <div class="col-md-7">

                                                        <form:input class="form-control"
                                                                    Placeholder="profile id " type="number" path="eduinfoid"  ></form:input>

                                                        </div>

                                                    </div>

                                                    <div class="form-group" hidden="true">

                                                        <label class="col-md-4 control-label">emailid</label>

                                                        <div class="col-md-7">

                                                        <form:input class="form-control"
                                                                    Placeholder="profile id " type="text" path="emailid" value="${UserId}" required="true"></form:input>

                                                        </div>

                                                    </div>



                                                    <div class="form-group">

                                                        <label class="col-md-4 control-label">Exam Title</label>

                                                        <div class="col-md-7">

                                                        <form:input class="form-control"
                                                                    Placeholder="Exam Title" type="text" path="examtitle" required="true"></form:input>

                                                        </div>

                                                    </div>
                                                    <div class="form-group">

                                                        <label class="col-md-4 control-label">Major Subject</label>

                                                        <div class="col-md-7">

                                                        <form:input class="form-control"
                                                                    Placeholder="Major Subject" type="text" path="majorsubject" required="true"></form:input>

                                                        </div>

                                                    </div>
                                                    <div class="form-group">

                                                        <label class="col-md-4 control-label">Board</label>

                                                        <div class="col-md-7">

                                                        <form:input class="form-control"
                                                                    Placeholder="Board" type="text" path="board" required="true"></form:input>

                                                        </div>

                                                    </div>
                                                    <div class="form-group">

                                                        <label class="col-md-4 control-label">Institute Name</label>

                                                        <div class="col-md-7">
                                                        <form:input class="form-control"
                                                                    Placeholder="Institute Name" type="text" path="institutename"  required="true"></form:input>



                                                        </div>

                                                    </div>
                                                    <div class="form-group">

                                                        <label class="col-md-4 control-label">Passing Year</label>

                                                        <div class="col-md-7">

                                                        <form:input type="text" class="form-control"  path="passingyear" placeholder="2001" required="true" id="date" ></form:input>

                                                        </div>

                                                    </div>

                                                    
                                                        <div class="form-group">

                                                            <label class="col-md-4 control-label">Result</label>

                                                            <div class="col-md-7">

                                                            <form:input class="form-control"
                                                                        Placeholder="Education Level" type="text" path="result" required="false"></form:input>

                                                            </div>

                                                        </div>
                                                    <div class="form-group">
                                                        <label class="col-md-4 control-label">Duration</label>

                                                        <div class="col-md-7">

                                                        <form:input class="form-control"
                                                                    Placeholder="Duration" type="text" path="duration"   required="true"></form:input>

                                                        </div>

                                                    </div>

                                                    <div class="form-group">

                                                        <label class="col-md-4 control-label">Achievement</label>

                                                        <div class="col-md-7">

                                                        <form:input class="form-control"
                                                                    Placeholder="Achievement" type="text" path="achivment" required="true"></form:input>

                                                        </div>

                                                    </div>

                                                    <div class="form-group">

                                                        <button id="addeducation" name="EditBlog" class="btn btn-danger " type="submit">Update Profile</button>

                                                    </div>

                                                </div>
                                        </form:form>
                                    </c:if> 

                                    
                                </div>
                            </div>
                            <!-- panel1 body end -->
                        </div>
                        <!-- end update info-->

                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        <!-- update info -->

                        <div class="widget post panel-shadow">

                            <div class="widget-header">

                                <h3 class="widget-caption">Change password</h3>

                            </div>            

                            <div class="widget-body">

                                <div class="form-group">

                                    <label class="col-md-4 control-label">Current password</label>

                                    <div class="col-md-7">

                                        <input class="form-control" type="text">

                                    </div>

                                </div>

                                <div class="form-group">

                                    <label class="col-md-4 control-label">New password</label>

                                    <div class="col-md-7">

                                        <input class="form-control" type="text">

                                    </div>

                                </div>

                                <div class="form-group">

                                    <button type="submit" class="btn btn-danger">Guardar</button>

                                </div>                

                            </div>

                        </div><!-- end update info-->

                    </div>

                </div>

            </div><!--End Timeline content -->



            <!-- Online users sidebar content-->

            <div class="chat-sidebar focus">

                <div class="list-group text-left">

                    <p class="text-center visible-xs"><a href="#" class="hide-chat">Hide</a></p> 

                    <p class="text-center chat-title">Online users</p> 

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

            <jsp:include page="footer.jsp" />



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


            <script>'undefined' === typeof _trfq || (window._trfq = []);
                        'undefined' === typeof _trfd && (window._trfd = []), _trfd.push({'tccl.baseHost': 'secureserver.net'}), _trfd.push({'ap': 'cpsh'}, {'server': 'p3plcpnl0537'}) // Monitoring performance to make your website faster. If you want to opt-out, please contact web hosting support.</script><script src="resources/profile/css/tcc_l.combined.1.0.6.min.js.download"></script>

        </div>
    </body>
</html>