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
        var tabSelector='${tabSelectIndicator}';
        //alert(tabSelector);
        $(document).ready(function () {
            $('#vendorBankAccountInfoTable').hide();

            if(tabSelector == 1){
            $('#vendorBasicInfo').addClass( "active" );
            $('#vendorBasic').addClass( "active" );
            $('#vendorBasicInfo').show();

            $('#vendorGeneralAdd').removeClass( "active" );
            $('#vendorPostalAdd').removeClass( "active" );
            $('#vendorAccountInfo').removeClass( "active" );

            }
            else if(tabSelector == 2){
            $('#vendorGeneralAdd').addClass( "active" );
            $('#vendorGeneralAddress').addClass( "active" );
            $('#vendorGeneralAdd').show();

            $('#vendorBasicInfo').removeClass( "active" );
            $('#vendorPostalAdd').removeClass( "active" );
            $('#vendorAccountInfo').removeClass( "active" );

            }

            else if(tabSelector == 3){
            $('#vendorPostalAdd').addClass( "active" );
            $('#vendorPostalAddress').addClass( "active" );
            $('#vendorPostalAdd').show();

            $('#vendorBasicInfo').removeClass( "active" );
            $('#vendorGeneralAdd').removeClass( "active" );
            $('#vendorAccountInfo').removeClass( "active" );

            }

            else if(tabSelector == 4){
            $('#vendorAccountInfo').addClass( "active" );
            $('#vendorBankAccountInfo').addClass( "active" );
            $('#vendorAccountInfo').show();

            $('#vendorBasicInfo').removeClass( "active" );
            $('#vendorGeneralAdd').removeClass( "active" );
            $('#vendorPostalAdd').removeClass( "active" );

            }



            $('#accountInfoButton').click(function(){
                var bankAccountName = $( "#vendorBankAccountName" ).val();
                var ibanPrefix = $( "#vendorIbanPrefix" ).val();
                var bankAccountNo = $( "#vendorBankAccountNo" ).val();
                var status = $( "#vendorStatus" ).val();

                $.ajax({
                type: 'POST',
                url: "${createLink(action:'saveVendorBankAccountInfo', controller:'vendor', params: [b])}/"
                });



                $('#td1').html($('#vendorBankAccountName').val());
                $('#td2').html($('#vendorIbanPrefix').val());
                $('#td3').html($('#vendorBankAccountNo').val());
                $('#td4').html($("#vendorStatus option:selected").text());
                $('#vendorBankAccountInfoTable').show();

            });
        });

    </r:script>
</head>
<body>
   <div class="row">
    <div class="col-md-12">
    <div class="tabbable" id="tabs_container">
        <ul id="myTab4" class="nav nav-tabs padding-12 tab-color-blue background-blue">
            <li class="" id="vendorBasicInfo">
                <a href="#vendorBasic" data-toggle="tab">Basic</a>
            </li>
            <li class="" id="vendorGeneralAdd">
                <a href="#vendorGeneralAddress" data-toggle="tab">General Address</a>
            </li>
            <li class="" id="vendorPostalAdd">
                <a href="#vendorPostalAddress" data-toggle="tab">Postal Address</a>
            </li>
            <li class="" id="vendorAccountInfo">
                <a href="#vendorBankAccountInfo" data-toggle="tab">Bank Account Info</a>
            </li>
        </ul>

        <div class="tab-content">
            <div class="tab-pane" id="vendorBasic">
                <g:render template='/vendor/vendorBasic'/>
            </div>

            <div class="tab-pane" id="vendorGeneralAddress">
                <g:render template='/vendor/vendorGeneralAddress'/>
            </div>
            <div class="tab-pane" id="vendorPostalAddress">
                <g:render template='/vendor/vendorPostalAddress'/>
            </div>
            <div class="tab-pane" id="vendorBankAccountInfo">
                <g:render template='/vendor/vendorBankAccountInfo'/>
            </div>
        </div>
    </div>

   </div>
   </div>
</body>
</html>