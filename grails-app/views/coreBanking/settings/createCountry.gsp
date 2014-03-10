
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="oros">
    %{--<script src="${resource(dir: 'js/resource', file: 'jquery-1.10.2.min.js')}"></script>--}%

    <title></title>
    <r:script>
        jQuery(document).ready(function(){
            jQuery("#grid").jqGrid({
                url:'${createLink(controller: 'country', action: 'list')}',
                datatype: "json",
                mtype: 'GET',
                height: 'auto',
                autowidth: 750,
                scrollerbar:false,
                colNames:['Country Name', 'Printable Name', 'ISO2' ,'ISO3','NumCode'],
                colModel:[
                    {name:'name',index:'', width:200, sortable:true, editable:false, fixed:true},
                    {name:'printablename',index:'', width:200,editable:false,sortable:false},
                    {name:'iso2',index:'', width:80,editable:false,sortable:false},
                    {name:'iso3',index:'', width:80,editable:false,sortable:false},
                    {name:'numcode',index:'', width:80,editable:false,sortable:false}
                ],
                jsonReader : {
                    repeatitems:false
                },
                loadonce: true,
                align: 'center',
                rowNum:5,
                rowList:[5,10,15],
                pager :'#pager',
                sortname: 'name',
                sortorder: "desc",
                sortableRows:true,
                caption: "List of Country",
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

        });

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
                <form class="form-horizontal" action="${createLink(controller: 'country',action: 'save')}">


                    <div class="form-group">
                        <label class="control-label col-md-3 no-padding-right"
                               for="name">Country Name</label>

                        <div class="col-md-4 col-sm-4">
                            <div class="clearfix">
                                <input type="text"  required=""
                                       oninvalid="this.setCustomValidity('${message(code: 'country.addCountry.name',default: 'Please Enter Country Name')}')"
                                       oninput="setCustomValidity('')" title="${message(code: 'country.addCountry.name', default: 'Please Enter Country Name')}"
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
                                <input type="text"  required=""
                                       oninvalid="this.setCustomValidity('${message(code: 'country.addCountry.printablename',default: 'Please Enter Printable Name')}')"
                                       oninput="setCustomValidity('')" title="${message(code: 'country.addCountry.printablename', default: 'Please Enter Printable Name')}"
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
                                <input type="text"  required=""
                                       oninvalid="this.setCustomValidity('${message(code: 'country.addCountry.iso2',default: 'Please Enter ISO2 Name')}')"
                                       oninput="setCustomValidity('')" title="${message(code: 'country.addCountry.iso2', default: 'Please Enter ISO2 Name')}"
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
                                <input type="text"  required=""
                                       oninvalid="this.setCustomValidity('${message(code: 'country.addCountry.iso3',default: 'Please Enter ISO3 Name')}')"
                                       oninput="setCustomValidity('')" title="${message(code: 'country.addCountry.iso3', default: 'Please Enter ISO3 Name')}"
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
                                <input type="number"  required=""
                                       oninvalid="this.setCustomValidity('${message(code: 'country.addCountry.numcode',default: 'Please Enter NumCode')}')"
                                       oninput="setCustomValidity('')" title="${message(code: 'country.addCountry.numcode', default: 'Please Enter NumCode')}"
                                       id="numcode" name="numcode" class="form-control"
                                       placeholder="NumCode">
                            </div>
                        </div>
                    </div>

                    <div class="col-md-offset-1">
                        <input type="submit" class="btn btn-danger" id="submit" value="Add Country"/>
                    </div>
                </form>
                <hr/>

                <div>
                    <div class="row ">
                        <table id="grid" ></table>
                        <table id="pager" ></table>
                    </div>
                </div>
            </div>


        </div>
    </div>


</div><!-- /span -->



</body>
</html>