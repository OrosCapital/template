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

        $(document).ready(function () {

            $("#date").datepicker({
                showOtherMonths: true,
                selectOtherMonths: false
            });

            $(".chosen-select").chosen();
        });

    </r:script>
    <r:script>
        jQuery(document).ready(function(){

            jQuery("#grid").jqGrid({
                url:'${createLink(controller: 'exchangeRate', action: 'list')}',
                datatype: "json",
                mtype: 'GET',
                height:326,
                width: 750,
                colModel:[
                    {name: "Sl No.",index:'serial', width:50, sortable:false, editable:false, align:'center'},
                    {name:'ID',index:'id', width:50, sortable:false, editable:false, hidden:true},
                    {name:'Currency',index:'currency', width:150, sortable:false, editable:false},
                    {name:'Buy Price',index:'buyPrice', width:50, sortable:false, editable:false},
                    {name:'Sell Price',index:'sellPrice', width:75,editable:false,sortable:false, align:'center'},
                    {name:'Date',index:'date', width:100,editable:false,sortable:false, align:'center'}

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
                sortname: 'currency',
                sortorder: "asc",
                sortableRows:true,
                altRows:true,
                caption: "Exchange Rate",
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
            {caption:'', buttonicon:"icon-pencil blue", onClickButton:function(){editExchangeRate();}, title:"Edit", cursor: "pointer"}
            ).navButtonAdd('#pager',
            {caption:"",buttonicon:"icon-trash red",onClickButton: function(){deleteExchangeRate();},position:"last"}
            ).navSeparatorAdd("#pager",{sepclass : 'ui-separator'});

            $('#exchangeRateForm').submit(function (e) {
                updateExchangeRate();
                return false;
            });
             $('#grid').jqGrid('filterToolbar',{ searchOnEnter: true,enableClear: false});
            clearForm();
        });

        function editExchangeRate(){
            var gridEntity = $('#grid');
            var selRowId = gridEntity.jqGrid ('getGridParam', 'selrow');
            var exchangeRateId = gridEntity.jqGrid ('getCell', selRowId, 'ID');
            $.ajax({
                url: "${createLink(controller: 'exchangeRate', action: 'edit')}?id=" + exchangeRateId,
                success: afterSuccessEditEvent,
                dataType:'json',
                type:'post'
            });
        }

        function afterSuccessEditEvent(data) {
            if(data.isError){
               $('span.exchangeRate-error-message').text(data.message).show();
               $('div#error-message-div').show();
            }
            var exchangeRateEntity = data.entity;
            var exchangeRateDate=data.date
            var currencyId = exchangeRateEntity.currency.id;
            $('#id').val(exchangeRateEntity.id);
            $('#version').val(data.version);
            $('#buyPrice').val(exchangeRateEntity.buyPrice);
            $('#sellPrice').val(exchangeRateEntity.sellPrice);
            $('#date').datepicker('update',exchangeRateDate);
            $("select#currencyId").prop("selectedIndex",currencyId);
            $('#submitExchangeRate').text("Update");
        }

        function deleteCountry(){
        var gridEntity = $('#grid');
        var selRowId = gridEntity.jqGrid ('getGridParam', 'selrow');
        var countryId = gridEntity.jqGrid ('getCell', selRowId, 'ID');
        var countryName = gridEntity.jqGrid ('getCell', selRowId, 'Country Name');
        var strURL = "${createLink(controller: 'country', action: 'delete')}";
            strURL = strURL + "?countryId=" + countryId;
        if( selRowId != null ) $("#grid").jqGrid('delGridRow',selRowId,
            {url:strURL,reloadAfterSubmit:true, width:350, top:500, left:350, beforeShowForm:function ($form) {
            $("td.delmsg", $form[0]).html("Do you really want to delete the <b>" + countryName + "</b>?");
            }});
        else alert("Please select country to delete!");
        }

       function deleteExchangeRate(){
            var gridEntity = $('#grid');
            var selRowId = gridEntity.jqGrid ('getGridParam', 'selrow');
            var exchangeRateId = gridEntity.jqGrid ('getCell', selRowId, 'ID');
            var currencyName = gridEntity.jqGrid ('getCell', selRowId, 'Currency');
            var strURL = "${createLink(controller: 'exchangeRate', action: 'delete')}";
            strURL = strURL + "?exchangeRateId=" + exchangeRateId;
        if( selRowId != null ) $("#grid").jqGrid('delGridRow',selRowId,
            {url:strURL,reloadAfterSubmit:true, width:350, top:500, left:350, beforeShowForm:function ($form) {
            $("td.delmsg", $form[0]).html("Do you really want to delete \n the exchange rate for currency <b>" + currencyName + "</b>?");
            }});
        else alert("Please select country to delete!");
        }

        function afterDeleteSuccess(data){
            if(data.isSuccess){
                $("#grid").setGridParam({datatype:'json', page:1}).trigger('reloadGrid');
                $('span.exchangeRate-success-message').html(data.message).show();
                $('div#success-message-div').show().delay(2000).fadeOut();
            }else{
                $('span.exchangeRate-error-message').html("Failed to delete").show();
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
            $("select#currencyId").prop("selectedIndex",0);
            $('#submitExchangeRate').text("Create");
        }

        function updateExchangeRate(){
            var actionUrl = "${createLink(controller: 'exchangeRate', action: 'save')}";
            var id = $("#id").val();
            if(id >0){
              actionUrl =  "${createLink(controller: 'exchangeRate', action: 'update')}";
            }
            $.ajax({
            url: actionUrl,
            dataType:'json',
            type:'post',
            data:jQuery("#exchangeRateForm").serialize(),
            success:function (data, textStatus) {
                    if(data.isError){
                      $('span.exchangeRate-error-message').html(data.message).show();
                      $('div#error-message-div').show();
                     } else {
                      $("#grid").jqGrid('setGridParam',{ datatype: 'json' }).trigger('reloadGrid');
                      $('span.exchangeRate-error-message').text('').hide();
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
            <h4 class="smaller">Exchange Rate</h4>
        </div>

        <div class="widget-body">
            <div class="widget-main">
                <div class="alert alert-danger" id="error-message-div" style="display: none">
                    <a class="close" onclick="$('div#error-message-div').hide();">×</a>
                    <span class="exchangeRate-error-message">&nbsp;</span>
                </div>

                <div class="alert alert-success" id="success-message-div" style="display: none">
                    <a class="close" onclick="$('div#success-message-div').hide();">×</a>
                    <span class="exchangeRate-success-message">&nbsp;</span>
                </div>

                <form class="form-horizontal" name="exchangeRateForm"
                      id="exchangeRateForm" method="post"><!-- -->

                <g:hiddenField name="id" value=""/>
                <g:hiddenField name="version" value=""/>

                    <div class="form-group">
                        <label class="control-label col-md-3 no-padding-right"
                               for="currencyId">Currency</label>

                        <div class="col-md-4 col-sm-4">
                            <div class="clearfix">

                                <select required="" class=" form-control"
                                        oninvalid="this.setCustomValidity('${message(code: 'exchangeRate.addExchangeRate.currencyId',default: 'Please Select A Currency')}')"
                                        oninput="setCustomValidity('')"
                                        title="${message(code: 'exchangeRate.addExchangeRate.currencyId', default: 'Please Select A Currency')}"
                                        name="currencyId" id="currencyId">
                                    <option value="">Chose Currency</option>
                                    <g:each in="${currencyList}" var="currency">
                                        <option value="${currency.id}">${currency.name}</option>
                                    </g:each>
                                </select>
                            </div>
                        </div>
                    </div>


                    <div class="form-group" >
                        <label class="control-label col-xs-12 col-sm-3 no-padding-right"
                               for="buyPrice">Buy Price</label>

                        <div class="col-md-4 col-sm-4">
                            <div class="clearfix">
                                <input type="text" required=""
                                       oninvalid="this.setCustomValidity('${message(code: 'exchangeRate.addExchangeRate.buyPrice',default: 'Please Enter Currency Buy Price')}')"
                                       oninput="setCustomValidity('')"
                                       title="${message(code: 'exchangeRate.addExchangeRate.buyPrice', default: 'Please Enter Currency Buy Price')}"
                                       id="buyPrice" name="buyPrice" value="${exchangeRtData?.buyPrice}" class="form-control"
                                       placeholder="Currency Buy Price">
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-xs-12 col-sm-3 no-padding-right"
                               for="sellPrice">Sell Price</label>

                        <div class="col-md-4 col-sm-4">
                            <div class="clearfix">
                                <input type="text" required=""
                                       oninvalid="this.setCustomValidity('${message(code: 'exchangeRate.addExchangeRate.sellPrice',default: 'Please Enter Currency Sell Price')}')"
                                       oninput="setCustomValidity('')"
                                       title="${message(code: 'exchangeRate.addExchangeRate.sellPrice', default: 'Please Enter Currency Sell Price')}"
                                       id="sellPrice" name="sellPrice" value="${exchangeRtData?.sellPrice}" class="form-control"
                                       placeholder="Currency Sell Price">
                            </div>
                        </div>
                    </div>


                    <div class="form-group" id="dpStartDate">
                        <label class="control-label col-md-3 no-padding-right"
                               for="date">Date</label>

                        <div class="col-md-4 col-sm-4">
                            <div class="clearfix">
                                <div class="input-group input-group-sm">
                                    <input type="date" required=""
                                    %{--oninvalid="this.setCustomValidity('${message(code: 'exchangeRate.addExchangeRate.date',default: 'Please Enter Date')}')"--}%
                                    %{--oninput="setCustomValidity('')"--}%
                                    %{--title="${message(code: 'exchangeRate.addExchangeRate.date', default: 'Please Enter Date')}"--}%
                                           id="date" name="date" value="${exchangeRtData?.date}"  class="form-control"/>
                                    <span class="input-group-addon">
                                        <i class="icon-calendar"></i>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="buttons">
                        <button type="submit" class="btn btn-sm btn-success" id="submitExchangeRate"
                                name="Create">Create</button>
                        <button type="button" class="btn btn-light btn-white" id="reset" onclick="clearForm();"
                                name="reset">Reset</button>
                    </div>

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

</body>
</html>