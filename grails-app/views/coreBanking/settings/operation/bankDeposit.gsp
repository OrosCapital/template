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
                                $('#checkTable').append(row);
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
            $("#btCheckNo").blur(function(){
            var btCheckNo = $("#btCheckNo").val();
            q++;
            var previous=q-1;
            $("#bankTransfer"+previous).hide();
                  $.ajax({
                   type:"POST",
                    dataType:'json',
                    url:"${createLink(controller: 'bankDeposit', action: 'bankTransfer')}",
                    data:{btCheckNo:btCheckNo},
                    success: function (data) {
                    var errorCode=data.btnErrorMessage
                        if(errorCode==1){
                        $("#btErrorMessage").html(data.message).show();
                        }else{
                        $("#btErrorMessage").hide();
                        var row ="<table id='bankTransfer"+q+"'><tr><td><img width='50' height='50'src='/oros/static/images/avatar5.png'> </td><td>";
                            row+="<tr><td>Customer Name :" + data.value.accountHolderName + "</td><td>" ;
                            row+="<tr><td>Customer Name :" + data.value.address + "</td><td>";
                            row+="<tr><td>Account Type :"  + data.value.comments + "</td></tr></table>";
                            $('#btResult').append(row);
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
                       } else{
                       $("#creditErrorMessage").hide();
                       var info="<h4 id='creditCard"+p+"'>"+data.message+"</h4>";
                        $('#creditTable').append(info);
                           }
                           }
                        });
                     });
        });
        </r:script>
    </head>

     <body>
        <form name="bankDeposit" method="post" role="form" class="form-horizontal">

            <input type="radio" name="bankDeposit" id="checkParent" value="1"/> Check
            <input type="radio" name="bankDeposit" id="bankTransParent" value="2"/> Bank Transfer
            <input type="radio" name="bankDeposit" id="creditCardParent" value="3"/> Credit Card

             <!--check start here  -->

            <div id="checkChild" style="display:none">
                <div class="col-md-12">
                    <div class="col-md-6">

                        <div class="form-group">
                            <label class="col-md-5" for="checkNo">Check Number:</label>

                            <div class="col-md-7">
                                <input id="checkNo" class="col-md-10" type="text" name="checkNo" placeholder="Check Number">
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="transitno" class="col-md-5">Transit No:</label>

                            <div class="col-md-7">
                                <input type="text" class="col-md-10" id="transitno" placeholder="Transit Number">
                            </div>
                        </div>


                        <div class="form-group">
                            <label for="acname" class="col-md-5">Account Holder name:</label>

                            <div class="col-md-7">
                                <input type="text" class="col-md-10" id="acname" placeholder="Account Holder name">
                            </div>
                        </div>


                        <div class="form-group">
                            <label for="address" class="col-md-5">Address:</label>

                            <div class="col-md-7">
                                <input type="text" class="col-md-10" id="address" placeholder="Address">
                            </div>
                        </div>


                        <div class="form-group">
                            <label for="comments" class="col-md-5">Comments:</label>

                            <div class="col-md-7">
                                <input type="text" class="col-md-10" id="comments" placeholder="Comments">
                            </div>
                        </div>

                    </div>

                    <div class="" style="" id="checkTable">
                        <div id="checkErrorMessage"></div>
                    </div>
                </div>

            </div>


            <!--check end here  -->



            <!--check bank transfer start here  -->

            <div id="bankTransChild" style="display:none">
                <div class="col-md-12">
                    <div class="col-md-6">

                        <div class="form-group">
                            <label class="col-md-4" for="btCheckNo">Account Number:</label>

                            <div class="col-md-8">
                                <input id="btCheckNo" class="col-md-12" type="text" name="btCheckNo"
                                       placeholder="Account Number">
                            </div>
                        </div>


                        <div class="form-group">
                            <label class="col-md-4" for="transitNumber">Transit No:</label>

                            <div class="col-md-8">
                                <input id="transitNumber" class="col-md-12" type="text" name="transitNo"
                                       placeholder="Transit No">
                            </div>
                        </div>


                        <div class="form-group">
                            <label class="col-md-4" for="accountHolderName">Account Holder Name:</label>

                            <div class="col-md-8">
                                <input id="accountHolderName" class="col-md-12" type="text" name="accountHolderName"
                                       placeholder="Ac/Holder Name">
                            </div>
                        </div>


                        <div class="form-group">
                            <label class="col-md-4" for="address">Address:</label>

                            <div class="col-md-8">
                                <input id="address1" class="col-md-12" type="text" name="address" placeholder="Address">
                            </div>
                        </div>


                        <div class="form-group">
                            <label class="col-md-4" for="comments">Comments:</label>

                            <div class="col-md-8">
                                <input id="comments1" class="col-md-12" type="text" name="comments" placeholder="Comments">
                            </div>
                        </div>

                    </div>

                    <div id="btResult">

                        <div id="btErrorMessage"></div>
                    </div>
                </div>
            </div>


            <!-- bank transfer end here  -->

            <!--check credit card  start here  -->

            <div id="creditCardChild" style="display: none">
                <div class="col-md-12">
                    <div class="col-md-6">

                        <div class="form-group">
                            <label class="col-md-4" for="creditCardHolderFirstName">Credit Card Holder First Name:</label>

                            <div class="col-md-8">
                                <input id="creditCardHolderFirstName" class="col-md-12" type="text"
                                       name="creditCardHolderFirstName" placeholder="Credit Card Holder First Name">
                            </div>
                        </div>


                        <div class="form-group">
                            <label class="col-md-4" for="creditCardHolderLastName">Last Name:</label>

                            <div class="col-md-8">
                                <input id="creditCardHolderLastName" class="col-md-12" type="text"
                                       name="creditCardHolderLastName" placeholder="Last Name">
                            </div>
                        </div>


                        <div class="form-group">
                            <label class="col-md-4" for="creditCardExpiredDate">Expired Date:</label>

                            <div class="col-md-8">
                                <input id="creditCardExpiredDate" class="col-md-12" type="text" name="creditCardExpiredDate"
                                       placeholder="Expired Date">
                            </div>
                        </div>


                        <div class="form-group">
                            <label class="col-md-4" for="creditCardSecurityCode">Security Code:</label>

                            <div class="col-md-8">
                                <input id="creditCardSecurityCode" class="col-md-12" type="text" name="creditCardSecurityCode"
                                       placeholder="Security Code">
                            </div>
                        </div>

                    </div>


                    <div class="" style="" id="creditTable">
                        <div id="creditErrorMessage">

                        </div>
                    </div>
                </div>
            </div>

            <!-- credit card end here  -->
            </form>
      </body>
</html>

