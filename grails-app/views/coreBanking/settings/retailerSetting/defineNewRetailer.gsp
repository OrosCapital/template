<%--
  Created by IntelliJ IDEA.
  User: Mohammed Imran
  Date: 3/5/14
  Time: 12:46 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <meta name="layout" content="oros">
    <r:script>
       $(document).ready(function(){
           $("input").keypress(function(){
               input[type=number]:invalid { background-color: red; }
               input[type=number]:invalid
           });
       });
    </r:script>

  <title></title>
</head>
<body>
<div class="row">
    <div class="col-md-0 col-sm-0 ">
        <div class="widget-box">
            <div class="widget-header widget-header-large blue ">
                <h5>New Retailer Setup</h5>
            </div>

            <form class="" id="retailerSetup" role="form" method="post" action="${createLink(controller: 'retailerSettings',action: 'create')}">
                <div id="accordion" class="accordion-style1 panel-group">
                    <div class="panel panel-default" >
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle blue" data-toggle="collapse" data-parent="#accordion"
                                   href="#collapseOne">
                                    <i class="icon-angle-down bigger-110" data-icon-hide="icon-angle-down"
                                       data-icon-show="icon-angle-right"></i>
                                    &nbsp;Basic Information
                                </a>
                            </h4>
                        </div>

                        <div class="panel-collapse collapse in" id="collapseOne">
                            <div class="panel-body">

                                <g:render template="/corebanking/settings/retailerSetting/retailerBasicInfo"/>


                            </div>
                        </div>
                    </div>

                    <div class="panel panel-default" >
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle collapsed blue" data-toggle="collapse" data-parent="#accordion"
                                   href="#collapseTwo">
                                    <i class="icon-angle-right bigger-110" data-icon-hide="icon-angle-down"
                                       data-icon-show="icon-angle-right"></i>
                                    &nbsp;Address
                                </a>
                            </h4>
                        </div>

                        <div class="panel-collapse collapse" id="collapseTwo">
                            <div class="panel-body">

                                <g:render template="/corebanking/settings/retailerSetting/retailerAddress"/>

                            </div>
                        </div>
                    </div>

                    <div class="panel panel-default" >
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle collapsed blue" data-toggle="collapse" data-parent="#accordion"
                                   href="#collapseThree">
                                    <i class="icon-angle-right bigger-110" data-icon-hide="icon-angle-down"
                                       data-icon-show="icon-angle-right"></i>
                                    &nbsp;Advanced Setup
                                </a>
                            </h4>
                        </div>

                        <div class="panel-collapse collapse" id="collapseThree">
                            <div class="panel-body">

                                <g:render template="/corebanking/settings/retailerSetting/retailerAdvanceSetup"/>

                            </div>
                        </div>
                    </div>

                </div>

                <div class="widget-header widget-header-large red">
                    <div class="col-lg-push-1 right">
                        <input type="submit" class="btn btn-info" id="Create" value="Create"/>

                        %{--<input type="reset" class="btn btn-success" id="reset" value="Reset Fields"/>--}%
                    </div>
                </div>

            </form>
        </div>
    </div>
</div>
</body>
</html>