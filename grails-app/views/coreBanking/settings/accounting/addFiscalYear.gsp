<%--
  Created by IntelliJ IDEA.
  User: Mohammed Imran
  Date: 3/8/14
  Time: 7:08 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="oros">
    <title></title>
    <r:script>

        $(document).ready(function () {


            $("#begin").datepicker({
                showOtherMonths: true,
                selectOtherMonths: false
                //isRTL:true,


                /*
                 changeMonth: true,
                 changeYear: true,

                 showButtonPanel: true,
                 beforeShow: function() {
                 //change button colors
                 var datepicker = $(this).datepicker( "widget" );
                 setTimeout(function(){
                 var buttons = datepicker.find('.ui-datepicker-buttonpane')
                 .find('button');
                 buttons.eq(0).addClass('btn btn-xs');
                 buttons.eq(1).addClass('btn btn-xs btn-success');
                 buttons.wrapInner('<span class="bigger-110" />');
                 }, 0);
                 }
                 */
            });

            $("#end").datepicker({
                showOtherMonths: true,
                selectOtherMonths: false
                //isRTL:true,


                /*
                 changeMonth: true,
                 changeYear: true,

                 showButtonPanel: true,
                 beforeShow: function() {
                 //change button colors
                 var datepicker = $(this).datepicker( "widget" );
                 setTimeout(function(){
                 var buttons = datepicker.find('.ui-datepicker-buttonpane')
                 .find('button');
                 buttons.eq(0).addClass('btn btn-xs');
                 buttons.eq(1).addClass('btn btn-xs btn-success');
                 buttons.wrapInner('<span class="bigger-110" />');
                 }, 0);
                 }
                 */
            });


        });

    </r:script>
</head>

<body>
<div class="col-md-12">
    <div class="widget-box">
        <div class="widget-header">
            <h4 class="smaller">Fiscal Year</h4>
        </div>

        <div class="widget-body">
            <div class="widget-main">
                <form class="form-horizontal" action="${createLink(controller: 'fiscalYear', action: 'save')}">

                    <div class="form-group">
                        <label class="control-label col-md-3 no-padding-right"
                               for="begin">Begin Date</label>

                        <div class="col-md-4 col-sm-4">
                            <div class="clearfix">
                                <div class="input-group input-group-sm">
                                    <input type="date" required=""
                                    %{--oninvalid="this.setCustomValidity('${message(code: 'fiscalYear.addFiscalYear.begin',default: 'Please Enter Begin Date')}')"--}%
                                    %{--oninput="setCustomValidity('')"--}%
                                    %{--title="${message(code: 'fiscalYear.addFiscalYear.begin', default: 'Please Enter Begin Date')}"--}%
                                           id="begin" name="begin" class="form-control"/>
                                    <span class="input-group-addon">
                                        <i class="icon-calendar"></i>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="form-group">
                        <label class="control-label col-xs-12 col-sm-3 no-padding-right"
                               for="end">Ending Date</label>

                        <div class="col-md-4 col-sm-4">
                            <div class="clearfix">
                                <div class="input-group input-group-sm">
                                    <input type="date" required=""
                                    %{--oninvalid="this.setCustomValidity('${message(code: 'fiscalYear.addFiscalYear.end',default: 'Please Enter Ending Date')}')"--}%
                                    %{--oninput="setCustomValidity('')"--}%
                                    %{--title="${message(code: 'fiscalYear.addFiscalYear.end', default: 'Please Enter Ending Date')}"--}%
                                           id="end" name="end" class="form-control"/>
                                    <span class="input-group-addon">
                                        <i class="icon-calendar"></i>
                                    </span>
                                </div>

                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-xs-12 col-sm-3 no-padding-right"
                               for="closed">Closed</label>

                        <div class="col-md-4 col-sm-4">
                            <div class="clearfix">

                                <select required=""
                                        oninvalid="this.setCustomValidity('${message(code: 'fiscalYear.addFiscalYear.closed',default: 'Please Enter Closed Info')}')"
                                        oninput="setCustomValidity('')"
                                        title="${message(code: 'fiscalYear.addFiscalYear.closed', default: 'Please Enter Closed Info')}"
                                        id="closed" name="closed" class="form-control">
                                    <option value="">--Select--</option>
                                    <option value="1">Yes</option>
                                    <option value="0">NO</option>
                                </select>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-offset-1">
                        <input type="submit" class="btn btn-danger" id="submit" value="Add Currency"/>
                    </div>

                </form>

            </div>
        </div>
    </div>
</div><!-- /span -->

</body>
</html>