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
    <r:script>

        $(document).ready(function(){


            $( "#datepicker" ).datepicker({
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
                colModel:[
                    {name: "Sl No.",index:'serial', width:50, sortable:false, editable:false, align:'center'},
                    {name:'ID',index:'id', width:50, sortable:false, editable:false, hidden:true},
                    {name:'Name',index:'name', width:50, sortable:false, editable:false, hidden:true},
                    {name:'Abbreviation',index:'', width:175, sortable:false, editable:false},
                    {name:'Country',index:'', width:75,editable:false,sortable:false, align:'center'},
                    {name:'Symbol',index:'', width:75,editable:false,sortable:false, align:'center'},
                    {name:'Hundred Name',index:'', width:75,editable:false,sortable:false,align:'center'}
                ],
                jsonReader : {
                 repeatitems:true
                },
                loadonce: false,
                rowNum:10,
                rowList:[10,15,20],
                pager :'#pager',
                sortname: 'name',
                sortorder: "asc",
                sortableRows:true,
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
            <h4 class="smaller">Currency</h4>
        </div>

        <div class="widget-body">
            <div class="widget-main">
                <form class="form-horizontal" action="${createLink(controller: 'currency',action: 'save')}" method="post">


                    <div class="form-group">
                        <label class="control-label col-md-3 no-padding-right"
                               for="name">Currency Name</label>

                        <div class="col-md-4 col-sm-4">
                            <div class="clearfix">
                                <input type="text"  required=""
                                       oninvalid="this.setCustomValidity('${message(code: 'currency.addCurrency.name',default: 'Please Enter Currency Name')}')"
                                       oninput="setCustomValidity('')" title="${message(code: 'currency.addCurrency.name', default: 'Please Enter Currency Name')}"
                                       id="name" name="name" value="${currencyData?.name}" class="form-control"
                                       placeholder="Currency Name"><span class="red" id="currencyName"> </span>
                            </div>
                        </div>
                    </div>


                    <div class="form-group">
                        <label class="control-label col-xs-12 col-sm-3 no-padding-right"
                               for="abbreviation">Currency Abbreviation</label>

                        <div class="col-md-4 col-sm-4">
                            <div class="clearfix">
                                <input type="text"  required=""
                                       oninvalid="this.setCustomValidity('${message(code: 'currency.addCurrency.abbreviation',default: 'Please Enter Currency Abbreviation')}')"
                                       oninput="setCustomValidity('')" title="${message(code: 'currency.addCurrency.abbreviation', default: 'Please Enter Currency Abbreviation')}"
                                       id="abbreviation" name="abbreviation" value="${currencyData?.abbreviation}" class="form-control"
                                       placeholder="Currency Abbreviation">
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-xs-12 col-sm-3 no-padding-right"
                               for="symbol">Currency Symbol</label>

                        <div class="col-md-4 col-sm-4">
                            <div class="clearfix">
                                <input type="text"  required=""
                                       oninvalid="this.setCustomValidity('${message(code: 'currency.addCurrency.symbol',default: 'Please Enter Currency Symbol')}')"
                                       oninput="setCustomValidity('')" title="${message(code: 'currency.addCurrency.symbol', default: 'Please Enter Currency Symbol')}"
                                       id="symbol" name="symbol" value="${currencyData?.symbol}" class="form-control"
                                       placeholder="Currency Symbol"> <span class="red" id="currencySymbol"> </span>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-xs-12 col-sm-3 no-padding-right"
                               for="country">Country</label>

                        <div class="col-md-4 col-sm-4">
                            <div class="clearfix">

                                <select required="" class="width-90 chosen-select form-control" oninvalid="this.setCustomValidity('${message(code: 'currency.addCurrency.country',default: 'Please Select Country Name')}')" oninput="setCustomValidity('')" title="${message(code: 'currency.addCurrency.country',default: 'Please Select Country Name')}" name="country" id="country" data-placeholder="Choose a Country...">
                                    <option value="">Chose Country</option>
                                    <g:each in="${countryList}" var="country" >
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
                                <input type="text"  required=""
                                       oninvalid="this.setCustomValidity('${message(code: 'currency.addCurrency.hundredName',default: 'Please Enter Currency Hundred Name')}')"
                                       oninput="setCustomValidity('')" title="${message(code: 'currency.addCurrency.hundredName', default: 'Please Enter Currency Hundred Name')}"
                                       id="hundredName" name="hundredName" value="${currencyData?.hundredName}" class="form-control"
                                       placeholder="Currency Hundred Name">
                            </div>
                        </div>
                    </div>


                    <div class="col-md-offset-1">
                        <input type="submit" class="btn btn-danger" id="submit" value="Add Currency"/>
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