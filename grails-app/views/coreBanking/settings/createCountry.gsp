<%@ page contentType="text/html;charset=UTF-8" %>
<html xmlns="http://www.w3.org/1999/html">
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
        jQuery(document).ready(function(){
            jQuery("#grid").jqGrid({
                url:'${createLink(controller: 'country', action: 'list')}',
                datatype: "json",
                mtype: 'GET',
                height: 326,
                width: 750,
                colModel:[
                    {name:'ID',index:'id', width:50, sortable:false, editable:false, hidden:true},
                    {name:'Country Name',index:'name', width:175, sortable:false, editable:false},
                    {name:'Code',index:'numcode', width:75,editable:false,sortable:false, align:'center'},
                    {name:'ISO-2',index:'iso2', width:75,editable:false,sortable:false, align:'center'},
                    {name:'ISO-3',index:'iso3', width:75,editable:false,sortable:false,align:'center'},
                    {name:'Printable Name',index:'printablename', width:175,editable:false,sortable:false}
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
                caption: "All Countries",
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
						autoencode: true
            });

            $("#grid").navGrid("#pager").navButtonAdd("#pager",
            {caption:'', buttonicon:"icon-pencil blue", onClickButton:function(){editCountry();}, title:"Edit", cursor: "pointer"}
            ).navButtonAdd('#pager',
            {caption:"",buttonicon:"icon-trash red",onClickButton: function(){deleteCountry();},position:"last"}
            ).navSeparatorAdd("#pager",{sepclass : 'ui-separator'});

      $('#countryForm').submit(function (e) {
            onSubmitCountry();
            return false;
        });

      $('#grid').jqGrid('filterToolbar',{ searchOnEnter: true,enableClear: false});
      clearForm();
 });

    function editCountry(){
        var gridEntity = $('#grid');
        var selRowId = gridEntity.jqGrid ('getGridParam', 'selrow');
        var countryId = gridEntity.jqGrid ('getCell', selRowId, 'ID');
        $.ajax({
            url: "${createLink(controller: 'country', action: 'edit')}?id=" + countryId,
            success: afterSuccessEditEvent,
            dataType:'json',
            type:'post'
        });
    }

    function afterSuccessEditEvent(data) {
        if(data.isError){
           $('span.country-error-message').text(data.message).show();
           $('div#error-message-div').show();
        }
        var countryEntity = data.entity;
        $('#id').val(countryEntity.id);
        $('#version').val(data.version);
        $('#name').val(countryEntity.name);
        $('#printablename').val(countryEntity.printablename);
        $('#iso2').val(countryEntity.iso2);
        $('#iso3').val(countryEntity.iso3);
        $('#numcode').val(countryEntity.numcode);

//        var updateUrl = "${createLink(controller: 'country', action: 'update')}";
         $("#countryForm").removeAttr('action');
         $("#countryForm").removeAttr('method');
        $('#submitCountry').text("Update");
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
            $("input[type=text],input[type=number], input[type=select], textarea").val('');
            $('#submitCountry').text("Create");
//            var createUrl = "${createLink(controller: 'country', action: 'save')}";
//            $("#countryForm").attr('action', createUrl);
        }

        function onSubmitCountry(){
            var actionUrl = "${createLink(controller: 'country', action: 'save')}";
            var id = $("#id").val();
            if(id >0){
              actionUrl =  "${createLink(controller: 'country', action: 'update')}";
            }
            $.ajax({
            url:actionUrl,
            dataType:'json',
            type:'post',
            data:jQuery("#countryForm").serialize(),
            success:function (data, textStatus) {
                    if(data.isError){
                      $('span.country-error-message').html(data.message).show();
                      $('div#error-message-div').show();
                     } else {
                      $("#grid").jqGrid('setGridParam',{ datatype: 'json' }).trigger('reloadGrid');
                      $('span.country-error-message').text('').hide();
                      $('div#error-message-div').hide();
                       clearForm();
                    }
            }
        });
    }

    function returnCountryId(){
        var gridEntity = $('#grid');
        var selRowId = gridEntity.jqGrid ('getGridParam', 'selrow');
        var countryId = gridEntity.jqGrid ('getCell', selRowId, 'ID');
        if(countryId)
        return countryId;
        else
        return null;
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

    function afterDeleteSuccess(data){
        if(data.isSuccess){
         $("#grid").setGridParam({datatype:'json', page:1}).trigger('reloadGrid');
            $('span.country-success-message').html(data.message).show();
            $('div#success-message-div').show().delay(2000).fadeOut();
        }else{
          $('span.country-error-message').html("Failed to delete").show();
          $('div#error-message-div').show().delay(2000).fadeOut();
        }
        return false;
    }
</r:script>
</head>

<body>
<div class="col-md-12">
    <div class="widget-box">
        <div class="widget-header">
            <h4 class="smaller">Country</h4>
        </div>

        <div class="widget-body">
            <div class="widget-main">
                <div class="alert alert-danger" id="error-message-div" style="display: none">
                    <a class="close" onclick="$('div#error-message-div').hide();">×</a>
                    <span class="country-error-message">&nbsp;</span>
                </div>

                <div class="alert alert-success" id="success-message-div" style="display: none">
                    <a class="close" onclick="$('div#success-message-div').hide();">×</a>
                    <span class="country-success-message">&nbsp;</span>
                </div>

                <form class="form-horizontal" method="post" name="countryForm" id="countryForm">

                    <g:hiddenField name="id" value=""/>
                    <g:hiddenField name="version" value=""/>

                    <div class="form-group">
                        <label class="control-label col-md-3 no-padding-right"
                               for="name">Country Name</label>

                        <div class="col-md-4 col-sm-4">
                            <div class="clearfix">
                                <input type="text" required=""
                                       oninvalid="this.setCustomValidity('${message(code: 'country.addCountry.name',default: 'Please Enter Country Name')}')"
                                       oninput="setCustomValidity('')"
                                       title="${message(code: 'country.addCountry.name', default: 'Please Enter Country Name')}"
                                       id="name" name="name" class="form-control"
                                       placeholder="Country Name">
                            </div>
                        </div>
                    </div>


                    <div class="form-group">
                        <label class="control-label col-xs-12 col-sm-3 no-padding-right"
                               for="printablename">Printable Name</label>

                        <div class="col-md-4 col-sm-4">
                            <div class="clearfix">
                                <input type="text" required=""
                                       oninvalid="this.setCustomValidity('${message(code: 'country.addCountry.printablename',default: 'Please Enter Printable Name')}')"
                                       oninput="setCustomValidity('')"
                                       title="${message(code: 'country.addCountry.printablename', default: 'Please Enter Printable Name')}"
                                       id="printablename" name="printablename" class="form-control"
                                       placeholder="Printable Name">
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-xs-12 col-sm-3 no-padding-right"
                               for="iso2">ISO2 Name</label>

                        <div class="col-md-4 col-sm-4">
                            <div class="clearfix">
                                <input type="text" required=""
                                       oninvalid="this.setCustomValidity('${message(code: 'country.addCountry.iso2',default: 'Please Enter ISO2 Name')}')"
                                       oninput="setCustomValidity('')"
                                       title="${message(code: 'country.addCountry.iso2', default: 'Please Enter ISO2 Name')}"
                                       id="iso2" name="iso2" class="form-control"
                                       placeholder="ISO2 Name">
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-xs-12 col-sm-3 no-padding-right"
                               for="iso3">ISO3 Name</label>

                        <div class="col-md-4 col-sm-4">
                            <div class="clearfix">
                                <input type="text" required=""
                                       oninvalid="this.setCustomValidity('${message(code: 'country.addCountry.iso3',default: 'Please Enter ISO3 Name')}')"
                                       oninput="setCustomValidity('')"
                                       title="${message(code: 'country.addCountry.iso3', default: 'Please Enter ISO3 Name')}"
                                       id="iso3" name="iso3" class="form-control"
                                       placeholder="ISO3 Name">
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-xs-12 col-sm-3 no-padding-right"
                               for="numcode">NumCode</label>

                        <div class="col-md-4 col-sm-4">
                            <div class="clearfix">
                                <input type="number" required=""
                                       oninvalid="this.setCustomValidity('${message(code: 'country.addCountry.numcode',default: 'Please Enter NumCode')}')"
                                       oninput="setCustomValidity('')"
                                       title="${message(code: 'country.addCountry.numcode', default: 'Please Enter NumCode')}"
                                       id="numcode" name="numcode" class="form-control"
                                       placeholder="NumCode">
                            </div>
                        </div>
                    </div>

                    <div class="buttons">
                        <button type="submit" class="btn btn-sm btn-success" id="submitCountry"
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
<div id="dialog" title="Delete Country">
    <span id="countryName"></span>
</div>
</body>

</html>