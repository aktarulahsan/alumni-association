<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang=""> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Alumni</title>
    <link rel="apple-touch-icon" sizes="180x180" href="apple-icon-180x180.png">
    <link rel="icon" type="image/png" sizes="192x192" href="resources/home3/android-icon-192x192.png">
    <link rel="icon" type="image/png" sizes="32x32" href="resources/home3/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="96x96" href="resources/home3/favicon-96x96.png">
    <link rel="icon" type="image/png" sizes="16x16" href="resources/home3/favicon-16x16.png">
    <link rel="stylesheet" href="resources/home3/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/home3/css/flexslider.css">
    <link rel="stylesheet" href="resources/home3/css/jquery.fancybox.css">
    <link rel="stylesheet" href="resources/home3/css/main.css">
    <link rel="stylesheet" href="resources/home3/css/responsive.css">
    <link rel="stylesheet" href="resources/home3/css/animate.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    
     <link rel="stylesheet" id="sayidan-style-css" href="resources/home3/style.css" type="text/css" media="all">
    
        <script src="resources/js/angular.js"></script>
        <script>
            var edu =${educationlist};

            var alluser =${userprofileobject};
            var allblog =${allblogpostobject};
            var jobcircular =${jobcircular};
            var alleve =${allevents};
            var newalumni =${newalumni};

            console.log(edu);
            angular.module('myapp', []).controller('BlogpostController', function ($scope) {

                $scope.education = edu;

                $scope.allusers = alluser;
                $scope.allbloglist = allblog;
                $scope.alljobcircular = jobcircular;
                $scope.allev = alleve;
                $scope.newuser = newalumni;
                //$scope.batchfriend = batch;

            });



        </script>

    
    
