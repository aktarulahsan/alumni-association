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
            var skills =${skilllist};
            var jobhis =${jobhistorys};

            console.log(edu);
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



        <!-- Timeline content -->

        <div class="col-lg-12" style="margin-top:50px;">

            <div class="row">

                <div class="col-md-10 no-paddin-xs">

                    <div class="profile-nav col-md-3">

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

                    <div class="profile-info col-md-9" >

                        <div colspan="6">
                            <table border="0" align="center" cellpadding="0" cellspacing="0" width="100%">
                                <tbody><tr>
                                        <td width="73%" height="" align="left" valign="bottom" class="BDJApplicantsName">
                                            <!--Applicant's Name:-->
                                            <h1>${uparsonalprofile.firstname} ${uparsonalprofile.lastname}</h1>

                                        </td>

                                        <td width="27%" rowspan="2" align="right" valign="bottom">
                                            <!--Photograph:-->

                                            <table width="140" height="140" border="0" align="center" cellpadding="0" cellspacing="7" bgcolor="#dadce1">
                                                <tbody><tr> 
                                                        <td width="126" height="135" align="center" bgcolor="#e2e4e5" valign="middle"> 
                                                            <img src="resources/profileimage/${uparsonalprofile.emailid}.jpg" alt="user not have pic" width="124" height="135">

                                                        </td>
                                                    </tr>
                                                </tbody></table>

                                        </td>
                                    </tr>

                                    <tr>
                                        <td class="BDJNormalText04" align="left" valign="middle">
                                            <!--Contact Address:-->

                                            Address: ${uparsonalprofile.paddress}
                                            <!--Home Phone:-->

                                            <br>
                                            Mobile No 1: ${Userphone}	 
                                            <!--Office Phone:-->

                                            <br>
                                            Mobile No 2 :01556479082
                                            <!--Mobile:-->

                                            <br>		
                                            e-mail : ${UserId}
                                        </td>
                                    </tr>
                                </tbody>

                            </table>
                            <!---------------
                            CAREER OBJECTIVE:
                            ----------------->

                            <table border="0" cellpadding="0" cellspacing="0" align="center" width="750">	
                                <tbody><tr>
                                        <td colspan="6" style="border-bottom:1px solid #000000;">&nbsp;</td>
                                    </tr>

                                    <tr><td colspan="6">&nbsp;</td></tr>		 

                                    <tr>
                                        <td colspan="6" class="BDJHeadline01"><u>Career Objective:</u></td>
                                    </tr>

                                    <tr>
                                        <td colspan="6" align="left" style="padding-left:5px;" class="BDJNormalText01">
                                            To build a long and outstanding career in corporate sector where I will be able to work of situation with full efforts to utilize my knowledge, skill and experience for building a challenging professional career.	
                                        </td>
                                    </tr>		
                                </tbody></table>

                            <!--------------
                            CAREER SUMMARY :
                            ---------------->
                            <!-------------------------------------------
                            EMPLOYMENT HISTORY, TOTAL YEAR OF EXPERIENCE:
                            --------------------------------------------->

                            <table border="0" cellpadding="0" style="margin-top:3px;" cellspacing="0" align="center" width="750">
                                <!--
                                Employment History:
                                -->
                                <tr>
                                    <td colspan="6" class="BDJHeadline01"><u>Employment History:</u></td>
                                </tr>
                                <tr>
                                    <td colspan="6" align="left" style="padding-left:5px;" class="BDJNormalText01">
                                        <strong>Total Year of Experience :</strong> 7.3 Year(s)
                                    </td>
                                </tr>
                                <tbody  ng-repeat=" x in jobh">

                                    <!--Total Year of Experience:-->


                                    <tr>
                                        <td width="22" align="center" style="padding-left:5px;" class="BDJNormalText01">{{index + 1}}</td>
                                        <td width="750" colspan="5" align="left" class="BDJBoldText01">
                                            <!--Position, DateFrom, DateTo:-->					 
                                            <u>{{x.designation}}( {{x.startdate}} to {{x.enddate}})</u></td>
                                    </tr>	

                                    <tr>
                                        <td align="center" class="BDJHeadline02">&nbsp;</td>
                                        <td colspan="5" align="left" class="BDJNormalText01">
                                            <!--Company Name:-->
                                            <strong>{{x.companynames}}</strong>
                                            <br>
                                            <!--Company Location:-->

                                            Company Location : {{x.location}}
                                            <br>


                                            <!--Department:-->

                                            Department: {{x.department}}
                                            <br>
                                            <strong><i><u>Duties/Responsibilities:</u></i></strong>
                                            <br>
                                            {{x.responsibility}}

                                        </td>
                                    </tr>
                                </tbody>
                            </table>

                            <table border="0" cellpadding="0" style="margin-top:3px;" cellspacing="0" align="center" width="750">
                                <tbody><tr>
                                        <td colspan="6" class="BDJHeadline01"><u>Academic Qualification:</u></td>
                                    </tr>

                                    <tr>
                                        <td colspan="6" align="left" style="padding-left:5px;" class="BDJNormalText01">
                                            <table border="0" cellpadding="0" cellspacing="0" align="center" width="100%" style="border:1px solid #666666">

                                                <tr class="BDJNormalText02">
                                                    <td width="20%" align="center" style="border-right:1px solid #666666"><strong>Exam Title</strong></td>
                                                    <td width="20%" align="center" style="border-right:1px solid #666666"><strong>Concentration/Major</strong></td>
                                                    <td width="20%" align="center" style="border-right:1px solid #666666"><strong>Institute</strong></td>
                                                    <td width="12.5%" align="center" style="border-right:1px solid #666666"><strong>Result</strong></td>

                                                    <td width="12.5%" align="center" style="border-right:1px solid #666666"><strong>Pas.Year</strong></td> 				   


                                                    <td width="15%" align="center"><strong>Duration</strong></td>

                                                </tr>

                                                <tbody ng-repeat="edu in education">			 

                                                    <tr class="BDJNormalText02">
                                                        <!--Exam Title:-->
                                                        <td width="20%" align="center" style="border-right:1px solid #666666;border-top:1px solid #666666;">
                                                            {{edu.examtitle}}

                                                        </td>
                                                        <!--Concentration/Major:-->
                                                        <td width="20%" align="center" style="border-right:1px solid #666666;border-top:1px solid #666666;">
                                                            {{edu.majorsubject}}
                                                        </td>
                                                        <!--Institute:-->
                                                        <td width="20%" align="center" style="border-right:1px solid #666666;border-top:1px solid #666666;">

                                                            {{edu.board}}				
                                                        </td>
                                                        <!--Result:-->
                                                        <td width="12.5%" align="center" style="border-right:1px solid #666666;border-top:1px solid #666666;">

                                                            {{edu.result}}					
                                                        </td>
                                                        <!--Passing Year:-->

                                                        <td width="12.5%" style="border-right:1px solid #666666;border-top:1px solid #666666;" align="center">
                                                            {{edu.passingyear}}

                                                        </td>


                                                        <!--Duration:-->
                                                        <td width="15%" style="border-top:1px solid #666666" align="center">
                                                            {{edu.duration}}

                                                        </td>

                                                    </tr>
                                                </tbody></table> 
                                        </td>
                                    </tr>
                                </tbody>
                            </table>

                            <!--
