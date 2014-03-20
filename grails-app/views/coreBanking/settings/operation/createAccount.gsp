<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="oros">
    <title></title>
    <style type="text/css">
    select .list {
        width:200px;
        height:100px;
    }
    </style>
    <r:script>
        $(document).ready(function () {

        });

        $("#clientId").blur(function () {
            var clientId = $("#clientId").val();
            if (clientId == "782950") {
                $("#clientBasicInfo").show();
                $("#acCategoryDiv").show();
                $("#acTypeDiv").show();

            } else {
                alert(clientId + " ID of client not found.");
                $("#clientBasicInfo").hide();
                $("#acCategoryDiv").hide();
                $("#acTypeDiv").hide();
                return false
            }

        });
        function showAccountCategoryInfo() {
            var accountCategoryId = $('select#accountCategoryId option:selected').val();
            if (accountCategoryId == 1) {
                $("#currentProductDiv").hide();
                $("#savingsProductDiv").show();
            } else if (accountCategoryId == 2) {
                $("#savingsProductDiv").hide();
                $("#currentProductDiv").show();
            } else {
//                $("#select#accountCategoryId").prop("selectedIndex",-1);
                $("#savingsProductDiv").hide();
                $("#currentProductDiv").hide();
            }
        }

        function showAccountTypeInfo() {
            var accountTypeId = $('select#accountTypeId option:selected').val();
            if (accountTypeId == 1) {
                $("#clientIdDiv").hide();
            } else if (accountTypeId == 2) {
                $("#clientIdDiv").show();
            } else {
            }
        }

        function move_list_items(sourceid, destinationid)
        {
            $("#"+sourceid+"  option:selected").appendTo("#"+destinationid);
        }


        function resetForm() {
            $("#id").val('');
            $("input[type=text],input[type=number], input[type=select], textarea").val('');
            $("#clientBasicInfo").hide();
            $("#acCategoryDiv").hide();
            $("#acTypeDiv").hide();
            $("#savingsProductDiv").hide();
            $("#currentProductDiv").hide();
            $("#clientIdDiv").hide();
        }
    </r:script>
</head>
<body>
<div class="page-header">
    <h1>
        Creating Account
    </h1>
</div>