</head>
<body  ng-app="myapp"
          ng-controller="BlogpostController">
	<section class="banner" role="banner">
        <header id="header">
            <div class="header-content clearfix">
                <a class="logo" href="#"><img src="resources/logo/alumni-logo.jpg" height="50" width="50" alt=""></a>
                <nav class="navigation" role="navigation">
                    <ul class="primary-nav">
                        <li><a href="#features">Features</a></li>
                        <li><a href="#works">Works</a></li>
                        <li><a href="#teams">Our Team</a></li>
                        <li><a href="#testimonials">Testimonials</a></li>
                        <li><a href="#download">join</a></li>
                        <li><a href="login">login</a></li>
                    </ul>
                </nav>
                <a href="#" class="nav-toggle">Menu<span></span></a>
            </div><!-- header content -->
        </header><!-- header -->
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img src="resources/home3/slider2-3.jpg" alt="Image">
                    <div class="carousel-caption">
                        <h3>HEARTY WELCOMES WITH</h3>
                        <p>A TOUCH OF RIVALRY</p>
                    </div>      
                </div>

                <div class="item">
                    <img src="resources/home3/slider4-3.jpg" alt="Image">
                    <div class="carousel-caption">
                        <h3>Alumni Interview</h3>
                        <p>Aktarul Ahsan</p>
                    </div>      
                </div>
            </div>

            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </section><!-- banner -->
    <section id="features" class="features section">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-6 feature text-center">
                    <span class="icon icon-envelope"></span>
                    <div class="feature-content">
                        <h5>Checking Message</h5>
                        <p>Claritas est etiam processus 
                            dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est 
                            notare quam.   </p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 feature text-center">
                    <span class="icon icon-profile-male"></span>
                    <div class="feature-content">
                        <h5>Update My Information</h5>
                        <p>Claritas est etiam processus 
                            dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est 
                            notare quam.  </p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 feature text-center">
                    <span class="icon icon-genius"></span>
                    <div class="feature-content">
                        <h5>Join with Alumni Forum</h5>
                        <p>Claritas est etiam processus 
                            dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est 
                            notare quam.</p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 feature text-center">
                    <span class="icon icon-search"></span>
                    <div class="feature-content">
                        <h5>Search Alumni Directory</h5>
                        <p>Claritas est etiam processus 
                            dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est 
                            notare quam. </p>
                    </div>
                </div>
                
            </div>
        </div>
    </section><!-- features -->

    <section id="works" class="works section no-padding">
        <div id="panel-2146-0-0-3" class="so-panel widget_sayidan_blocks_widget" data-index="3" data-style="{&quot;background_display&quot;:&quot;tile&quot;}"><div class="so-widget-sayidan_blocks_widget so-widget-sayidan_blocks_widget-default-d75171398898">    <div class="block-links">
                    <div class="container">
                        <div class="row">

                            <div class="block-news col-md-4 col-sm-12 col-xs-12">
                                <div class="column-news">
                                    <div class="title-links">
                                        <h3 class="heading-regular">Latest News</h3>
                                    </div>
                                    <div class="post-wrapper">
                                        <div class="post-item clearfix">
                                            <div class="image-frame post-photo-wrapper">
                                                <a href="http://sayidan.kenzap.com/monica-objectives-should-be-stated-clearly/"> <img src="resources/homes/galery-popup-10-3-262x179.jpg" class="img-responsive wp-post-image" alt="" width="262" height="179"> </a>
                                            </div>
                                            <div class="post-desc-wrapper ">
                                                <div class="post-desc">
                                                    <div class="post-title"><h6 class="heading-regular"><a href="http://sayidan.kenzap.com/monica-objectives-should-be-stated-clearly/">Objectives Should Be Stated Clearly</a></h6></div>
                                                    <div class="post-excerpt">
                                                        <p>Duis autem vel eum iriure dolor in hendrerit[...]</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="post-item clearfix">
                                            <div class="image-frame post-photo-wrapper">
                                                <a href="http://sayidan.kenzap.com/jackie-lorem-ipsum-story-of-my-thoughts/"> <img src="resources/homes/shutterstock_282059522-3-3-262x179.jpg" class="img-responsive wp-post-image" alt="" width="262" height="179"> </a>
                                            </div>
                                            <div class="post-desc-wrapper ">
                                                <div class="post-desc">
                                                    <div class="post-title"><h6 class="heading-regular"><a href="http://sayidan.kenzap.com/jackie-lorem-ipsum-story-of-my-thoughts/">Lorem Ipsum Story of My</a></h6></div>
                                                    <div class="post-excerpt">
                                                        <p>Duis autem vel eum iriure dolor in hendrerit[...]</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="post-item clearfix">
                                            <div class="image-frame post-photo-wrapper">
                                                <a href="http://sayidan.kenzap.com/alex-maslov-i-found-the-way-how-to-setup-my-goals/"> <img src="resources/homes/galery-popup-6-3-262x179.jpg" class="img-responsive wp-post-image" alt="" width="262" height="179"> </a>
                                            </div>
                                            <div class="post-desc-wrapper ">
                                                <div class="post-desc">
                                                    <div class="post-title"><h6 class="heading-regular"><a href="http://sayidan.kenzap.com/alex-maslov-i-found-the-way-how-to-setup-my-goals/">I Found The Way How</a></h6></div>
                                                    <div class="post-excerpt">
                                                        <p>Duis autem vel eum iriure dolor in hendrerit[...]</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="post-item clearfix">
                                            <div class="image-frame post-photo-wrapper">
                                                <a href="http://sayidan.kenzap.com/francisc-world-level-mentors-and-tutors/"> <img src="resources/homes/shutterstock_225762442-3-262x179.jpg" class="img-responsive wp-post-image" alt="" width="262" height="179"> </a>
                                            </div>
                                            <div class="post-desc-wrapper ">
                                                <div class="post-desc">
                                                    <div class="post-title"><h6 class="heading-regular"><a href="http://sayidan.kenzap.com/francisc-world-level-mentors-and-tutors/">World Level Mentors And Tutors</a></h6></div>
                                                    <div class="post-excerpt">
                                                        <p>Mirum est notare quam littera gothica, quam nunc[...]</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="view-all"><a href="http://sayidan.kenzap.com/blog/">View All News</a></div>
                                </div>
                            </div>



                            <div class="block-career col-md-4 col-sm-12 col-xs-12" ng-app="myapp"
                                 ng-controller="BlogpostController">
                                <div class="column-career">
                                    <div class="title-links">
                                        <h3 class="heading-regular">Event Calendar</h3>
                                    </div>
                                    <div class="career-content">
                                        <div class="company-item clearfix" ng-repeat="nu in allev |limitTo:6">
                                            <div class="company-logo">
                                                <a href="http://sayidan.kenzap.com/career/procera/"><img src="resources/homes/procera-logo-edited-3.png" class="img-responsive wp-post-image" alt="" srcset="http://sayidan.kenzap.com/wp-content/uploads/2016/07/procera-logo-edited-3.png 391w, http://sayidan.kenzap.com/wp-content/uploads/2016/07/procera-logo-edited-3-300x51.png 300w" sizes="(max-width: 391px) 100vw, 391px" width="391" height="67"></a>
                                            </div>
                                            <div class="company-desc-wrapper">
                                                <div class="company-desc">
                                                    <div class="company-title"><h6 class="heading-regular"><a href="http://sayidan.kenzap.com/career/procera/">{{nu.title}}</a></h6></div>
                                                    <div class=" company-excerpt">
                                                        <p>{{nu.description}}</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                       
                                        
                                        
                                    </div>
                                    <div class="view-all"><a href="http://sayidan.kenzap.com/blog/">View All event</a></div> 
                                </div>
                            </div>




                            <div class="block-event-calendar col-md-4 col-sm-12 col-xs-12">
                                <div class="column-calendar">
                                    <div class="title-links">
                                        <h3 class="heading-regular">Career Opportunitydddd</h3>
                                    </div>


                                    <div class="content-calendar bg-calendar no-padding">
                                        
                                        <div class="list-view">

                                            <div class="view-item" ng-repeat="job in alljobcircular">
                                                <div class="date-item">
                                                    <span class="dates text-light">Fri</span>
                                                    <span class="day text-bold color-theme">01</span>
                                                    <span class="month text-light">Mar</span>
                                                </div>
                                                <div class="date-desc-wrapper" >
                                                    <div class="date-desc">
                                                        <div class="date-title"><h6 class="heading-regular"><a href="#">{{job.companynames}}</a></h6></div>
                                                        <div class="date-excerpt">
                                                            <p>{{job.title}}</p>
                                                        </div>
                                                        <div class="place">
                                                            <span class="icon map-icon"></span>
                                                            <span class="text-place">{{job.jobdescription}}</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="view-all"><a href="#">View All Events</a></div>
                                </div>
                            </div>


                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section><!-- works -->

    <section id="teams" class="section teams">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <div class="person">
                        <img src="resources/home3/images/team-1.jpg" alt="" class="img-responsive">
                        <div class="person-content">
                            <h4>Ruth Wood</h4>
                            <h5 class="role">Founder, CEO</h5>
                            <p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Maecenas sed diam eget risus varius blandit sit amet non magna. Nullam quis risus eget urna mollis ornare vel eu leo.</p>
                        </div>
                        <ul class="social-icons clearfix">
                            <li><a href="#"><span class="fa fa-facebook"></span></a></li>
                            <li><a href="#"><span class="fa fa-twitter"></span></a></li>
                            <li><a href="#"><span class="fa fa-linkedin"></span></a></li>
                            <li><a href="#"><span class="fa fa-google-plus"></span></a></li>
                            <li><a href="#"><span class="fa fa-dribbble"></span></a></li>
                        </ul>
                    </div><!-- person -->
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="person">
                        <img src="resources/home3/images/team-2.jpg" alt="" class="img-responsive">
                        <div class="person-content">
                            <h4>Timothy Reed</h4>
                            <h5 class="role">Co-Founder, Developer</h5>
                            <p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Maecenas sed diam eget risus varius blandit sit amet non magna. Nullam quis risus eget urna mollis ornare vel eu leo.</p>
                        </div>
                        <ul class="social-icons clearfix">
                            <li><a href="#" class=""><span class="fa fa-facebook"></span></a></li>
                            <li><a href="#" class=""><span class="fa fa-twitter"></span></a></li>
                            <li><a href="#" class=""><span class="fa fa-linkedin"></span></a></li>
                            <li><a href="#" class=""><span class="fa fa-google-plus"></span></a></li>
                            <li><a href="#" class=""><span class="fa fa-dribbble"></span></a></li>
                        </ul>
                    </div><!-- person -->
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="person">
                        <img src="resources/home3/images/team-3.jpg" alt="" class="img-responsive">
                        <div class="person-content">
                            <h4>Victoria Valdez</h4>
                            <h5 class="role">UI Designer</h5>
                            <p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Maecenas sed diam eget risus varius blandit sit amet non magna. Nullam quis risus eget urna mollis ornare vel eu leo.</p>
                        </div>
                        <ul class="social-icons clearfix">
                            <li><a href="#" class=""><span class="fa fa-facebook"></span></a></li>
                            <li><a href="#" class=""><span class="fa fa-twitter"></span></a></li>
                            <li><a href="#" class=""><span class="fa fa-linkedin"></span></a></li>
                            <li><a href="#" class=""><span class="fa fa-google-plus"></span></a></li>
                            <li><a href="#" class=""><span class="fa fa-dribbble"></span></a></li>
                        </ul>
                    </div><!-- person -->
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="person">
                        <img src="resources/home3/images/team-4.jpg" alt="" class="img-responsive">
                        <div class="person-content">
                            <h4>Beverly Little</h4>
                            <h5 class="role">Data Scientist</h5>
                            <p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Maecenas sed diam eget risus varius blandit sit amet non magna. Nullam quis risus eget urna mollis ornare vel eu leo.</p>
                        </div>
                        <ul class="social-icons clearfix">
                            <li><a href="#" class=""><span class="fa fa-facebook"></span></a></li>
                            <li><a href="#" class=""><span class="fa fa-twitter"></span></a></li>
                            <li><a href="#" class=""><span class="fa fa-linkedin"></span></a></li>
                            <li><a href="#" class=""><span class="fa fa-google-plus"></span></a></li>
                            <li><a href="#" class=""><span class="fa fa-dribbble"></span></a></li>
                        </ul>
                    </div><!-- person -->
                </div>
            </div>
        </div>
    </section><!-- teams -->

    <section id="testimonials" class="section testimonials no-padding">
        <div class="container-fluid">
            <div class="row no-gutter">
                <div class="flexslider">
                    <ul class="slides">
                        <li>
                            <div class="col-md-6">
                                <div class="avatar">
                                    <img src="resources/home3/images/testimonial-1.jpg" alt="" class="img-responsive">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <blockquote>
                                    <p>"Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Donec sed odio dui. Aenean eu leo quam..."
                                    </p>
                                    <cite class="author">Susan Sims, Interaction Designer at XYZ</cite>
                                </blockquote>
                            </div>
                        </li>
                        <li>
                            <div class="col-md-6">
                                <div class="avatar">
                                    <img src="resources/home3/images/testimonial-2.jpg" alt="" class="img-responsive">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <blockquote>
                                    <p>"Cras mattis consectetur purus sit amet fermentum. Donec sed odio dui. Aenean lacinia bibendum nulla sed consectetur...."
                                    </p>
                                    <cite class="author">Susan Sims, Interaction Designer at XYZ</cite>
                                </blockquote>
                            </div>
                        </li>
                    </ul>
                </div><!-- flexslider -->
            </div>
        </div>
    </section><!-- testimonials -->

    <section id="download" class="section download">
        <div class="container">
            <div class="col-md-8 col-md-offset-2 text-center">
                <h3>Are You Ready to Start? join Now For Free!</h3>
                <p>Fusce dapibus, tellus ac cursus commodo</p>
                <a href="signup" class="btn btn-large animated tada">Join now</a>
            </div>
        </div>
    </section><!-- download -->

    

    <footer class="footer">
        <div class="footer-top">
            <div class="container">
                <div class="row">
                    <div class="footer-col col-md-4">
                        <h5>Location</h5>
                        <p>3481 Melrose Place<br>Beverly Hills, CA 90210</p>
                    </div>
                    <div class="footer-col col-md-4">
                        <h5>Share with Love</h5>
                        <ul class="footer-share">
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="https://twitter.com/kamal_chaneman"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="https://www.linkedin.com/in/kamalchaneman"><i class="fa fa-linkedin"></i></a></li>
                            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                        </ul>
                    </div>
                    <div class="footer-col col-md-4">
                        <h5>About alumni</h5>
                        <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec ullamcorper nulla non metus auctor fringilla.</p>
                    </div>
                </div>
            </div>
        </div><!-- footer top -->
        <div class="footer-bottom">
            <div class="container">
                <div class="col-md-12">
                    <p>Copyright © 2015 alumni. All Rights Reserved<br>Made with <i class="fa fa-heart pulse"></i> by <a href="http://kamalchaneman.com/">Aktarul Ahsan</a></p>
                </div>
            </div>
        </div>
    </footer><!-- footer -->

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="js/jquery.min.js"><\/script>')</script>
    <script src="resources/home3/js/bootstrap.min.js"></script>
    <script src="resources/home3/js/jquery.flexslider-min.js"></script>
    <script src="resources/home3/js/jquery.fancybox.pack.js"></script>
    <script src="resources/home3/js/jquery.waypoints.min.js"></script>
    <script src="resources/home3/js/retina.min.js"></script>
    <script src="resources/home3/js/modernizr.js"></script>
    <script src="resources/home3/js/main.js"></script>
    
    <!-- Google Analytics: change UA-XXXXX-X to be your site's ID. -->
    <script>
        (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
        m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
        })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
       
        ga('create', 'UA-XXXX-X');
        ga('send', 'pageview');
    </script>
</body>
</html>