<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="oros">
    <title>OrosCapital - Client</title>

    <r:script>
        $(document).ready(function () {
//       alert("jquery is working");
        });

    </r:script>
</head>

<body>
%{--<g:render template="/breadcumb" model="${[myparams:['home','www', 'eeee']]}" />--}%
<div class="page-header">
    <h1>Savings Product</h1>
</div><!-- /.page-header -->

<div class="row">
    <div class="col-md-12">
        <g:form name="clientForm" method="post" role="form" class="form-horizontal">

            <div class="tabbable">
                <ul id="myTab4" class="nav nav-tabs padding-12 tab-color-blue background-blue">

                    <li class="active">
                        <a href="#mainParameters" data-toggle="tab">Main Parameters</a>
                    </li>

                    <li class="">
                        <a href="#transactions" data-toggle="tab">Transactions</a>
                    </li>
                    <li class="">
                        <a href="#fees" data-toggle="tab">Fees</a>
                    </li>

                    <li>
                        <a href="#overdraft" data-toggle="tab">Overdraft</a>
                    </li>

                    <li class="">
                        <a href="#termDeposit" data-toggle="tab">Term deposit</a>
                    </li>

                </ul>

                <div class="tab-content">

                    <div class="tab-pane active" id="mainParameters">
                        <g:render template="/coreBanking/settings/product/mainParameters"/>
                    </div>
                    <div class="tab-pane " id="transactions">
                        <g:render template='/coreBanking/settings/product/transactions'/>
                    </div>

                    <div class="tab-pane" id="fees">
                        <g:render template='/coreBanking/settings/product/fees'/>
                    </div>

                    <div class="tab-pane" id="overdraft">
                        <g:render template='/coreBanking/settings/product/overdraft'/>
                    </div>
                </div>
            </div>
        </g:form>
    </div>
</div>

</body>
</html>