<%--
  Created by IntelliJ IDEA.
  User: Mohammed Imran
  Date: 3/6/14
  Time: 2:18 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta name="layout" content="oros">
<title></title>
<style>
.ui-jqgrid .ui-search-table {
    height: 18px;
}

.ui-jqgrid .ui-search-table .ui-search-oper {
    height: 18px;
}

.ui-jqgrid .ui-jqgrid-htable .ui-search-toolbar th {
    height: 45px;
}

.ui-jqgrid .ui-jqgrid-view input,
.ui-jqgrid .ui-jqgrid-view select,
.ui-jqgrid .ui-jqgrid-view textarea,
.ui-jqgrid .ui-jqgrid-view button {
    font-size: 15px;
}

</style>
<r:script>
        $(document).ready(function(){

            $( "#datepicker" ).datepicker({
                showOtherMonths: true,
                selectOtherMonths: false
            });
            $(".chosen-select").chosen();

            $("#name").focusout(function(){

                    var name=$(this).val();
                        $.ajax({
                            url:"${createLink(controller: 'currency', action: 'checkCurrencyName')}",
                            type:'post',
                            dataType:'json',
                            data:{currencyName:name},
                            success:function(data){
                               var currencyName=data.isExist
                               if(currencyName==1){
                                  $("span#currencyName").show();
                                  $("input#name").next().html(""+data.message+"");
                               }else{
                                 $("span#currencyName").hide();
                               }
                            }
                        })
            });

            $("#symbol").focusout(function(){

                    var symbol=$(this).val();
                        $.ajax({
                            url:"${createLink(controller: 'currency', action: 'checkCurrencySymbol')}",
                            type:'post',
                            dataType:'json',
                            data:{currencySymbol:symbol},
                            success:function(data){
                               var currencySymbol=data.isExist
                               if(currencySymbol==1){
                                  $("span#currencySymbol").show();
                                  $("input#symbol").next().html(""+data.message+"");
                               }else{
                                 $("span#currencySymbol").hide();
                               }
                            }
                        })
            });


        });