PERSONAL DETAILS:
                            -->

                            <table border="0" cellpadding="0" cellspacing="0" align="center" width="750" style="margin-top:3px;">
                                <!--
                                Personal Details
                                -->
                                <tbody><tr>
                                        <td colspan="6" class="BDJHeadline01"><u>Personal Details :</u></td>
                                    </tr>

                                    <tr>
                                        <td colspan="6" align="left" class="BDJNormalText01">
                                            <table border="0" cellpadding="0" cellspacing="0" align="center" width="100%">
                                                <!--Fathers Name:-->

                                                <tbody><tr class="BDJNormalText03">
                                                        <td width="22%" align="left" style="padding-left:5px;">Father's Name </td>
                                                        <td width="2%" align="center">:</td>
                                                        <td width="76%" align="left">
                                                            ${uparsonalprofile.fathername}
                                                        </td>
                                                    </tr>

                                                    <!--Mothers Name:-->

                                                    <tr class="BDJNormalText03">
                                                        <td width="22%" align="left" style="padding-left:5px;">Mother's Name </td>
                                                        <td width="2%" align="center">:</td>
                                                        <td width="76%" align="left">
                                                            ${uparsonalprofile.mothername}
                                                        </td>
                                                    </tr>

                                                    <!--Date of Birth:-->
                                                    <tr class="BDJNormalText03">
                                                        <td width="22%" align="left" style="padding-left:5px;">Date  of Birth</td>
                                                        <td width="2%" align="center">:</td>
                                                        <td width="76%" align="left">
                                                            ${uparsonalprofile.dateofbirth}	 
                                                        </td>
                                                    </tr>
                                                    <!--Gender:-->
                                                    <tr class="BDJNormalText03">
                                                        <td width="22%" align="left" style="padding-left:5px;">Gender</td>
                                                        <td width="2%" align="center">:</td>
                                                        <td width="76%" align="left">
                                                            ${uparsonalprofile.gender}
                                                        </td>
                                                    </tr>
                                                    <!--Marital Status:-->
                                                    <tr class="BDJNormalText03">
                                                        <td width="22%" align="left" style="padding-left:5px;">Marital  Status </td>
                                                        <td width="2%" align="center">:</td>
                                                        <td width="76%" align="left">
                                                            ${uparsonalprofile.maritalstatus}
                                                        </td>
                                                    </tr>
                                                    <!--Nationality:-->
                                                    <tr class="BDJNormalText03">
                                                        <td align="left" style="padding-left:5px;">Nationality</td>
                                                        <td align="center">:</td>
                                                        <td align="left">
                                                            ${uparsonalprofile.nationality}
                                                        </td>
                                                    </tr>

                                                    <tr class="BDJNormalText03">
                                                        <td align="left" style="padding-left:5px;">National Id No.</td>
                                                        <td align="center">:</td>
                                                        <td align="left">
                                                            ${uparsonalprofile.nid}
                                                        </td>
                                                    </tr>

                                                    <!--Religion:-->

                                                    <tr class="BDJNormalText03">
                                                        <td align="left" style="padding-left:5px;">Religion</td>
                                                        <td align="center">:</td>
                                                        <td align="left">
                                                            ${uparsonalprofile.religion}
                                                        </td>
                                                    </tr>

                                                    <!--Permanent Address:-->

                                                    <tr class="BDJNormalText03">
                                                        <td align="left" style="padding-left:5px;">Permanent  Address</td>
                                                        <td align="center">:</td>
                                                        <td align="left">
                                                            ${uparsonalprofile.paddress}
                                                        </td>
                                                    </tr>

                                                    <!--Current Location:-->
                                                    <tr class="BDJNormalText03">
                                                        <td align="left" style="padding-left:5px;">Current  Location</td>
                                                        <td align="center">:</td>
                                                        <td align="left">			
                                                            ${uparsonalprofile.curentaddress} 		
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>

                            <!--
