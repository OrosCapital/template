

<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="oros">
    <title>OrosCapital - Client</title>
</head>
<body>
<div class="page-header">
    <h1>Create Chart Class</h1>
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

<form class="form-horizontal" action="${createLink(controller: 'chartClass', action: 'save')}">

    %{-- hidden field --}%
    <input type="hidden" name="id" value="${chartClass?.id}">

    <div class="tabbable">
        <div class="col-xs-12 col-md-12">

            <div class="col-md-3">
                <div class="form-group">
                    <label for="name" class="control-label col-md-4">Name<sup class="red">*</sup></label>
                    <div class="col-md-7">
                        <input type="text"  class="form-control" name="name" value="${chartClass?.name}" />
                    </div>
                </div>
                <div class="form-group">
                    <label for="status" class="control-label col-md-4">Status</label>
                    <div class="col-md-7">
                        <select class="form-control " name="status" />
                        <option value="">-Select-</option>
                        <option value="1" ${chartClass?.status == 1 ? 'selected' : ''}>Active</option>
                        <option value="0" ${chartClass?.status == 0 ? 'selected' : ''}>In Active</option>
                    </select>
                    </div>
                </div>
            </div>

            <div class="col-md-5">
                <div class="form-group">
                    <label for="accountantName" class="control-label col-md-6" >Accountant Name</label>
                    <div class="col-md-6">
                        <input type="text" class="form-control" name="accountantName" value="${chartClass?.accountantName}">
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="form-group">
                    <label for="chartClassType" class="control-label col-md-5" >Class Type</label>
                    <div class="col-md-7">
                        <select class="form-control" name="chartClassType">
                            <option>-Select-</option>
                            <g:each var="chartClassType" in="${chartClassTypeList}">
                                <option value="${chartClassType.id}"
                                    ${chartClass?.chartClassType?.id == chartClassType?.id ? 'selected' : ''}>
                                    ${chartClassType.classType}</option>
                            </g:each>
                        </select>
                    </div>
                </div>
            </div>

            <div class="clearfix">
                <g:if test="${chartClass?.id}">
                    <div class="col-md-offset-10 col-md-1">
                        <input type="submit" class="btn btn-danger" value="Update"/>
                    </div>
                </g:if>
                <g:else>
                    <div class="col-md-offset-10 col-md-1 col-sm-offset-10 col-sm-10">
                        <input type="submit" class="btn btn-info" value="Create"/>
                    </div>
                </g:else>
            </div>
        </div>%{-- end main div xs,md--}%




    </div>%{--end class=tabbale--}%

</form>


<script src="${resource(dir: 'js/resource/', file: 'jquery.dataTables.min.js')}"></script>
<script src="${resource(dir: 'js/resource/', file: 'jquery.dataTables.bootstrap.js')}"></script>
</body>
</html>