<%--
  Created by IntelliJ IDEA.
  User: Nusrat Jahan Bhuiyan
  Date: 3/6/14
  Time: 5:53 PM
  To change this template use File | Settings | File Templates.
--%>

<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
        <style>
            .form-control, label, textarea, input[type="text"], input[type="password"],
            input[type="datetime"], input[type="datetime-local"], input[type="date"],
            input[type="month"], input[type="time"], input[type="week"], input[type="number"],
            input[type="email"], input[type="url"], input[type="search"], input[type="tel"],
            input[type="color"]{font-size: 12px;}
        </style>
        <meta name="layout" content="oros">
        <title>OrosCapital - Retail Clients</title>

        <r:script>
            $(document).ready(function () {
                // alert("jquery is working");
                $("#signaturePreview").hide();
                $("#retailClientSignature").submit(function(e)  {
                    //var formObj = $(this);
                    //var formURL = formObj.attr("save");
                    var formData = new FormData(this);
                    $.ajax({
                        url:"${createLink(controller: 'retailClient', action: 'saveRetailClientSignature')}",
                        type: 'POST',
                        data:  formData,
                        dataType:'json',
                        mimeType:"multipart/form-data",
                        contentType: false,
                        cache: false,
                        processData:false,
                        success: function (data) {
                            $("#signaturePreview").show();
                            $("#retailClientSignature").hide();
                            var signatureName = data.imgPath;
                            var imagePath="/template/static/images/userImages/clients/retailClients/signatures/1/" + signatureName;
                            //alert(imagePath);
                            $("#signatureId").attr({src:imagePath})
                        }
                    });
                    e.preventDefault();
                    e.unbind();
                });
                $('#editSignature').click(function(){
                    $("#signaturePreview").hide();
                    $("#retailClientSignature").show();
                });
            });
        </r:script>
    </head>

<body>

    <div class="page-header">
        <h1>Retail Client</h1>
    </div><!-- /.page-header -->

    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <div class="tabbable">
                <ul id="customerFormListTab" class="nav nav-tabs padding-12 tab-color-blue background-blue">
                    <li class="active">
                        <a href="#retailAccountInformation" data-toggle="tab">Account Information</a>
                    </li>
                    <li class="">
                        <a href="#necessaryPersonalInfo" data-toggle="tab">Necessary Personal Info</a>
                    </li>
                    <li class="">
                        <a href="#retailIntroducerInformation" data-toggle="tab">Introducer Information</a>
                    </li>
                    <li class="">
                        <a href="#retailOtherBankAccountInformation" data-toggle="tab">Other Bank Account Information</a>
                    </li>
                    <li class="">
                        <a href="#retailAttachments" data-toggle="tab">Attachments</a>
                    </li>
                    <li class="">
                        <a href="#retailDetailsInformation" data-toggle="tab">Details Information</a>
                    </li>
                </ul>

                <div class="tab-content">
                    <div class="tab-pane active" id="retailAccountInformation">
                        <g:render template='accountInformation'/>
                    </div>
                    <div class="tab-pane" id="necessaryPersonalInfo">
                        <g:render template='necessaryPersonalInfo'/>
                    </div>
                    <div class="tab-pane" id="retailIntroducerInformation">
                        <g:render template='introducerInformation'/>
                    </div>
                    <div class="tab-pane" id="retailOtherBankAccountInformation">
                        <g:render template='otherBankAccountInformation'/>
                    </div>
                    <div class="tab-pane" id="retailAttachments">
                        <g:render template='attachments'/>
                    </div>
                    <div class="tab-pane" id="retailDetailsInformation">
                        <g:render template='detailsInformation'/>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>
</html>