<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <style>
    .form-control, label, textarea, input[type="text"], input[type="password"], input[type="datetime"], input[type="datetime-local"], input[type="date"], input[type="month"], input[type="time"], input[type="week"], input[type="number"], input[type="email"], input[type="url"], input[type="search"], input[type="tel"], input[type="color"]{font-size: 12px;}
    </style>
    <meta name="layout" content="oros">
    <title>OrosCapital - AccountInfo</title>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
    <script src="//code.jquery.com/jquery-1.9.1.js"></script>
    <script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
    <link rel="stylesheet" href="/resources/demos/style.css">




    <script>

        $(document).ready(function () {


            var $tabs = $('.tabbable li');
            $('#buttonOne').on('click', function() {
                $tabs.filter('.active').next('li').find('a[data-toggle="tab"]').tab('show');
            });

            $('#buttonTwo').on('click', function() {
                $tabs.filter('.active').next('li').find('a[data-toggle="tab"]').tab('show');
            });

            $('#buttonThree').on('click', function() {
                $tabs.filter('.active').next('li').find('a[data-toggle="tab"]').tab('show');
            });

            $('#buttonFour').on('click', function() {
                $tabs.filter('.active').next('li').find('a[data-toggle="tab"]').tab('show');
            });

            $('#buttonFive').on('click', function() {
                $tabs.filter('.active').next('li').find('a[data-toggle="tab"]').tab('show');
            });

            $('#buttonSix').on('click', function() {
                $tabs.filter('.active').next('li').find('a[data-toggle="tab"]').tab('show');
            });

            $('#buttonSeven').on('click', function() {
                $tabs.filter('.active').next('li').find('a[data-toggle="tab"]').tab('show');
            });

            $('#DateOfBirthOfAgent').datepicker();
            $('#DateOfBirthOfThirdParty').datepicker();
            $('input:checkbox').removeAttr('checked');
            $('#horizon1').attr('checked', true).click(function () {
                $('#horizon2').attr('checked', false);
                $('#horizon3').attr('checked', false);
                $('#horizon4').attr('checked', false);
            });

            $('#horizon2').attr('checked', true).click(function () {
                $('#horizon1').attr('checked', false);
                $('#horizon3').attr('checked', false);
                $('#horizon4').attr('checked', false);
            });

            $('#horizon3').attr('checked', true).click(function () {
                $('#horizon2').attr('checked', false);
                $('#horizon1').attr('checked', false);
                $('#horizon4').attr('checked', false);
            });


            $('#horizon4').attr('checked', true).click(function () {
                $('#horizon2').attr('checked', false);
                $('#horizon3').attr('checked', false);
                $('#horizon1').attr('checked', false);
            });


            $('#risk1').attr('checked', true).click(function () {
                $('#risk2').attr('checked', false);
                $('#risk3').attr('checked', false);

            });

            $('#risk2').attr('checked', true).click(function () {
                $('#risk1').attr('checked', false);
                $('#risk3').attr('checked', false);

            });

            $('#risk3').attr('checked', true).click(function () {
                $('#risk2').attr('checked', false);
                $('#risk1').attr('checked', false);

            });
        });
    </script>
</head>


<body>

<div class="row">
    <div class="col-md-12">

    <div class="tabbable">
        <ul id="myTab4" class="nav nav-tabs padding-12 tab-color-blue background-blue">
            <li class="active">
                <a href="#personal" data-toggle="tab">Personal Info</a>
            </li>
            <li class="">
                <a href="#contact" data-toggle="tab">Contact Details</a>
            </li>
            <li class="">
                <a href="#residence" data-toggle="tab">Residential Address</a>
            </li>

            <li class="">
                <a href="#additional" data-toggle="tab">Additional Detail</a>
            </li>

            <li class="">
                <a href="#bank" data-toggle="tab">Bank Detail</a>
            </li>

            <li class="">
                <a href="#helpClient" data-toggle="tab">Client Help</a>
            </li>

            <li class="">
                <a href="#thirdParty" data-toggle="tab">Correspondence & Administration</a>
            </li>


            <li class="">
                <a href="#attachment" data-toggle="tab">Attachments</a>
            </li>

        </ul>

        <div class="tab-content">
            <div class="tab-pane active" id="personal">
                <g:render template='/agent/personalInfo'/>
            </div>

            <div class="tab-pane" id="contact">
                <g:render template='/agent/contactDetail'/>
            </div>

            <div class="tab-pane" id="residence">
                <g:render template='/agent/residentialAddress'/>
            </div>

            <div class="tab-pane" id="additional">
                <g:render template='/agent/additionalDetail'/>

            </div>

            <div class="tab-pane" id="bank">
                <g:render template='/agent/bankDetails'/>
            </div>


            <div class="tab-pane" id="helpClient">
                <g:render template='/agent/helpingClient'/>

            </div>

            <div class="tab-pane" id="thirdParty">
                <g:render template='/agent/thirdParty'/>

            </div>

            <div class="tab-pane" id="attachment">
                <g:render template='/agent/attachment'/>

            </div>

        </div>
    </div>


    </div>
</div>
</body>
</html>