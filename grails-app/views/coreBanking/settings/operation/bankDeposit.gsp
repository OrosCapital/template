<%--
  Created by IntelliJ IDEA.
  User: rabin
  Date: 2/24/14
  Time: 4:58 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="oros">
    <title></title>
    <r:script>
         $(document).ready(function(){
                $("#checkParent").click(function(){
                $("#bankTransChild").hide();
                $("#creditCardChild").hide();
                $("#checkChild").slideToggle();
            });

             var i=0;
            $("#checkNo").blur(function(){
                var checkNo = $("#checkNo").val();
                i++;
                var previous=i-1;
                $("#check"+previous).hide();
                $.ajax({
                    type:"POST",
                    dataType:'json',
                    url:"${createLink(controller: 'bankDeposit', action: 'check')}",
                    data:{checkNo:checkNo},
                    success: function (data) {
                    var checkValue=data.checkValue
                            if(checkValue==1){
                            $("#checkErrorMessage").html(data.message).show();
                            }else{
                            $("#checkErrorMessage").hide();
                              var row ="<table id='check"+i+"'><tr><td><img width='50' height='50'src='/template/static/images/grails_logo.png'> </td><td>";
                                row+="<tr><td>Customer Name :" + data.value.customerName + "</td><td>" ;
                                row+="<tr><td>Customer Name :" + data.value.accountNumber + "</td><td>";
                                row+="<tr><td>Account Type :"  + data.value.accountType + "</td></tr></table>";
                                $('#checkResult').append(row);
                              }
                              }
                             });
                    });

            //code for bank transfer

            $("#bankTransParent").click(function(){
                 $("#checkChild").hide();
                 $("#creditCardChild").hide();
                 $("#bankTransChild").slideToggle("slow");
                 });

            var q=0;
            $("#bankTransferCheckNo").blur(function(){
            var bankTransferCheckNo = $("#bankTransferCheckNo").val();
            q++;
            var previous=q-1;
            $("#bankTransfer"+previous).hide();
                  $.ajax({
                   type:"POST",
                    dataType:'json',
                    url:"${createLink(controller: 'bankDeposit', action: 'bankTransfer')}",
                    data:{bankTransferCheckNo:bankTransferCheckNo},
                    success: function (data) {
                    var errorCode=data.btnErrorMessage
                        if(errorCode==1){
                        $("#btErrorMessage").html(data.message).show();
                        }else{
                        $("#btErrorMessage").hide();
                        var row ="<table id='bankTransfer"+q+"'><tr><td><img width='50' height='50'src='/template/static/images/grails_logo.png'> </td><td>";
                            row+="<tr><td>Customer Name :" + data.value.accountHolderName + "</td><td>" ;
                            row+="<tr><td>Customer Name :" + data.value.address + "</td><td>";
                            row+="<tr><td>Account Type :"  + data.value.comments + "</td></tr></table>";
                            $('#bankTransferResult').append(row);
                             }
                            }
                    });
                    });

               $("#creditCardParent").click(function(){
                 $("#checkChild").hide();
                 $("#bankTransChild").hide();
                 $("#creditCardChild").slideToggle("slow");
                 });

               var p=0;
               $("#creditCardHolderFirstName").blur(function(){
               var creditCardHolderFirstName = $("#creditCardHolderFirstName").val();
                p++;
                var previous=p-1;
                $("#creditCard"+previous).hide();

                 $.ajax({
                    type:"POST",
                    cache:false,
                    dataType:'json',
                    url:"${createLink(controller: 'bankDeposit', action: 'creditCard')}",
                    data:{creditCardHolderFirstName:creditCardHolderFirstName},
                    success: function (data) {
                    var error=data.error;
                    if(error==1){
                    $("#creditErrorMessage").html(data.message).show();
                    }else{
                    $("#creditErrorMessage").hide();
                    var info="<h4 id='creditCard"+p+"'>"+data.message+"</h4>";
                    $('#creditCardResult').append(info);
                    }
                    }
                    });
                    });
        });
    </r:script>
</head>

<body>

<form name="bankDeposit" method="post" role="form" class="form-horizontal">
    <div class="col-md-12">
        <div class="col-md-8">
            <div class="form-group">
                <div class="col-md-2">
                    <input type="radio" name="bankDeposit" id="checkParent" class="ace" value="1">
                    <span class="lbl">Check</span>
                </div>

                <div class="col-md-3">
                    <input type="radio" name="bankDeposit" id="bankTransParent" class="ace" value="2">
                    <span class="lbl">Bank Transfer</span>
                </div>

                <div class="col-md-3">
                    <input type="radio" name="bankDeposit" id="creditCardParent" class="ace" value="3">
                    <span class="lbl">Credit Card</span>
                </div>

            </div>
        </div>
    </div>

    <!--check start here-->
    <div id="checkChild" style="display:none">
        <g:render template='/coreBanking/settings/operation/depositCheck'/>
    </div>
    <!--check end here-->

    <!--bank transfer start here-->
    <div id="bankTransChild" style="display:none">
        <g:render template='/coreBanking/settings/operation/depositBankTransfer'/>
    </div>
    <!--bankTransfer end here-->

    <!--creditCard  start here-->
    <div id="creditCardChild" style="display: none">
        <g:render template='/coreBanking/settings/operation/depositCreditCard'/>
    </div>
    <!--creditCard end here-->
</form>
</div>
</body>
</html>
