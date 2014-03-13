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
      $(document).ready(function(){

          $(".chosen-select").chosen();

      });


    </r:script>

</head>

<body>

<div class="row">
    <div class="col-lg-0 col-md-0 col-sm-0 col-xs-0">
        <div class="widget-box">
            <div class="widget-header widget-header-large blue ">
                <h5>New Branch Setup</h5>
            </div>
            <form class="" id="branchSetup" role="form" method="post" action="${createLink(controller: 'branchSettings',action: 'create')}">           <!--action="${createLink(controller: 'branchSetting',action: 'create')}" -->
                <div id="accordion" class="accordion-style1 panel-group">

                    <div class="panel panel-default" id="">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle blue" data-toggle="collapse" data-parent="#accordion"
                                   href="#collapseOne">
                                    <i class="icon-angle-down bigger-110" data-icon-hide="icon-angle-down"
                                       data-icon-show="icon-angle-right"></i>
                                    &nbsp;Branch Details
                                </a>
                            </h4>
                        </div>

                        <div class="panel-collapse collapse in" id="collapseOne">
                            <div class="panel-body">

                                <g:render template="/corebanking/settings/branchSettings/branchDetails"/>


                            </div>
                        </div>
                    </div>

                    %{--End of Branch Details--}%

                    <div class="panel panel-default" id="">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle collapsed blue" data-toggle="collapse" data-parent="#accordion"
                                   href="#collapseTwo">
                                    <i class="icon-angle-right bigger-110" data-icon-hide="icon-angle-down"
                                       data-icon-show="icon-angle-right"></i>
                                    &nbsp;Branch Address
                                </a>
                            </h4>
                        </div>

                        <div class="panel-collapse collapse" id="collapseTwo">
                            <div class="panel-body">

                                <g:render template="/corebanking/settings/branchSettings/branchAddress"/>

                            </div>
                        </div>
                    </div>

                    %{--End of Branch Address--}%

                </div>

                <div class="widget-header widget-header-large red">
                    <div class="col-lg-push-1 right">
                        <input type="submit" class="btn btn-info" id="preview" value="Preview"/>

                        %{--<input type="reset" class="btn btn-success" id="reset" value="Reset Fields"/>--}%
                    </div>
                </div>
            </form>
        </div><!-- /span -->
    </div>

    <div id="branchPreviewInformation" class="">
           %{--<div class="row alert alert-success">--}%
              %{--<div class="col-md-12">--}%
           %{--<h3 class="green smaller lighter center">Preview</h3>--}%
                  %{--<g:render template="/branchSetting/branchDetails"/>--}%

              %{--</div>--}%
           %{--</div>--}%




    </div>


</div>



</body>
</html>