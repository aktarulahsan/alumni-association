<!DOCTYPE html>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html lang="en">
    <head>


        <script src="resources/js/angular.js"></script>
        <script>

            var chat = ${abc};
            var uprofile =${uprofile};
//            var circular = ${jobcicular};
            console.log(chat);
            angular.module('myapp', []).controller('BlogpostController', function ($scope) {
                $scope.alluser = uprofile;
                $scope.profile = chat;


                //$scope.jobcircular = circular;

            });
        </script>
        <style>
            th {
                font-size: 13px;
            }
            td {
                font-size: 11px;
            }

            .apply-wrap {padding:0px 0px 4px 0px; margin:15px 0px 0px 0px; border:1px solid #c6c4c5; -webkit-border-radius:6px; -moz-border-radius:6px; border-radius:6px; position:relative; font-size:14px; background-color:#f3f3f3;}

            .aoc-wrapper {
                padding: 0px;
                margin: 0px;
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
                        <form class="navbar-form">
                            <div class="form-group" style="display:inline;">
                                <div class="input-group" style="display:table;">
                                    <input class="form-control" name="search" placeholder="Search..." autocomplete="off" type="text"> <span class="input-group-addon" style="width:1%;"> <span class="glyphicon glyphicon-search"></span> </span>
                                </div>
                            </div>
                        </form>
                    </div>
                    <ul class="nav navbar-nav navbar-right">
                        <li class="active"><a href="http://localhost:8080/alumni/timelineal">${uparsonalprofile.firstname} ${uparsonalprofile.lastname}<img src="resources/profileimage/${uparsonalprofile.emailid}.jpg" class="img-nav"></a></li>
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



        <!-- Timeline content -->

        <div class="container" style="margin-top:10%;">

            <div class="row ">
                <div class="col-md-2"></div>
                <div class="content col-md-8 center">
                    Search Friend : <input type="text" ng-model="searchBox" ng-init="searchBox = '${ser}'" >
                    <br><br>
                    
                    <%
                        String po ="searchBox";
                         String bosxxx="";
                        if (po.length() != 0) {
                             //bosxxx = "00000000000000000";
                    %>
                     


                    <table class="table table-striped ">
                        <thead>
                            <tr>
                                <th>name</th>
                                <th>Batch</th>
                                <th>Address</th>
                                <th>Mobile number</th>
                                <th>pic</th>

                            </tr>
                        </thead>
                        <tbody>
                            <tr ng-repeat="pk in alluser| filter: searchBox" required>
                                <td><a href="aboutfrind?getpid={{us.emailid}}"> {{pk.firstname}}</a></td>
                                <td>{{pk.batch}}</td>
                                <td>{{pk.paddress}}</td>
                                <td>{{pk.mobilenumber}}</td>
                                <td> <img id="doctorimage" class="img-rounded img-fluid"
                                          src="resources/profileimage/{{pk.emailid}}.jpg" height="50px"
                                          width="50px"/></td>


                            </tr>
                        </tbody>
                    </table>
                   <%    } else {
                            bosxxx = ""; 
                    %>
                   xxxxxxxxxxxxxxxxxxxxxxx

                    <%        }

                    %>

                </div>


            </div>
            <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
            <br/><br/><br/><br/><br/><br/>
        </div><!--End Timeline content -->



        <!-- Online users sidebar content-->

        <!-- Online users sidebar content-->

        <!-- Footer -->
        <footer class="container-fluid text-center">

            <div class="container">

                <p>

                </p>   

                Copyrights and copy 2018 Alumni | Created By Md Aktarul Ahsan  | All Rights Reserved <br>

                <p></p>

            </div>

        </footer>
        <!-- Footer -->




        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>
        <script>
                                                            $(document).ready(function () {
                                                                var date_input = $('input[name="applylastdate"]'); //our date input has the name "date"
                                                                var container = $('.bootstrap-iso form').length > 0 ? $('.bootstrap-iso form').parent() : "body";
                                                                date_input.datepicker({
                                                                    format: 'yyyy/MM/dd',
                                                                    container: container,
                                                                    todayHighlight: true,
                                                                    autoclose: true,
                                                                })
                                                            })
        </script>


        <script>'undefined' === typeof _trfq || (window._trfq = []);
                    'undefined' === typeof _trfd && (window._trfd = []), _trfd.push({'tccl.baseHost': 'secureserver.net'}), _trfd.push({'ap': 'cpsh'}, {'server': 'p3plcpnl0537'}) // Monitoring performance to make your website faster. If you want to opt-out, please contact web hosting support.</script><script src="resources/profile/css/tcc_l.combined.1.0.6.min.js.download"></script>


    </body>
</html>