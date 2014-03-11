

<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="oros">
    <title>OrosCapital - Client</title>
</head>
<body>
<div class="page-header">
    <h1>Create Chart Group</h1>
</div>

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

<form class="form-horizontal" action="${createLink(controller: 'chartGroup', action: 'save')}">

    %{-- hidden field --}%
    <input type="hidden" name="id" value="${aChartGroup?.id}">

    <div class="tabbable">
        <div class="col-md-12">
            <div class="col-md-3">
                <div class="form-group">
                    <label for="name" class="control-label col-sm-4">Name<sup class="red">*</sup></label>
                    <div class="col-sm-8">
                        <input type="text"  class="form-control" name="name" value="${aChartGroup?.name}" />
                    </div>
                </div>
                <div class="form-group">
                    <label for="status" class="control-label col-sm-4">Status<sup class="red">*</sup></label>
                    <div class="col-sm-8">
                        <select class="form-control " name="status" />
                        <option value="">-Select-</option>
                        <option value="1" ${aChartGroup?.status == 1 ? 'selected' : ''}>Active</option>
                        <option value="0" ${aChartGroup?.status == 0 ? 'selected' : ''}>In Active</option>
                    </select>
                    </div>
                </div>
            </div>

            <div class="col-md-5">
                <div class="form-group">
                    <label for="accountantName" class="control-label col-sm-6">Accountant Name</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="accountantName" value="${aChartGroup?.accountantName}">
                    </div>
                </div>
                <div class="form-group">
                    <label for="chartClassType" class="control-label col-sm-6" >Parent Group</label>
                    <div class="col-sm-6">
                        <select class="form-control" name="parentGroup">
                            <option value="" selected>-Select-</option>
                            <g:each var="chartGroup" in="${chartGroupList}">
                                <option value="${chartGroup.id}">${chartGroup.name}</option>
                            </g:each>
                        </select>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="form-group">
                    <label for="chartClassType" class="control-label col-sm-6" >Chart Class<sup class="red">*</sup></label>
                    <div class="col-sm-5">
                        <select class="form-control" name="chartClass">
                            <option>-Select-</option>
                            <g:each var="chartClass" in="${chartClassList}">
                                <option value="${chartClass.id}"
                                    ${aChartGroup?.chartClass?.id == chartClass?.id ? 'selected' : ''}>
                                    ${chartClass.name}</option>
                            </g:each>
                        </select>
                    </div>
                    <a href="<g:createLink controller="chartClass" action="create"/>" class="inline"><span class="glyphicon glyphicon-plus"></span></a>
                </div>
            </div>
        </div>



        <div class="clearfix">
            <g:if test="${aChartGroup?.id}">
                <div class="col-md-offset-10 col-md-1">
                    <input type="submit" class="btn btn-danger" value="Update"/>
                </div>
            </g:if>
            <g:else>
                <div class="col-md-offset-10 col-md-1">
                    <input type="submit" class="btn btn-info" value="Create"/>
                </div>
            </g:else>
        </div>

    </div>
</form>

<script src="${resource(dir: 'js/resource/', file: 'jquery.dataTables.min.js')}"></script>
<script src="${resource(dir: 'js/resource/', file: 'jquery.dataTables.bootstrap.js')}"></script>
</body>
</html>