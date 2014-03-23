<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="oros">
    <title>OrosCapital - Client</title>

    <r:script>
        $(document).ready(function () {
//       alert("jquery is working");

        $(function () {
            $("#sol").tooltip();
            $("#ind").tooltip();
            $("#nonSol").tooltip();
            $("#corp").tooltip();

        });

            $('input:checkbox').removeAttr('checked');
             $(function () {
                $('#all').on('click', function () {
                 $(this).closest('fieldset').find(':checkbox').prop('checked', this.checked);
                    });
});

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
                        <a href="#termSetup" data-toggle="tab">Term Setup</a>
                    </li>

                </ul>

                <div class="tab-content">

                    <div class="tab-pane active" id="mainParameters">
                        <g:render template="/coreBanking/settings/product/savings/mainParameters"/>
                    </div>
                    <div class="tab-pane " id="transactions">
                        <g:render template='/coreBanking/settings/product/savings/transactions'/>
                    </div>

                    <div class="tab-pane" id="fees">
                        <g:render template='/coreBanking/settings/product/savings/fees'/>
                    </div>

                    <div class="tab-pane" id="overdraft">
                        <g:render template='/coreBanking/settings/product/savings/overdraft'/>
                    </div>
                    <div class="tab-pane" id="termSetup">
                        <g:render template='/coreBanking/settings/product/savings/termSetup'/>
                    </div>

                </div>
            </div>
        </g:form>
    </div>
</div>

</body>
</html>