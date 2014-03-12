<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <style>
    .form-control, label, textarea, input[type="text"], input[type="password"], input[type="datetime"], input[type="datetime-local"], input[type="date"], input[type="month"], input[type="time"], input[type="week"], input[type="number"], input[type="email"], input[type="url"], input[type="search"], input[type="tel"], input[type="color"]{font-size: 12px;}
    </style>
    <meta name="layout" content="oros">
    <title>OrosCapital - Vendor</title>

    <r:script>
        var $tabs = $('.tabbable li');
        $(document).ready(function () {
            $('#vendorBankAccountInfo').hide();
            $('#accountInfoButton').click(function(){
                var bankAccountName = $( "#vendorBankAccountName" ).val();
                var ibanPrefix = $( "#vendorIbanPrefix" ).val();
                var bankAccountNo = $( "#vendorBankAccountNo" ).val();
                var status = $( "#vendorStatus" ).val();
                $('#td1').html($('#vendorBankAccountName').val());
                $('#td2').html($('#vendorIbanPrefix').val());
                $('#td3').html($('#vendorBankAccountNo').val());
                $('#td4').html($("#vendorStatus option:selected").text());
                $('#vendorBankAccountInfo').show();

            });
        });

    </r:script>
</head>
<body>

    <div class="tabbable">
        <ul id="myTab4" class="nav nav-tabs padding-12 tab-color-blue background-blue">
            <li class="active" id="ba">
                <a href="#basic" data-toggle="tab">Basic</a>
            </li>
            <li class="disabled" id="ga">
                <a href="#generalAddress" data-toggle="tab">General Address</a>
            </li>
            <li class="disabled" id="pa">
                <a href="#postalAddress" data-toggle="tab">Postal Address</a>
            </li>
            <li class="disabled" id="bai">
                <a href="#bankAccountInfo" data-toggle="tab">Bank Account Info</a>
            </li>
        </ul>

        <div class="tab-content">
            <div class="tab-pane active" id="basic">
                <g:render template='/vendor/vendorBasic'/>
            </div>

            <div class="tab-pane" id="generalAddress">
                <g:render template='/vendor/vendorGeneralAddress'/>
            </div>
            <div class="tab-pane" id="postalAddress">
                <g:render template='/vendor/vendorPostalAddress'/>
            </div>
            <div class="tab-pane" id="bankAccountInfo">
                <g:render template='/vendor/vendorBankAccountInfo'/>
            </div>
        </div>
    </div>


</body>
</html>