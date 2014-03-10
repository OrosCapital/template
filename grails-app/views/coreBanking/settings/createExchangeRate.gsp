<%--
  Created by IntelliJ IDEA.
  User: Mohammed Imran
  Date: 3/7/14
  Time: 6:21 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="oros">
    <title></title>
    <r:script>

        $(document).ready(function () {


            $("#date").datepicker({
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
            <h4 class="smaller">Exchange Rate</h4>
        </div>

        <div class="widget-body">
            <div class="widget-main">
                %{--<g:if test="${flash.exchangeRateMessage}">--}%
                    %{--<div class="well" id="exchangeRateExist">--}%
                        %{--<h4 class="green smaller lighter">${flash.exchangeRateMessage}</h4>--}%
                    %{--</div>--}%
                %{--</g:if>--}%
                <form class="form-horizontal"
                      id="exchangeRate" action="${createLink(controller: 'exchangeRate', action: 'save')}"><!-- -->

                    <div class="form-group">
                        <label class="control-label col-md-3 no-padding-right"
                               for="currencyId">Currency Code</label>

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


                    <div class="form-group">
                        <label class="control-label col-xs-12 col-sm-3 no-padding-right"
                               for="buyPrice">Buy Price</label>

                        <div class="col-md-4 col-sm-4">
                            <div class="clearfix">
                                <input type="text" required=""
                                       oninvalid="this.setCustomValidity('${message(code: 'exchangeRate.addExchangeRate.buyPrice',default: 'Please Enter Currency Buy Price')}')"
                                       oninput="setCustomValidity('')"
                                       title="${message(code: 'exchangeRate.addExchangeRate.buyPrice', default: 'Please Enter Currency Buy Price')}"
                                       id="buyPrice" name="buyPrice" class="form-control"
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
                                       id="sellPrice" name="sellPrice" class="form-control"
                                       placeholder="Currency Sell Price">
                            </div>
                        </div>
                    </div>


                    <div class="form-group">
                        <label class="control-label col-md-3 no-padding-right"
                               for="date">Date</label>

                        <div class="col-md-4 col-sm-4">
                            <div class="clearfix">
                                <div class="input-group input-group-sm">
                                    <input type="date" required=""
                                    %{--oninvalid="this.setCustomValidity('${message(code: 'exchangeRate.addExchangeRate.date',default: 'Please Enter Date')}')"--}%
                                    %{--oninput="setCustomValidity('')"--}%
                                    %{--title="${message(code: 'exchangeRate.addExchangeRate.date', default: 'Please Enter Date')}"--}%
                                           id="date" name="date" class="form-control"/>
                                    <span class="input-group-addon">
                                        <i class="icon-calendar"></i>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-offset-1">
                        <input type="submit" class="btn btn-danger" id="submit" value="Add Currency"/>
                    </div>

                </form>

                <table class="table table-responsive table-bordered">
                    <thead>
                    <tr>
                        <td>Currency</td>
                        <td>Buy Price</td>
                        <td>Sell Price</td>
                        <td>Date</td>
                    </tr>
                    </thead>
                    <tbody id="exchangeRateList">

                    </tbody>

                </table>
            </div>
        </div>
    </div>
</div><!-- /span -->

</body>
</html>