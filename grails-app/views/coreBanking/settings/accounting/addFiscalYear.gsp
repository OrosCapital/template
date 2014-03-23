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


        $("#beginingDate").datepicker({
            showOtherMonths: true,
            selectOtherMonths: false
        });
        $('#beginingDate').on('changeDate', function(ev){
            $(this).datepicker('hide');
        });

        $("#endingDate").datepicker({
            showOtherMonths: true,
            selectOtherMonths: false
        });
        $('#endingDate').on('changeDate', function(ev){
            $(this).datepicker('hide');
        });
    });

</r:script>

<r:script>
        jQuery(document).ready(function(){


            jQuery("#grid").jqGrid({
                url:'${createLink(controller: 'fiscalYear', action: 'list')}',
                datatype: "json",
                mtype: 'GET',
                height:326,
                width: 750,
//                colNames:['ID','Begin Date', 'End Date', 'Closed'],
                colModel:[
                    {name: "Sl No.",index:'serial', width:50, sortable:false, editable:false, align:'center'},
                    {name:'id',index:'id', width:50, sortable:false, editable:false, hidden:true},
                    {name:'beginingDate',index:'beginingDate', width:175, sortable:false, editable:false},
                    {name:'endingDate',index:'endingDate', width:75,editable:false,sortable:false, align:'center'},
                    {name:'closed',index:'closed', width:75,editable:false,sortable:false, align:'center'}
                ],
                jsonReader : {
                 repeatitems:true
                },
                loadonce: false,
                scrollOffset:1,
                rowNum:10,
                rowList:[10,15,20],
                pager :'#pager',
                sortname: 'beginingDate',
                sortorder: "asc",
                sortableRows:true,
                altRows:true,
                caption: "Fiscal Year",
                viewrecords: true,
                	loadComplete : function() {
						var table = this;
						setTimeout(function()
						{
							updatePagerIcons(table);
						}, 0);
					}

            }).navGrid('#pager',{
            	        edit: false,
						del: false,
						search: false,
						searchicon : 'icon-search orange',
						refresh: true,
						refreshicon : 'icon-refresh green',
						gridview: true,
						autoencode: true
            });

            $("#grid").navGrid("#pager").navButtonAdd("#pager",
            {caption:'', buttonicon:"icon-pencil blue", onClickButton:function(){editFiscalYear();}, title:"Edit", cursor: "pointer"}
            ).navButtonAdd('#pager',
            {caption:"",buttonicon:"icon-trash red",onClickButton: function(){deleteFiscalYear();},position:"last"}
            ).navSeparatorAdd("#pager",{sepclass : 'ui-separator'});

      $('#fiscalYearForm').submit(function (e) {
            onSubmitFiscalYear();
            return false;
        });

    clearForm();
 });

        function editFiscalYear(){
            var gridEntity = $('#grid');
            var selRowId = gridEntity.jqGrid ('getGridParam', 'selrow');
            var fiscalYearId = gridEntity.jqGrid ('getCell', selRowId, 'id');
            $.ajax({
                url: "${createLink(controller: 'fiscalYear', action: 'edit')}?id=" + fiscalYearId,
                success: afterSuccessEditEvent,
                dataType:'json',
                type:'post'
            });
        }

        function afterSuccessEditEvent(data) {
            if(data.isError){

               $('span.fiscalYear-error-message').text(data.message).show();
               $('div#error-message-div').show();
            }

            var fiscalYearEntity = data.entity;
            if(fiscalYearEntity.closed==1)
               fiscalYearEntity.closed=1
            else
               fiscalYearEntity.closed=2
            var beginingDate=data.beginingDate;
            var endingDate=data.endingDate;
            $('#id').val(fiscalYearEntity.id);
            $('#version').val(data.version);
            $('#beginingDate').datepicker("update",beginingDate);
            $('#endingDate').datepicker("update",endingDate);
            $('#closed').prop("selectedIndex",fiscalYearEntity.closed);
            $('#submitFiscalYear').text("Update");
        }

         function deleteFiscalYear(){
            var gridEntity = $('#grid');
            var selRowId = gridEntity.jqGrid ('getGridParam', 'selrow');
            var fiscalYearId = gridEntity.jqGrid ('getCell', selRowId, 'id');
            var beginingDate = gridEntity.jqGrid ('getCell', selRowId, 'beginingDate');
            var endingDate = gridEntity.jqGrid ('getCell', selRowId, 'endingDate');
            var strURL = "${createLink(controller: 'fiscalYear', action: 'delete')}";
            strURL = strURL + "?fiscalYearId=" + fiscalYearId;
            if( selRowId != null ) $("#grid").jqGrid('delGridRow',selRowId,
                {url:strURL,reloadAfterSubmit:true, width:350, top:500, left:350, beforeShowForm:function ($form) {
                $("td.delmsg", $form[0]).html("Do you really want to delete the fiscalYear for \n  date <b>" + beginingDate + "</b> to  <b>" + endingDate + "</b>?");
                }});
            else alert("Please select fiscal year to delete!");
            }

        function afterDeleteSuccess(data){
            if(data.isSuccess){
                $("#grid").setGridParam({datatype:'json', page:1}).trigger('reloadGrid');
                $('span.fiscalYear-success-message').html(data.message).show();
                $('div#success-message-div').show().delay(2000).fadeOut();
            }else{
                $('span.fiscalYear-error-message').html("Failed to delete").show();
                $('div#error-message-div').show().delay(2000).fadeOut();
            }
        return false;
        }

        function updatePagerIcons(table) {
            var replacement =
            {
                'ui-icon-seek-first' : 'icon-double-angle-left bigger-140',
                'ui-icon-seek-prev' : 'icon-angle-left bigger-140',
                'ui-icon-seek-next' : 'icon-angle-right bigger-140',
                'ui-icon-seek-end' : 'icon-double-angle-right bigger-140'
            };
            $('.ui-pg-table:not(.navtable) > tbody > tr > .ui-pg-button > .ui-icon').each(function(){
                var icon = $(this);
                var $class = $.trim(icon.attr('class').replace('ui-icon', ''));

                if($class in replacement) icon.attr('class', 'ui-icon '+replacement[$class]);
            })
        }

        function clearForm(){
            $("#id").val('');
            $("#version").val('');
            $("input[type=text],input[type=number],input[type=date], textarea").val('');
            $("select#closed").prop("selectedIndex",0);
            $('#submitFiscalYear').text("Create");
        }

        function onSubmitFiscalYear(){
            var actionUrl = "${createLink(controller: 'fiscalYear', action: 'save')}";
            var id = $("#id").val();
            if(id >0){
              actionUrl =  "${createLink(controller: 'fiscalYear', action: 'update')}";
            }
            $.ajax({
            url:actionUrl,
            dataType:'json',
            type:'post',
            data:jQuery("#fiscalYearForm").serialize(),
            success:function (data, textStatus) {
                    if(data.isError){
                      $('span.fiscalYear-error-message').html(data.message).show();
                      $('div#error-message-div').show();
                     } else {
                      $("#grid").jqGrid('setGridParam',{ datatype: 'json' }).trigger('reloadGrid');
                      $('span.fiscalYear-error-message').text('').hide();
                      $('div#error-message-div').hide();
                       clearForm();
                    }
            }
        });
    }

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
                <div class="alert alert-danger" id="error-message-div" style="display: none">
                    <a class="close" onclick="$('div#error-message-div').hide();">×</a>
                    <span class="fiscalYear-error-message">&nbsp;</span>
                </div>

                <div class="alert alert-success" id="success-message-div" style="display: none">
                    <a class="close" onclick="$('div#success-message-div').hide();">×</a>
                    <span class="fiscalYear-success-message">&nbsp;</span>
                </div>

                <form class="form-horizontal" name="fiscalYearForm" id="fiscalYearForm">
                    <g:hiddenField name="id" value=""/>
                    <g:hiddenField name="version" value=""/>

                    <div class="form-group">
                        <label class="control-label col-md-3 no-padding-right"
                               for="beginingDate">Begin Date</label>

                        <div class="col-md-4 col-sm-4">
                            <div class="clearfix">
                                <div class="input-group input-group-sm">
                                    <input type="date" required=""
                                    %{--oninvalid="this.setCustomValidity('${message(code: 'fiscalYear.addFiscalYear.begin',default: 'Please Enter Begin Date')}')"--}%
                                    %{--oninput="setCustomValidity('')"--}%
                                    %{--title="${message(code: 'fiscalYear.addFiscalYear.begin', default: 'Please Enter Begin Date')}"--}%
                                           id="beginingDate" name="beginingDate" value="" class="form-control"/>
                                    <span class="input-group-addon">
                                        <i class="icon-calendar"></i>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="form-group">
                        <label class="control-label col-xs-12 col-sm-3 no-padding-right"
                               for="endingDate">Ending Date</label>

                        <div class="col-md-4 col-sm-4">
                            <div class="clearfix">
                                <div class="input-group input-group-sm">
                                    <input type="date" required=""
                                    %{--oninvalid="this.setCustomValidity('${message(code: 'fiscalYear.addFiscalYear.end',default: 'Please Enter Ending Date')}')"--}%
                                    %{--oninput="setCustomValidity('')"--}%
                                    %{--title="${message(code: 'fiscalYear.addFiscalYear.end', default: 'Please Enter Ending Date')}"--}%
                                           id="endingDate" name="endingDate" value="" class="form-control"/>
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

                    <div class="buttons">
                        <button type="submit" class="btn btn-sm btn-success" id="submitFiscalYear"
                                name="Create">Create</button>
                        <button type="button" class="btn btn-light btn-white" id="reset" onclick="clearForm();"
                                name="reset">Reset</button>
                    </div>

                </form>
                <hr>

                <div class="row">
                    <table id="grid"></table>

                    <div id="pager"></div>
                </div>

            </div>
        </div>
    </div>
</div><!-- /span -->

</body>
</html>