REFERENCE:
                            -->

                            <table border="0" cellpadding="0" cellspacing="0" align="center" width="750" style="margin-top:3px;">
                                <!--
                                Reference:
                                -->
                                <tbody><tr>
                                        <td colspan="6" class="BDJHeadline01"><u>Reference (s):</u></td>
                                    </tr>

                                    <tr>
                                        <td colspan="6" align="left" class="BDJNormalText01">
                                            <table border="0" width="100%" align="center" cellpadding="0" cellspacing="0">

                                                <tbody><tr class="BDJNormalText03">
                                                        <td width="22%" align="left">&nbsp;</td>
                                                        <td width="2%" align="center">&nbsp;</td>			
                                                        <td width="35%" align="left" class="BDJBoldText01" style="border-right:1px solid #666666;"><u>Reference: 01</u></td>
                                                        <td width="41%" align="left" class="BDJBoldText01" style="padding-left:15px;"><u>Reference: 02</u></td>
                                                    </tr>

                                                    <!--Name:-->

                                                    <tr class="BDJNormalText03">

                                                        <td width="22%" align="left" style="padding-left:5px;">Name </td>
                                                        <td width="2%" align="center">:</td>
                                                        <td width="35%" align="left" style="border-right:1px solid #666666;">
                                                            Rebaka Najma
                                                            &nbsp;
                                                        </td>

                                                        <td width="41%" align="left" style="padding-left: 10px;">
                                                            Md. Abu Bakor Siddik
                                                        </td>

                                                    </tr>

                                                    <!--Organization:-->

                                                    <tr class="BDJNormalText03">

                                                        <td width="22%" align="left" style="padding-left:5px;">Organization</td>
                                                        <td width="2%" align="center">:</td>
                                                        <td width="35%" align="left" style="border-right:1px solid #666666;">
                                                            Kurigram Govt College
                                                            &nbsp;
                                                        </td>

                                                        <td width="41%" align="left" style="padding-left: 10px;">
                                                            Madina Cement Industries LTD				  
                                                        </td>

                                                    </tr>

                                                    <!--Designation:-->	 

                                                    <tr class="BDJNormalText03">

                                                        <td width="22%" align="left" style="padding-left:5px;">Designation</td>
                                                        <td width="2%" align="center">:</td>
                                                        <td width="35%" align="left" style="border-right:1px solid #666666;">
                                                            Lecturer of Botany
                                                            &nbsp;
                                                        </td>

                                                        <td width="41%" align="left" style="padding-left: 10px;">
                                                            Area Sales Manager,				  
                                                        </td>

                                                    </tr>

                                                    <!--Address:-->

                                                    <tr class="BDJNormalText03">

                                                        <td width="22%" align="left" style="padding-left:5px;">Address</td>
                                                        <td width="2%" align="center">:</td>
                                                        <td width="35%" align="left" style="border-right:1px solid #666666;">
                                                            Kurigram Govt College
                                                            &nbsp;
                                                        </td>

                                                        <td width="41%" align="left" style="padding-left: 10px;">
                                                            Madina Cement Industries LTD
                                                            Madina Square (4th Floor),
                                                            64/A, Shahid Buddhijibi Munir Chowdhury
                                                            Sharak (Central Road),
                                                            Dhanmondi, Dhaka-1205				  
                                                        </td>

                                                    </tr>

                                                    <!--Phone(Off):-->	

                                                    <tr class="BDJNormalText03">

                                                        <td width="22%" align="left" style="padding-left:5px;">Phone (Off.) </td>
                                                        <td width="2%" align="center">:</td>
                                                        <td width="35%" align="left" style="border-right:1px solid #666666;">

                                                            &nbsp;
                                                        </td>

                                                        <td width="41%" align="left" style="padding-left: 10px;">

                                                        </td>

                                                    </tr>

                                                    <!--Phone(Res):-->

                                                    <tr class="BDJNormalText03">

                                                        <td align="left" style="padding-left:5px;">Phone (Res.) </td>
                                                        <td align="center">:</td>
                                                        <td align="left" style="border-right:1px solid #666666;">

                                                            &nbsp;
                                                        </td>

                                                        <td align="left" style="padding-left: 10px;">

                                                        </td>

                                                    </tr>

                                                    <!--Mobile:-->

                                                    <tr class="BDJNormalText03">

                                                        <td align="left" style="padding-left:5px;">Mobile</td>
                                                        <td align="center">:</td>
                                                        <td align="left" style="border-right:1px solid #666666;">
                                                            01742199273
                                                            &nbsp;
                                                        </td>

                                                        <td align="left" style="padding-left: 10px;">
                                                            +8801730329331				  
                                                        </td>

                                                    </tr>

                                                    <!--E-Mail:-->

                                                    <tr class="BDJNormalText03">

                                                        <td align="left" style="padding-left:5px;">E-Mail</td>
                                                        <td align="center">:</td>
                                                        <td align="left" style="border-right:1px solid #666666;">

                                                            &nbsp;
                                                        </td>

                                                        <td align="left" style="padding-left: 10px;">
                                                            siddik@madina.co				  
                                                        </td>

                                                    </tr>

                                                    <!--Relation:-->

                                                    <tr class="BDJNormalText03">

                                                        <td align="left" style="padding-left:5px;">Relation</td>
                                                        <td align="center">:</td>
                                                        <td align="left" style="border-right:1px solid #666666;">
                                                            Academic
                                                            &nbsp;
                                                        </td>

                                                        <td align="left" style="padding-left: 10px;">
                                                            Professional				  				  
                                                        </td>

                                                    </tr>


                                                    <tr class="BDJNormalText03">
                                                        <td align="left">&nbsp;</td>
                                                        <td align="center">&nbsp;</td>
                                                        <td colspan="2" align="left">
                                                        </td>
                                                    </tr>

                                                </tbody>
                                            </table>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>







                        </div>

                    </div>

                </div>

            </div><!--End Timeline content -->
<br/><br/><br/><br/><br/><br/>


            <!-- Online users sidebar content-->

            <div class="chat-sidebar focus">

                <div class="list-group text-left">

                    <p class="text-center visible-xs"><a href="http://localhost:8080/alumni/homepage#" class="hide-chat">Hide</a></p> 

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
        </div><br/><br/><br/><br/><br/>
        <footer class="welcome-footer">
            <div class="container">
                <jsp:include page="footer.jsp" /> 
            </div>                                                
        </footer>





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

    </body></html>