<%--
  Created by IntelliJ IDEA.
  User: Nusrat Jahan Bhuiyan
  Date: 2/25/14
  Time: 12:37 PM
  To change this template use File | Settings | File Templates.
--%>

<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <style>
    .form-control, label, textarea, input[type="text"], input[type="password"], input[type="datetime"], input[type="datetime-local"], input[type="date"], input[type="month"], input[type="time"], input[type="week"], input[type="number"], input[type="email"], input[type="url"], input[type="search"], input[type="tel"], input[type="color"]{font-size: 12px;}
    </style>
    <meta name="layout" content="main">
    <title>OrosCapital - Create Customer</title>

    <r:script>
        $(document).ready(function () {
    //       alert("jquery is working");
             var $tabs = $('.tabbable li');

            %{-- show next tab --}%
        $('#customerBasicForm').on('submit', function() {
            $tabs.filter('.active').next('li').find('a[data-toggle="tab"]').tab('show');
        });
});

    </r:script>

</head>

<body>

<div class="page-header">
    <h1>Create New Customer</h1>
</div><!-- /.page-header -->

<div class="tabbable">
    <ul id="customerFormListTab" class="nav nav-tabs padding-12 tab-color-blue background-blue">
        <li class="active">
            <a href="#basic" data-toggle="tab">Basic</a>
        </li>
        <li class="">
            <a href="#generalAddress" data-toggle="tab">General Address</a>
        </li>
        <li class="">
            <a href="#postalAddress" data-toggle="tab">Postal Address</a>
        </li>
        <li class="">
            <a href="#shippingAddress" data-toggle="tab">Shipping Address</a>
        </li>
        <li class="">
            <a href="#bankAccountInfo" data-toggle="tab">Bank Account Info</a>
        </li>
    </ul>

    <div class="tab-content">
        <div class="tab-pane active" id="basic">
            <g:render template='basic'/>
        </div>
        <div class="tab-pane" id="generalAddress">
            <g:render template='generalAddress'/>
        </div>
        <div class="tab-pane" id="postalAddress">
            <g:render template='postalAddress'/>
        </div>
        <div class="tab-pane" id="shippingAddress">
            <g:render template='shippingAddress'/>
        </div>
        <div class="tab-pane" id="bankAccountInfo">
            <g:render template='bankAccountInfo'/>
        </div>
    </div>
</div>

</body>
</html>