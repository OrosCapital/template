

<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="oros">
    <title>OrosCapital - Client</title>
    <r:script>
        $(document).ready(function(){
            $("#chartClassId").change(function(){
                var chartClassId = $(this).val();
                var chartGroupId = $('#chartGroupId').val();
                 $.ajax({
                    type:"POST",
                    dataType:'json',
                    url:"${createLink(controller: 'chartGroup', action: 'checkGroup')}",
                    data:{chartClassId:chartClassId, chartGroupId:chartGroupId},
                    success: function (data) {
                        var row="";
                        row+="<option value=''> -Select- </option>";
                        for(var i=0;i<(data.value.length);i++){
                           row+="<option value='"+data.value[i].id+"'>"+data.value[i].name+"</option>";
                        }
                        $("#chartGroup").html(row);
                    }
                });
            });
        });
    </r:script>
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

    %{-- hidden field set for edit only --}%
    <input type="hidden" name="id" value="${chartGroup?.id}">

    %{-- when add child group default set the parentGroup id --}%
    <g:if test="${parentGroup}">
        <input type="hidden" name="parentGroup" value="${parentGroup.id}">
    </g:if>

    %{-- when edit in child group --}%
    <g:elseif test="${actionName == 'edit'}">
        <input type="hidden" name="parentGroup" value="${chartGroup?.parentGroup?.id}"/>
    </g:elseif>

    <div class="tabbable">
        <div class="col-md-12">
            <div class="col-md-3">
                <div class="form-group">
                    <label for="name" class="control-label col-md-3">Name<sup class="red">*</sup></label>
                    <div class="col-md-9">
                        <input type="text"  class="form-control" name="name"  value="${chartGroup?.name}" />
                    </div>
                </div>
                <div class="form-group">
                    <label for="status" class="control-label col-md-3">Status<sup class="red">*</sup></label>
                    <div class="col-md-9">
                        <select class="form-control" name="status" />
                            <option value="">-Select-</option>
                            <option value="1" ${chartGroup?.status == 1 ? 'selected' : ''}>Active</option>
                            <option value="0" ${chartGroup?.status == 0 ? 'selected' : ''}>In Active</option>
                        </select>
                    </div>
                </div>
            </div>

            <div class="col-md-5">
                <div class="form-group">
                    <label for="accountantName" class="control-label col-sm-6">Accountant Name</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="accountantName" value="${chartGroup?.accountantName}">
                    </div>
                </div>
            </div>

            %{-- chart Class --}%

            <div class="col-md-4">
                <div class="form-group">
                    <label for="chartClassType" class="control-label col-sm-6" >Chart Class<sup class="red">*</sup></label>
                    <div class="col-sm-5">
                        <g:if test="${!chartGroup?.parentGroup?.id && !parentGroup}">
                            <select class="form-control" name="chartClass">
                                <option>-Select-</option>
                                <g:each var="chartClass" in="${chartClassList}">
                                    <option value="${chartClass.id}"
                                        ${chartGroup?.chartClass?.id == chartClass?.id ? 'selected' : ''}>
                                        ${chartClass.name}</option>
                                </g:each>
                            </select>
                        </g:if>
                        <g:elseif test="${parentGroup}">
                            <input type="hidden" value="${parentGroup?.chartClass?.id}" name="chartClass"/>
                            <input type="text" class="form-control" value="${parentGroup?.chartClass?.name}" disabled/>
                        </g:elseif>
                        <g:else>
                            <input type="hidden" value="${chartGroup?.chartClass?.id}" name="chartClass"/>
                            <input type="text" class="form-control" value="${chartGroup?.chartClass?.name}" disabled/>
                        </g:else>
                    </div>
                </div>
            </div>


        </div>



        <div class="clearfix">
            <g:if test="${chartGroup?.id}">
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