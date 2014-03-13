<%--
  Created by IntelliJ IDEA.
  User: Mohammed Imran
  Date: 2/15/14
  Time: 10:26 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="oros">
    <title></title>
    <r:script>
        jQuery(function($) {

            $(".chosen-select").chosen();

        });
    </r:script>
</head>

<body>

<div class="row">
    <div class="col-lg-0">
        <div class="widget-box ">
            <div class="widget-header widget-header-large blue ">
                <h5>Bank Setting</h5>
            </div>

                <form class="" id="bankSetUp-form" role="form" enctype="multipart/form-data"
                      action="${createLink(controller: 'bankSetting', action: 'update')}" method="post">

                    <div id="accordion" class="accordion-style1 panel-group">

                        <div class="panel panel-default" id="generalSetting">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a class="accordion-toggle blue" data-toggle="collapse" data-parent="#accordion"
                                       href="#collapseOne">
                                        <i class="icon-angle-down bigger-110" data-icon-hide="icon-angle-down"
                                           data-icon-show="icon-angle-right"></i>
                                        &nbsp;General Information
                                    </a>
                                </h4>
                            </div>

                            <div class="panel-collapse collapse in" id="collapseOne">
                                <div class="panel-body">
                                    %{--<g:each in="${bankSetupData}" var="bankSetting">--}%
                                    <g:render template="/corebanking/settings/bankSettings/generalInformation"/>

                                </div>
                            </div>
                        </div>

                        %{--End of General Information--}%

                        <div class="panel panel-default" id="postalAddress">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a class="accordion-toggle collapsed blue" data-toggle="collapse"
                                       data-parent="#accordion"
                                       href="#collapseTwo">
                                        <i class="icon-angle-right bigger-110" data-icon-hide="icon-angle-down"
                                           data-icon-show="icon-angle-right"></i>
                                        &nbsp;Postal Address
                                    </a>
                                </h4>
                            </div>

                            <div class="panel-collapse collapse" id="collapseTwo">
                                <div class="panel-body">

                                    <g:render template="/corebanking/settings/bankSettings/postalAddress"/>

                                </div>
                            </div>
                        </div>

                        %{--End of Postal Address--}%

                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a class="accordion-toggle collapsed blue" data-toggle="collapse"
                                       data-parent="#accordion"
                                       href="#collapseThree">
                                        <i class="icon-angle-right bigger-110" data-icon-hide="icon-angle-down"
                                           data-icon-show="icon-angle-right"></i>
                                        &nbsp;VAT & TAX
                                    </a>
                                </h4>
                            </div>

                            <div class="panel-collapse collapse" id="collapseThree">
                                <div class="panel-body">

                                    <g:render template="/corebanking/settings/bankSettings/vatAndTax"/>

                                </div>
                            </div>
                        </div>

                        %{--End Of Vat and Tax--}%

                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a class="accordion-toggle collapsed blue" data-toggle="collapse"
                                       data-parent="#accordion"
                                       href="#collapseFour">
                                        <i class="icon-angle-right bigger-110" data-icon-hide="icon-angle-down"
                                           data-icon-show="icon-angle-right"></i>
                                        &nbsp;Default Setting
                                    </a>
                                </h4>
                            </div>

                            <div class="panel-collapse collapse" id="collapseFour">
                                <div class="panel-body">
                                    <g:render template="/corebanking/settings/bankSettings/defaultSetting"/>
                                </div>
                            </div>
                        </div>

                        %{--End Of Default Setting--}%

                    </div>


                    <div class="widget-header widget-header-large blue">
                        <div class="col-lg-push-1 right">
                            <input type="submit" class="btn btn-info" id="submit" value="Update"/>

                            %{--<input type="reset" class="btn btn-success" id="reset" value="Reset Fields"/>--}%
                        </div>
                    </div>
                </form>

        </div><!-- /span -->
    </div>

</div>

</body>
</html>