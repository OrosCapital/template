<%--
  Created by IntelliJ IDEA.
  User: Mohammed Imran
  Date: 3/4/14
  Time: 2:27 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page import="com.gsl.uma.security.Role" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="oros">
    <title></title>
    <style type="text/css">
    .form-horizontal .control-label{
        text-align :left;
    }
    </style>
</head>
<body>
<div class="row">
    <div class="col-xs-12">
        <div class="row">
            <div class="col-sm-7">
                <div class="widget-box">
                    <div class="widget-header">
                        <h4>Load a Role to Map Right</h4>
                    </div>

                    <div class="widget-body">
                        <div class="widget-main">
                            <g:form class="form-inline" method="post" name="loadRoleForm" url="[action:'roleRight',controller:'manageRole']">
                                <g:select class="width-60 chosen-select" id="roleId" name='roleId'
                                          noSelection="${['':'Select Role...']}"
                                          from='${Role.findAll()}'
                                          optionKey="id" optionValue="authority"></g:select>

                                <button type="submit" class="btn btn-info btn-sm">
                                    <i class="icon-key bigger-110"></i>
                                    Load
                                </button>
                            </g:form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <hr>
    <g:if test="${resultList}">
            <div class="row">
            <div id="accordion" class="accordion-style1 panel-group">

                <div class="panel panel-default" id="generalSetting">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a class="accordion-toggle blue" data-toggle="collapse" data-parent="#accordion"
                               href="#collapseOne">
                                <i class="icon-angle-down bigger-110" data-icon-hide="icon-angle-down"
                                   data-icon-show="icon-angle-right"></i>
                                &nbsp;Right Map for ${authority}
                            </a>
                        </h4>
                    </div>

                    <div class="panel-collapse collapse in" id="collapseOne">
                        <div class="panel-body">
                            <g:form class="form-horizontal" method="post" id="roleRightMap" url="[action:'saveRoleRight',controller:'manageRole']">
                                <g:hiddenField name="authority" id="authority" value="${authority}"/>
                                <g:each in="${resultList}" var="roleRight">
                                <div class="form-group">
                                    <label class="col-sm-3 control-label text-left">${roleRight.menuText} </label>
                                    <div class="col-sm-1">
                                            <label class="middle">
                                                <g:checkBox class="ace roleRigntchk" name="myCheckbox" value="${roleRight.id}" checked="${roleRight.hasAccess}" />
                                                <span class="lbl"></span>
                                            </label>
                                    </div>
                                    <label class="col-sm-8 control-label">${roleRight.description} </label>
                                </div>
                                </g:each>

                                <button type="reset" class="btn btn-info btn-sm">
                                    <i class="icon-key bigger-110"></i>
                                    Reset
                                </button>
                                <button type="submit" id="updateAccessMapBtn" class="btn btn-success btn-sm">
                                    <i class="icon-key bigger-110"></i>
                                    Update Access Right
                                </button>
                            </g:form>

                        </div>
                    </div>
                </div>
            </div>
            </div>
    </g:if>
        <!-- PAGE CONTENT ENDS -->
    </div><!-- /.col -->
</div><!-- /.row -->
<r:script>
    $(".chosen-select").chosen();
    $(document).ready(function() {
        $('#roleRightMap .roleRigntchk').change(function() {
            if(!$(this).hasClass('rightRightChange')) {
                $(this).addClass('rightRightChange');
            }
        });
        $("#roleRightMap").submit(function(e){
             e.preventDefault()
             var authority = $('#authority').val();
            $('#updateAccessMapBtn').prop('disabled', true);
            var accessMapping=""
            $('#roleRightMap input[type=checkbox].rightRightChange').each(function () {
                var isChecked =$(this).is(':checked');
                accessMapping=accessMapping+$(this).val()+"_"+isChecked+"^"
            });
             $.ajax({
                url:"${createLink(controller: 'manageRole', action: 'saveRoleRight')}?accessMapping="+accessMapping+"&authority="+authority,
                type:'post',
                dataType:'json',
                success:function(data){
                    $('#updateAccessMapBtn').prop('disabled', false);
                    alert(data.message);
                },
                failure:function(data){
                }
                })

        });
    });
</r:script>
</body>
</html>