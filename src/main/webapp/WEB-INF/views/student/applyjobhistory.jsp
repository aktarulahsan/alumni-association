


<!-- update info -->
<div class="panel animated fadeInDown delay-05s " id="panel-1">

    <h1><b><u>Apply job History</u></b></h1>


    <div  class="panel-body" ng-repeat="x in joblist">


        <div class="col-md-12">
            <div class="norm-jobs-wrapper" >
                <div class="row">


                    <div class="col-sm-12 col-sm-pull-9 pull-right">
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="job-title-text">
                                    <a onclick="clickJObTitle()" target="_blank" href="http://localhost:8080/alumni/viewonejobcircular?getpid={{x.jobid}}">
                                        <u> {{x.title}}</u>
                                    </a>
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="comp-name-text">
                                    {{x.companynames}}
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="locon-text">
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <div class="locon-text-d">
                                                {{x.location}}</div>
                                        </div>
                                    </div>
                                </div>
                            </div>



                            <div class="col-sm-12">
                                <div class="edu-text">
                                    <div class="edu-text-d" >

                                        <ul>
                                            <li><h5>{{x.eduqualification}} </h5>  
                                            </li>
                                        </ul>

                                    </div>
                                </div>
                            </div>


                        </div>
                    </div>

                    <div class="col-sm-12">
                        <div class="row">
                            <div class="col-sm-9">
                                <div class="exp-text">
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <div class="exp-text-d" maxlength="50">

                                                {{x.experience}}
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="dead-text">
                                    <div class="dead-text-s">
                                        <div class="dead-text-d">
                                            <strong>{{x.applylastdate}}</strong>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

        </div>


    </div>

</div>