</r:script>
<r:script>
        jQuery(document).ready(function(){

            jQuery("#grid").jqGrid({
                url:'${createLink(controller: 'currency', action: 'list')}',
                datatype: "json",
                mtype: 'GET',
                height:326,
                width: 750,
                colNames:['ID','Name', 'Abbreviation', 'Country','Symbol','Hundred Name'],
                colModel:[
//                    {name: "Sl No.",index:'serial', width:50, sortable:false, editable:false, align:'center'},
                    {name:'id',index:'id', width:50, sortable:false, editable:false, hidden:true},
                    {name:'name',index:'name', width:100, sortable:false, editable:false},
                    {name:'abbreviation',index:'abbreviation', width:145, sortable:false, editable:false},
                    {name:'country',index:'country', width:65,editable:false,sortable:false, align:'center'},
                    {name:'symbol',index:'symbol', width:65,editable:false,sortable:false, align:'center'},
                    {name:'hundredName',index:'hundredName', width:75,editable:false,sortable:false,align:'center'}
                ],
                jsonReader : {
                 repeatitems:true
                },
               loadonce: false,
                gridview: true,
                rownumbers:true,
                rownumWidth:35,
                scrollOffset:1,
                rowNum:10,
                rowList:[10,15,20],
                pager :'#pager',
                sortname: 'name',
                sortorder: "asc",
                sortableRows:true,
                altRows:true,
                caption: "All Currency",
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
            {caption:'', buttonicon:"icon-pencil blue", onClickButton:function(){editCurrency();}, title:"Edit", cursor: "pointer"}
            ).navButtonAdd('#pager',
            {caption:"",buttonicon:"icon-trash red",onClickButton: function(){deleteCurrency();},position:"last"}
            ).navSeparatorAdd("#pager",{sepclass : 'ui-separator'});


         $('#currencyForm').submit(function (e) {

            updateCurrency();
            return false;
            });

            $('#grid').jqGrid('filterToolbar',{ searchOnEnter: true,enableClear: false});
            clearForm();
        });

        function editCurrency(){
            var gridEntity = $('#grid');
            var selRowId = gridEntity.jqGrid ('getGridParam', 'selrow');
            var currencyId = gridEntity.jqGrid ('getCell', selRowId, 'ID');
            $.ajax({
                url: "${createLink(controller: 'currency', action: 'edit')}?id=" + currencyId,
                success: afterSuccessEditEvent,
                dataType:'json',
                type:'post'
            });
        }

        function afterSuccessEditEvent(data) {
                if(data.isError){
                   $('span.currency-error-message').text(data.message).show();
                   $('div#error-message-div').show();
                }

                var currencyEntity = data.entity;
                    $('#id').val(currencyEntity.id);
                    $('#version').val(data.version);
                    $('#name').val(currencyEntity.name);
                    $('#abbreviation').val(currencyEntity.abbreviation);
                    $('#symbol').val(currencyEntity.symbol);
                var cId = currencyEntity.country.id;
                      $("select#countryId").show();
                      $("select#countryId").prop("selectedIndex",cId);
                      $('#hundredName').val(currencyEntity.hundredName);
                      $("#currencyForm").removeAttr('action');
                      $("#currencyForm").removeAttr('method');
                      $('#submitCurrency').text("Update");
             }


        function deleteCurrency(){
                var gridEntity = $('#grid');
                var selRowId = gridEntity.jqGrid ('getGridParam', 'selrow');
                var currencyId = gridEntity.jqGrid ('getCell', selRowId, 'ID');
                var currencyName = gridEntity.jqGrid ('getCell', selRowId, 'Name');
                var strURL = "${createLink(controller: 'currency', action: 'delete')}";
                strURL = strURL + "?currencyId=" + currencyId;

                if( selRowId != null ) $("#grid").jqGrid('delGridRow',selRowId,
                    {url:strURL,reloadAfterSubmit:true, width:350, top:500, left:350, beforeShowForm:function ($form) {
                    $("td.delmsg", $form[0]).html("Do you really want to delete the <b>" + currencyName + "</b>?");
                    }});
                else alert("Please select currency to delete!");
                }

        function afterDeleteSuccess(data){
            if(data.isSuccess){
                 $("#grid").setGridParam({datatype:'json', page:1}).trigger('reloadGrid');
                    $('span.currency-success-message').html(data.message).show();
                    $('div#success-message-div').show().delay(2000).fadeOut();
            }else{
              $('span.currency-error-message').html("Failed to delete").show();
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
            $("input[type=text],input[type=number], textarea").val('');
            $("select#countryId").prop("selectedIndex",0);
            $('#submitCurrency').text("Create");
            $("select#countryId").show();
        }

        function updateCurrency(){
            var actionUrl = "${createLink(controller: 'currency', action: 'save')}";
                var id = $("#id").val();
                if(id >0){
                  actionUrl =  "${createLink(controller: 'currency', action: 'update')}";
                }
                $.ajax({
                url: actionUrl,
                dataType:'json',
                type:'post',
                data:jQuery("#currencyForm").serialize(),
                success:function (data, textStatus) {
                        if(data.isError){
                          $('span.currency-error-message').html(data.message).show();
                          $('div#error-message-div').show();
                         }
                         else {
                          $("#grid").jqGrid('setGridParam',{ datatype: 'json' }).trigger('reloadGrid');
                          $('span.currency-error-message').text('').hide();
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
            <h4 class="smaller">Currency</h4>
        </div>

        <div class="widget-body">
            <div class="widget-main">
                <div class="alert alert-danger" id="error-message-div" style="display: none">
                    <a class="close" onclick="$('div#error-message-div').hide();">×</a>
                    <span class="currency-error-message">&nbsp;</span>
                </div>

                <div class="alert alert-success" id="success-message-div" style="display: none">
                    <a class="close" onclick="$('div#success-message-div').hide();">×</a>
                    <span class="currency-success-message">&nbsp;</span>
                </div>

                <form class="form-horizontal" method="post" name="currencyForm" id="currencyForm">
                    <g:hiddenField name="id" value=""/>
                    <g:hiddenField name="version" value=""/>

                    <div class="form-group">
                        <label class="control-label col-md-3 no-padding-right"
                               for="name">Currency Name</label>

                        <div class="col-md-4 col-sm-4">
                            <div class="clearfix">
                                <input type="text" required=""
                                       oninvalid="this.setCustomValidity('${message(code: 'currency.addCurrency.name',default: 'Please Enter Currency Name')}')"
                                       oninput="setCustomValidity('')"
                                       title="${message(code: 'currency.addCurrency.name', default: 'Please Enter Currency Name')}"
                                       id="name" name="name" value="" class="form-control"
                                       placeholder="Currency Name"><span class="red" id="currencyName"></span>
                            </div>
                        </div>
                    </div>


                    <div class="form-group">
                        <label class="control-label col-xs-12 col-sm-3 no-padding-right"
                               for="abbreviation">Currency Abbreviation</label>

                        <div class="col-md-4 col-sm-4">
                            <div class="clearfix">
                                <input type="text" required=""
                                       oninvalid="this.setCustomValidity('${message(code: 'currency.addCurrency.abbreviation',default: 'Please Enter Currency Abbreviation')}')"
                                       oninput="setCustomValidity('')"
                                       title="${message(code: 'currency.addCurrency.abbreviation', default: 'Please Enter Currency Abbreviation')}"
                                       id="abbreviation" name="abbreviation" value=""
                                       class="form-control"
                                       placeholder="Currency Abbreviation">
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-xs-12 col-sm-3 no-padding-right"
                               for="symbol">Currency Symbol</label>

                        <div class="col-md-4 col-sm-4">
                            <div class="clearfix">
                                <input type="text" required=""
                                       oninvalid="this.setCustomValidity('${message(code: 'currency.addCurrency.symbol',default: 'Please Enter Currency Symbol')}')"
                                       oninput="setCustomValidity('')"
                                       title="${message(code: 'currency.addCurrency.symbol', default: 'Please Enter Currency Symbol')}"
                                       id="symbol" name="symbol" value="" class="form-control"
                                       placeholder="Currency Symbol"> <span class="red" id="currencySymbol"></span>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-xs-12 col-sm-3 no-padding-right"
                               for="countryId">Country</label>

                        <div class="col-md-4 col-sm-4">
                            <div class="clearfix">

                                %{--For auto cpmplete use class="width-90 chosen-select form-control"--}%

                                <select required="" class="form-control "
                                        oninvalid="this.setCustomValidity('${message(code: 'currency.addCurrency.country',default: 'Please Select Country Name')}')"
                                        oninput="setCustomValidity('')"
                                        title="${message(code: 'currency.addCurrency.country', default: 'Please Select Country Name')}"
                                        name="countryId" id="countryId">

                                    <option value="">Select Country</option>
                                    <g:each in="${countryList}" var="country">
                                        <option value="${country.id}">${country.name}</option>
                                    </g:each>
                                </select>

                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-xs-12 col-sm-3 no-padding-right"
                               for="hundredName">Hundred Name</label>

                        <div class="col-md-4 col-sm-4">
                            <div class="clearfix">
                                <input type="text" required=""
                                       oninvalid="this.setCustomValidity('${message(code: 'currency.addCurrency.hundredName',default: 'Please Enter Currency Hundred Name')}')"
                                       oninput="setCustomValidity('')"
                                       title="${message(code: 'currency.addCurrency.hundredName', default: 'Please Enter Currency Hundred Name')}"
                                       id="hundredName" name="hundredName" value=""
                                       class="form-control"
                                       placeholder="Currency Hundred Name">
                            </div>
                        </div>
                    </div>

                    <div class="buttons">
                        <button type="submit" class="btn btn-sm btn-success" id="submitCurrency"
                                name="Create">Create</button>
                        <button type="button" class="btn btn-light btn-white" id="reset" onclick="clearForm();"
                                name="reset">Reset</button>
                    </div>
                    %{--<div class="col-md-offset-1">--}%
                    %{--<input type="submit" class="btn btn-danger" id="submit" value="Add Currency"/>--}%
                    %{--</div>--}%

                </form>
                <hr/>

                <div class="row">
                    <table id="grid"></table>

                    <div id="pager"></div>
                </div>

            </div>
        </div>
    </div>
</div><!-- /span -->

%{--<div class="col-sm-4">--}%
%{--<div class="widget-box">--}%
%{--<div class="widget-header">--}%
%{--<h4>Custom File Input</h4>--}%

%{--<span class="widget-toolbar">--}%
%{--<a href="#" data-action="collapse">--}%
%{--<i class="icon-chevron-up"></i>--}%
%{--</a>--}%

%{--<a href="#" data-action="close">--}%
%{--<i class="icon-remove"></i>--}%
%{--</a>--}%
%{--</span>--}%
%{--</div>--}%
%{--</div>--}%

%{--<div class="widget-body">--}%
%{--<div class="widget-main">--}%
%{--<input type="file" id="id-input-file-2" />--}%
%{--<input multiple="" type="file" id="id-input-file-3" />--}%
%{--<label>--}%
%{--<input type="checkbox" name="file-format" id="id-file-format" class="ace" />--}%
%{--<span class="lbl"> Allow only images</span>--}%
%{--</label>--}%
%{--</div>--}%
%{--</div>--}%
%{--</div>--}%

</body>
</html>