<div class="row">
    <div class="col-xs-6">
        <g:form class="form-horizontal" role="form" name="searchClient" id="searchClient">
            <div class="form-group">
                <label class="col-sm-4 control-label no-padding-right" for="clientId">Client ID</label>

                <div class="col-sm-8">
                    <input type="text" id="clientId"
                           name="clientId"
                           placeholder="Client ID (782950)"
                           class="col-xs-12 col-sm-8" max="17"/>
                </div>
            </div>

            <div class="form-group" id="acCategoryDiv" style="display: none">
                <label class="control-label col-md-4 no-padding-right"
                       for="accountCategoryId">Choose A/C Category</label>

                <div class="col-sm-8">
                    <select class="form-control" onchange="showAccountCategoryInfo();"
                            name="accountCategoryId" id="accountCategoryId">
                        <option value="-1">Choose A/C Category</option>
                        %{--<g:each in="${currencyList}" var="currency">--}%
                        <option value="1">Savings A/C</option>
                        <option value="2">Current A/C</option>
                        %{--</g:each>--}%
                    </select>
                </div>
            </div>

            <div class="form-group" id="acTypeDiv" style="display: none">
                <label class="control-label col-md-4 no-padding-right"
                       for="accountTypeId">Choose A/C Type</label>

                <div class="col-sm-8">
                    <select class="form-control" onchange="showAccountTypeInfo()"
                            name="accountTypeId" id="accountTypeId">
                        <option value="-1">Choose A/C Type</option>
                        %{--<g:each in="${currencyList}" var="currency">--}%
                        <option value="1">Individual A/C</option>
                        <option value="2">Joint A/C</option>
                        %{--</g:each>--}%
                    </select>
                </div>
            </div>

            <div class="form-group" id="savingsProductDiv" style="display: none">
                <label class="control-label col-md-4 no-padding-right"
                       for="savingsProductId">Choose Product</label>

                <div class="col-sm-8">
                    <select class="form-control" onchange=""
                            name="savingsProductId" id="savingsProductId">
                        <option value="-1">Choose Product</option>
                        %{--<g:each in="${currencyList}" var="currency">--}%
                        <option value="1">SP A</option>
                        <option value="2">SP B</option>
                        %{--</g:each>--}%
                    </select>
                </div>
            </div>

            <div class="form-group" id="currentProductDiv" style="display: none">
                <label class="control-label col-md-4 no-padding-right"
                       for="currentProductId">Choose Product</label>

                <div class="col-sm-8">
                    <select class="form-control" onchange=""
                            name="currentProductId" id="currentProductId">
                        <option value="-1">Choose Product</option>
                        %{--<g:each in="${currencyList}" var="currency">--}%
                        <option value="1">CP A</option>
                        <option value="1">CP B</option>
                        %{--</g:each>--}%
                    </select>
                </div>
            </div>

            <div class="form-group" id="clientIdDiv" style="display: none">
                <label class="control-label col-md-4 no-padding-right">Choose Joint Client</label>

                <div class="col-sm-8">
                    <table cellpadding="5" cellspacing="5">

                        <tbody>

                        <tr>

                            <td colspan="2">
                                <select id="from_select_list" multiple="multiple" name="from_select_list">
                                    <option value="apple">Apple</option>
                                    <option value="mango">Mango</option>
                                    <option value="bannana">Bannana</option>
                                    <option value="grapes">Grapes</option>
                                </select>
                            </td>

                            <td colspan="2">
                                <select id="to_select_list" multiple="multiple" name="to_select_list">

                                </select>
                            </td>

                        </tr>

                        <tr>

                            <td><input id="moveright" type="button" value="Move Right" onclick="move_list_items('from_select_list','to_select_list');" /></td>

                            <td><input id="moveleft" type="button" value="Move Left" onclick="move_list_items('to_select_list','from_select_list');" /></td>

                        </tr>

                        </tbody>

                    </table>

                    %{--<select class="form-control" onchange=""
                            name="jointClientId" id="jointClientId">
                        <option value="-1">Choose Joint Client</option>

                        <option value="1">Client A</option>
                        <option value="1">Client B</option>

                    </select>--}%
                </div>
            </div>

            <div class="buttons">
                <button type="submit" class="btn btn-sm btn-success" id="createAccount" style="display: none"
                        name="Create">Create</button>
                <button type="button" class="btn btn-light btn-white" id="reset" onclick="resetForm();"
                        name="reset">Reset</button>
            </div>

        </g:form>
    </div>

    %{-- Basic Client Information--}%
    <div class="col-xs-6">
        <div class="user-profile row" id="clientBasicInfo" style="display: none">
          <div class="col-xs-9 col-sm-3 center">
              <span class="profile-picture">
                  <img src="/template/static/images/pic.png"
                       alt="Client Avatar"
                       class="img-responsive editable-click editable-empty"
                       id="avatar" style="display: block;">Client A</img>
              </span>
              <div class="space-2"></div>
          </div>

            <div class="col-xs-9">
                <div class="profile-user-info profile-user-info-striped">
                    <div class="profile-info-row">
                        <div class="profile-info-name">Name of Client </div>

                        <div class="profile-info-value">
                            <span id="username" class="editable editable-click"
                                  style="display: inline;">Client A</span>
                        </div>
                    </div>

                    <div class="profile-info-row">
                        <div class="profile-info-name">Date of Birth </div>

                        <div class="profile-info-value">
                            <span id="age" class="editable editable-click" style="display: inline;">20/06/2010</span>
                        </div>
                    </div>

                    <div class="profile-info-row">
                        <div class="profile-info-name">Contact no: </div>

                        <div class="profile-info-value">
                            <span id="signup" class="editable editable-click">+880171xxxxxxx</span>
                        </div>
                    </div>

                    <div class="profile-info-row">
                        <div class="profile-info-name">E-mail:</div>

                        <div class="profile-info-value">
                            <span id="email" class="editable editable-click">email@gsl.com</span>
                        </div>
                    </div>

                    <div class="profile-info-row">
                        <div class="profile-info-name">Nationality:</div>

                        <div class="profile-info-value">
                            <span id="nationality" class="editable editable-click">Bangladehi</span>
                        </div>
                    </div>

                    <div class="profile-info-row">
                        <div class="profile-info-name">Address:</div>

                        <div class="profile-info-value">
                            <span id="login" class="editable editable-click">Banani,Dhaka</span>
                        </div>
                    </div>
                </div>
          </div>
        </div>

    </div>
</div>
</body>
</html>