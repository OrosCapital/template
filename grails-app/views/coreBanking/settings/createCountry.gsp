<%@ page contentType="text/html;charset=UTF-8" %>
<html xmlns="http://www.w3.org/1999/html">
<head>
    <meta name="layout" content="oros">
    <title></title>
    <r:script>
        jQuery(document).ready(function(){
            jQuery("#grid").jqGrid({
                url:'${createLink(controller: 'country', action: 'list')}',
                datatype: "json",
                mtype: 'GET',
                height:326,
                width: 750,
                colModel:[
                    {name: "Sl No.",index:'serial', width:50, sortable:false, editable:false, align:'center'},
                    {name:'ID',index:'id', width:50, sortable:false, editable:false, hidden:true},
                    {name:'Country Name',index:'name', width:175, sortable:false, editable:false},
                    {name:'Code',index:'', width:75,editable:false,sortable:false, align:'center'},
                    {name:'ISO-2',index:'', width:75,editable:false,sortable:false, align:'center'},
                    {name:'ISO-3',index:'', width:75,editable:false,sortable:false,align:'center'},
                    {name:'Printable Name',index:'', width:175,editable:false,sortable:false}
                ],
                jsonReader : {
                 repeatitems:true
                },
                loadonce: false,
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
						gridview: true,
						autoencode: true
            });

            $("#grid").navGrid("#pager").navButtonAdd("#pager",
            {caption:'', buttonicon:"icon-pencil blue", onClickButton:function(){editCountry();}, title:"Edit", cursor: "pointer"}
            ).navButtonAdd('#pager',
            {caption:"",buttonicon:"icon-trash red",onClickButton: function(){deleteCountry();},position:"last"}
            ).navSeparatorAdd("#pager",{sepclass : 'ui-separator'});

      $('#countryForm').submit(function (e) {
            updateCountry();
            return false;
        });
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

    function deleteCountry(){
        alert("Click Delete");
        var gridEntity = $('#grid');
        var selRowId = gridEntity.jqGrid ('getGridParam', 'selrow');
        var countryId = gridEntity.jqGrid ('getCell', selRowId, 'ID');
        var countryName = gridEntity.jqGrid ('getCell', selRowId, 'Country Name');
        $("#countryId").val(countryId);
        $("#countryName").text(countryName);
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
            $("input[type=text],input[type=number], textarea").val('');
            $('#submitCountry').text("Create");
            var createUrl = "${createLink(controller: 'country', action: 'create')}";
            $("#countryForm").attr('action', createUrl);
        }

        function updateCountry(){
            $.ajax({
            url: "${createLink(controller: 'country', action: 'update')}",
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
                <g:form class="form-horizontal" method="post" name="countryForm" id="countryForm"
                        action="${createLink(controller: 'country', action: 'save')}">

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

                </g:form>
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