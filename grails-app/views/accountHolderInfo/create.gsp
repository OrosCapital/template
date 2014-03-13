<%--
  Created by IntelliJ IDEA.
  User: Murshida Mushfique & Nusrat Jahan Bhuiyan
  Date: 3/12/14
  Time: 12:53 PM
  To change this template use File | Settings | File Templates.
--%>

<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
        <meta name="layout" content="oros">
        <title>OrosCapital - Account Holder Info</title>

        <r:script>
            //var $tabs = $('.tabbable li');
            //$(document).ready(function () {
            /*$('#button-next').on('click', function() {
             $tabs.filter('.active')
             .next('li')
             .find('a[data-toggle="tab"]')
             .tab('show');
             });
             */
            //});
        </r:script>
    </head>
<body>
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <g:form name="accountInfoForm" method="post" id="accountInfo" role="form" class="form-horizontal">
                <div class="tabbable">
                    <ul id="myTab4" class="nav nav-tabs padding-12 tab-color-blue background-blue">
                        <li class="active" id="ba">
                            <a href="#personalInfo" data-toggle="tab">Personal Information</a>
                        </li>
                        <li class="" id="ga">
                            <a href="#contactAddress" data-toggle="tab">Contact Address</a>
                        </li>
                        <li class="" id="pa">
                            <a href="#postalAddress" data-toggle="tab">Postal Address</a>
                        </li>
                        <li class="" id="bai">
                            <a href="#nomineeInfo" data-toggle="tab">Nominee Info</a>
                        </li>
                        <li class="">
                            <a href="#identificationDocument" data-toggle="tab">Identification Document</a>
                        </li>
                        <li class="">
                            <a href="#imageAndSignature" data-toggle="tab">Image And Signature</a>
                        </li>
                        <li class="">
                            <a href="#bankAccountInformation" data-toggle="tab">Bank Account Information</a>
                        </li>
                    </ul>

                    <div class="tab-content">
                        <div class="tab-pane active" id="personalInfo">
                            <g:render template='personalInfo'/>
                        </div>
                        <div class="tab-pane" id="contactAddress">
                            <g:render template='contactAddress'/>
                        </div>
                        <div class="tab-pane" id="postalAddress">
                            <g:render template='postalAddress'/>
                        </div>
                        <div class="tab-pane" id="nomineeInfo">
                            <g:render template='nomineeInfo'/>
                        </div>
                        <div class="tab-pane" id="identificationDocument">
                            <g:render template='identificationDocument'/>
                        </div>
                        <div class="tab-pane" id="imageAndSignature">
                            <g:render template='imageAndSignature'/>
                        </div>
                        <div class="tab-pane" id="bankAccountInformation">
                            <g:render template='bankAccountInformation'/>
                        </div>
                    </div>
                </div>
            </g:form>
        </div>
    </div>

</body>
</html>