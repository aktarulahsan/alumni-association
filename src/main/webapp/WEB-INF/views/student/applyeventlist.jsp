


<!-- update info -->
<div class="panel animated fadeInDown delay-05s " id="panel-1">

    <h1><b><u>Apply Event History</u></b></h1>


    <div  class="panel-body" ng-repeat="ev in apevent">


        <div class="col-md-12">
            <div class="norm-jobs-wrapper" >
                <div class="row">


                    <div class="col-sm-12 col-sm-pull-9 pull-right">
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="job-title-text">
                                    <a onclick="clickJObTitle()" target="_blank" href="http://localhost:8080/alumni/viewonejobcircular?getpid={{ev.eventid}}">
                                        <u> {{ev.title}}</u>
                                    </a>
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="comp-name-text">
                                    {{ev.contactparson}}
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="locon-text">
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <div class="locon-text-d">
                                                {{cv.location}}</div>
                                        </div>
                                    </div>
                                </div>
                            </div>



                            <div class="col-sm-12">
                                <div class="edu-text">
                                    <div class="edu-text-d" >

                                        <ul>
                                            <li><h5>{{cv.description}} </h5>  
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

                                                {{cv.fees}}
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="dead-text">
                                    <div class="dead-text-s">
                                        <div class="dead-text-d">
                                            <strong>{{cv.reglastdate}}</strong>
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
