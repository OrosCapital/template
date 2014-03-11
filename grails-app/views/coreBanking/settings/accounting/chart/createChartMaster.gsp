<%--
  Created by IntelliJ IDEA.
  User: GS
  Date: 2/23/14
  Time: 10:18 AM
  To change this template use File | Settings | File Templates.
--%>

<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="oros">
    <title>OrosCapital - Client</title>


</head>

<body>
<div class="page-header">
    <h1>Create Chart Master</h1>
</div><!-- /.page-header -->

%{--Message--}%
<g:if test="${flash.success}">
    <div class="alert alert-success">
        ${flash.success}
    </div>
</g:if>

<g:if test="${flash.error}">
    <div class="alert alert-danger">
        ${flash.error}
    </div>
</g:if>
%{-- End --}%



<form class="form-horizontal" action="${createLink(controller: 'chartMaster', action: 'save')}">
    <input type="hidden" name="id" value="${aChartMaster?.id}">

    %{-- Ordering default value 1 --}%
    <input type="hidden" name="ordering" value=1 />

    <div class="col-xs-12 col-md-12 col-sm-12">

        %{-- First Rows --}%
        <div class="col-xs-6 col-md-3 col-sm-3">
            <div class="form-group">
                <label class="control-label col-md-8">Account code <sup class="red">*</sup></label>

                <div class="col-md-4">
                    <input type="text" class="form-control" name="accountCode" value="${aChartMaster?.accountCode}" required/>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-md-8">Account Code2</label>

                <div class="col-md-4">
                    <input type="text" class="form-control" name="accountCode2" value="${aChartMaster?.accountCode2}"/>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-md-5">Status <sup class="red">*</sup></label>
                <div class="col-md-7">
                    <select class="form-control" name="status" required>
                        <option value="">-Select-</option>
                        <option value="1" ${aChartMaster?.status == 1 ? 'selected' : ''}>Active</option>
                        <option value="0" ${aChartMaster?.status == 0 ? 'selected' : ''}>In Active</option>
                    </select>
                </div>

            </div>
        </div>
        %{-- End First Rows --}%

        %{-- Second Rows --}%
        <div class="col-xs-6 col-md-5 col-sm-5">
            <div class="form-group">
                <label class="control-label col-md-5">Account Name<sup class="red">*</sup></label>

                <div class="col-md-6">
                    <input type="text" class="form-control" name="accountName" value="${aChartMaster?.accountName}" required/>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-md-5">Chart Group<sup class="red">*</sup></label>
                <div class="col-md-6">
                    <select class="form-control" name="chartGroup" required>
                        <option value="" selected>-Select-</option>
                        <g:each var="chartGroup" in="${chartGroupList}">
                            <option value="${chartGroup.id}"
                                ${aChartMaster?.chartGroup?.id== chartGroup?.id ? 'selected' : ''}>
                                ${chartGroup.name}</option>
                        </g:each>
                    </select>
                </div>
                <a href="<g:createLink controller="chartGroup" action="create"/>" class="inline"><span class="glyphicon glyphicon-plus"></span></a>
            </div>
        </div>
        %{-- End Second Rows --}%

        %{-- Third Rows --}%
        <div class="col-xs-6 col-md-4 col-sm-4">
            <div class="form-group">
                <label class="control-label col-md-7">Accountant Name</label>

                <div class="col-md-5">
                    <input type="text" class="form-control" name="accountantName" value="${aChartMaster?.accountantName}" required/>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-md-7">Vat Category <sup class="red">*</sup></label>
                <div class="col-md-4">
                    <select class="form-control" name="vatCategoryId" required>
                        <option value="1">VAT HIGH</option>
                    </select>
                    %{--<div class="span3"><a href="" class="form-inline"><span class="glyphicon glyphicon-plus"></span></a></div>--}%
                </div>
                <a href="" class="inline"><span class="glyphicon glyphicon-plus"></span></a>

            </div>

            <div class="clearfix visible-xs"></div>



        </div>
        <div class="col-md-offset-10 col-md-1">
        %{--<input type="submit" value="Create" class="btn btn-info">--}%
            <g:if test="${aChartMaster?.id}">
                <input type="submit" class="btn btn-danger" value="Update"/>
            </g:if>
            <g:else>
                <input type="submit" class="btn btn-info" value="Create"/>
            </g:else>
        </div>

</form>


</body>
</html>