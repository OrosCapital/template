
<%@ page contentType="text/html;charset=UTF-8" %>


<html>
<head>
    <meta name="layout" content="oros">
    <title>OrosCapital - Client</title>


    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>

    <meta charset="utf-8">
    <title>jQuery UI Datepicker - Default functionality</title>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
    <script src="//code.jquery.com/jquery-1.9.1.js"></script>
    <script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
    <link rel="stylesheet" href="/resources/demos/style.css">
    <script>

        $(document).ready(function () {

            $("#datepicker").datepicker();



           %{-- $.datepicker.setDefaults({
                showOn: "both",
                buttonImageOnly: true,
                buttonImage: "/template/static/images/date.png",
                buttonText: "Calendar"
            });  --}%


            $("#recipt").blur(function () {
                $("#showInfo").show("slow");
            });


            $("#cash").attr('checked', false).click(function () {
                $("#checkChild").hide();
                $("#bankTransChild").hide();
                $("#creditCardChild").hide();
                $("#showCashForm").slideToggle("slow");

            });


            $("#pacc").blur(function () {
                $("#showpInfo").show("slow");

            })
        });


         </script>

    <r:script>
        $(document).ready(function(){
            %{--$("#cash").click(function(){
                $("#bankTransChild").hide();
                $("#creditCardChild").hide();

                $("#checkChild").hide();
                $("#showCashForm").slideToggle();
                }); --}%


                 $("#checkParent").click(function(){
                     $("#bankTransChild").hide();
                     $("#creditCardChild").hide();
                     $("#showCashForm").hide();
                     $("#checkChild").slideToggle();
                });




            var i=0;
            $("#checkNo").blur(function(){
                var checkNo = $("#checkNo").val();//catch the variable with id checkNo
                i++;
                var previous=i-1;
                $("#check"+previous).hide();
                $.ajax({
                   type:"POST",
                    dataType:'json',
                    url:"${createLink(controller: 'bankDepositCheck', action: 'search')}",//assign controller
                    data:{checkNo:checkNo},//passing variable checkNo to the controller
                    success: function (data) {
                      var checkValue=data.checkValue //catch variable sending from controller bankDepositCheck

                            if(checkValue==1){
                            $("#checkErrorMessage").html(data.message).show();//show if requested resource is not found
                            }else{
                           $("#checkErrorMessage").hide();
                           //show retrived result on table
                            var row ="<table id='check"+i+"'><tr><td><img width='50' height='50'src='/oros/static/images/avatar5.png'> </td><td>";
                            row+="<tr><td>Customer Name :" + data.value.customerName + "</td><td>" ;
                            row+="<tr><td>Customer Name :" + data.value.accountNumber + "</td><td>";
                            row+="<tr><td>Account Type :"  + data.value.accountType + "</td></tr></table>";
                                        $('#checkTable').append(row);

                            }
                           }

                });
            });

            //code for bank transfer radio button

            $("#bankTransParent").click(function(){
                  $("#showCashForm").hide();
                 $("#checkChild").hide();
                 $("#creditCardChild").hide();
                 $("#bankTransChild").slideToggle("slow");
            });




            //code for bank transfer radio button
              var q=0;
            $("#btCheckNo").blur(function(){
              var btCheckNo = $("#btCheckNo").val();
                q++;
                var previous=q-1;
                $("#bankTransfer"+previous).hide();

                  $.ajax({
                   type:"POST",
                    dataType:'json',
                    url:"${createLink(controller: 'bankDepositBankTransfer', action: 'search')}",
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
                   $("#showCashForm").hide();
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
                    url:"${createLink(controller: 'creditCard', action: 'search')}",
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

<div class="page-header"><h1>Deposit Form</h1></div>

<div class="tab-content col-md-12">
<g:form name="depositForm" method="post" role="form" id="depositForm" class="form-horizontal">

<div class="col-md-6">
<div class="form-group">
    <label for="recipt" class="col-md-6 control-label">Recipt Account no</label>

    <div class="col-md-6">
        <input type="text" class="form-control" id="recipt" placeholder="Recipt Account no" required="required">
    </div>
</div>

<div class="form-group">
    <label for="bId" class="col-md-6 control-label">Branch ID</label>

    <div class="col-md-6">
        <input type="text" class="form-control" id="bId" placeholder="Branch ID" required="required">
    </div>
</div>

<div class="form-group">
    <label for="acType" class="col-md-6 control-label">Account Type</label>

    <div class="col-md-6">
        <select class="form-control" id="acType">
            <option value="1"></option>
            <option value="2">Savings</option>
            <option value="3">Current</option>
        </select>
    </div>
</div>

<div class="form-group">
    <label for="datepicker" class="col-md-6 control-label">Date of Deposit</label>

    <div class="col-md-6 ">
        <input type="text" id="datepicker">
         <img src="/template/static/images/date.png">

    </div>


   %{-- <g:datePicker name="myDate" value="${new Date()}"  precision="day" noSelection="['':'-Choose-']"/>  --}%
</div>

    <div class="form-group">
        <label class="col-md-6 control-label">Recipt Currency Code</label>

        <div class="col-md-6">
            %{--}<select class="form-control"id="rcc">
            <option>USD</option>  </select>  --}%
            <g:currencySelect name="myCurrency" value="${currency}"/>
        </div>
    </div>

    <div class="form-group">
        <label class="col-md-6 control-label">Deposit Currency Code</label>

        <div class="col-md-6">
            %{--} <select class="form-control"id="dcc">
            <option>BDT</option>  </select>    --}%
            <g:currencySelect name="myCurrency" value="${currency}"/>
        </div>
    </div>

    <div class="form-group">
        <label for="dAmount" class="col-md-6 control-label">Deposit Amount</label>

        <div class="col-md-6">
            <input type="text" class="form-control" id="dAmount" placeholder="Deposit Amount" required="required">
        </div>
    </div>


    <div class="col-md-offset-5 col-md-8">
        <input type="radio" name="bankDeposit" id="cash" value="1">
        <span>Cash</span>
        <input type="radio" name="bankDeposit" id="checkParent" value="2"/> Cheque
        <input type="radio" name="bankDeposit" id="bankTransParent" value="3"/> Bank Transfer
        <input type="radio" name="bankDeposit" id="creditCardParent" value="4"/> Credit Card

    </div>


    <div id="showCashForm" style="display:none">
        <div class="form-group">

            <div class="form-group">
                <label for="pacc" class="col-md-6 control-label">Paid Account no</label>

                <div class="col-md-6">
                    <input type="text" class="form-control" id="pacc" placeholder="Account no" required="required">
                </div>
            </div>

            <div class="form-group">
                <label for="pname" class="col-md-6 control-label">Name</label>

                <div class="col-md-6">
                    <input type="text" class="form-control" id="pname" placeholder="Name" required="required">
                </div>
            </div>

            <div class="form-group">
                <label for="add" class="col-md-6 control-label">Address</label>

                <div class="col-md-6">
                    <input type="text" class="form-control" id="add" placeholder="Address" required="required">
                </div>
            </div>

            <div class="form-group">
                <label for="com" class="col-md-6 control-label">Comments</label>

                <div class="col-md-6">
                    <input type="text" class="form-control" id="com" placeholder="">
                </div>
            </div>
        </div>
    </div>

    <div id="checkChild" style="display:none">
        <div class="form-group">
            <div class="form-group">
                <label class="col-md-6 control-label" for="checkNo">Check Number:</label>

                <div class="col-md-6">
                    <input id="checkNo" class="col-md-10" type="text" name="checkNo" placeholder="Check Number">
                </div>
            </div>

            <div class="form-group">
                <label for="transitno" class="col-md-6 control-label">Transit No:</label>

                <div class="col-md-6">
                    <input type="text" class="col-md-10" id="transitno" placeholder="Transit Number">
                </div>
            </div>


            <div class="form-group">
                <label for="acname" class="col-md-6 control-label">Account Holder name:</label>

                <div class="col-md-6">
                    <input type="text" class="col-md-10" id="acname" placeholder="Account Holder name">
                </div>
            </div>


            <div class="form-group">
                <label for="address" class="col-md-6 control-label">Address:</label>

                <div class="col-md-6">
                    <input type="text" class="col-md-10" id="address" placeholder="Address">
                </div>
            </div>


            <div class="form-group">
                <label for="comments" class="col-md-6 control-label">Comments:</label>

                <div class="col-md-6">
                    <input type="text" class="col-md-10" id="comments" placeholder="Comments">
                </div>
            </div>
        </div>
    </div>

    <div id="bankTransChild" style="display:none">
        <div class="form-group">

            <div class="form-group">
                <label class="col-md-6 control-label" for="btCheckNo">Account Number:</label>

                <div class="col-md-6">
                    <input id="btCheckNo" class="col-md-12" type="text" name="btCheckNo"
                           placeholder="Account Number">
                </div>
            </div>


            <div class="form-group">
                <label class="col-md-6 control-label" for="transitNumber">Transit No:</label>

                <div class="col-md-6">
                    <input id="transitNumber" class="col-md-12" type="text" name="transitNo"
                           placeholder="Transit No">
                </div>
            </div>


            <div class="form-group">
                <label class="col-md-6 control-label" for="accountHolderName">Account Holder Name</label>

                <div class="col-md-6">
                    <input id="accountHolderName" class="col-md-12" type="text" name="accountHolderName"
                           placeholder="Ac/Holder Name">
                </div>
            </div>


            <div class="form-group">
                <label class="col-md-6 control-label" for="address">Address</label>

                <div class="col-md-6">
                    <input id="address1" class="col-md-12" type="text" name="address" placeholder="Address">
                </div>
            </div>


            <div class="form-group">
                <label class="col-md-6 control-label" for="comments">Comments</label>

                <div class="col-md-6">
                    <input id="comments1" class="col-md-12" type="text" name="comments" placeholder="Comments">
                </div>
            </div>

        </div>

    </div>

    <div id="creditCardChild" style="display:none">
        <div class="form-group">

            <div class="form-group">
                <label class="col-md-6 control-label"
                       for="creditCardHolderFirstName">Credit Card Holder First Name:</label>

                <div class="col-md-6">
                    <input id="creditCardHolderFirstName" class="col-md-12" type="text"
                           name="creditCardHolderFirstName" placeholder="Check Number">
                </div>
            </div>


            <div class="form-group">
                <label class="col-md-6 control-label" for="creditCardHolderLastName">Last Name:</label>

                <div class="col-md-6">
                    <input id="creditCardHolderLastName" class="col-md-12" type="text"
                           name="creditCardHolderLastName" placeholder="Check Number">
                </div>
            </div>


            <div class="form-group">
                <label class="col-md-6 control-label" for="creditCardExpiredDate">Expired Date:</label>

                <div class="col-md-6">
                    <input id="creditCardExpiredDate" class="col-md-12" type="text" name="creditCardExpiredDate"
                           placeholder="Check Number">
                </div>
            </div>


            <div class="form-group">
                <label class="col-md-6 control-label" for="creditCardSecurityCode">Security Code:</label>

                <div class="col-md-6">
                    <input id="creditCardSecurityCode" class="col-md-12" type="text" name="creditCardSecurityCode"
                           placeholder="Check Number">
                </div>
            </div>

        </div>

    </div>


    <div class="col-md-offset-5 col-md-8">

        <button class="btn btn-primary btn-success" type="submit" id="done">
            <i class="icon-ok"></i>
            Done
        </button>

    </div>
</div>


<div class="col-md-6">
    <div id="showInfo" style="display:none">

        <div class="col-md-offset-4">

            <img border="1" class="img-polaroid" alt="150x150" src=" /template/static/images/pic.png" width="150"
                 height="150">

        </div>

        <div class="form-group">

            <label class="col-md-6 control-label">Name :</label>


            <label class="col-md-2 control-label">Mr. X</label>

        </div>

        <div class="form-group">
            <label class="col-md-6 control-label">Contact no :</label>


            <label class="col-md-3 control-label">+880171xxxxxxx</label>

        </div>

        <div class="form-group">
            <label class="col-md-6 control-label">E-mail :</label>


            <label class="col-md-2 control-label">email@gsl.com</label>

        </div>

        <div class="form-group">
            <label class="col-md-6 control-label">Address :</label>


            <label class="col-md-3 control-label">Banani,Dhaka</label>

        </div>

        <div class="form-group">
            <div style="position:relative;" class="col-md-offset-4">
                <a class='btn btn-primary btn-purple btn-sm' href='javascript:'>
                    Browse File.
                    <input type="file"
                           style='position:absolute;z-index:2;top:0;left:0;filter: alpha(opacity=0);-ms-filter:"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)";opacity:0;background-color:transparent;color:transparent;'
                           name="file_source" size="40" onchange='$("#upload-file-info").html($(this).val());'>
                    <i class="glyphicon glyphicon-folder-open"></i>
                </a>
                &nbsp;
                <span class='label label-info' id="upload-file-info"></span>
            </div>

        </div>

    </div>

    <div style="height:50px"></div>

    <div id="showpInfo" style="display: none; position: static">

        <div class="col-md-offset-4">

            <img border="1" class="img-polaroid" alt="150x150" src=" /template/static/images/pic2.png" width="150"
                 height="150">

        </div>

        <div class="form-group">
            <label class="col-md-6 control-label">Name :</label>


            <label class="col-md-2 align-left control-label">Miss Y</label>

        </div>

        <div class="form-group">
            <label class="col-md-6 control-label">Address :</label>


            <label class="col-md-2 control-label">Mirpur,dhaka</label>

        </div>

        <div class="form-group">
            <label class="col-md-6 control-label">Contact no :</label>


            <label class="col-md-3 control-label">+880161xxxxxxx</label>

        </div>

        <div class="form-group">
            <label class="col-md-6 control-label">E-mail :</label>


            <label class="col-md-2 control-label">email@gmail.com</label>

        </div>

    </div>

</div>

</g:form>

</div>

</body>
</html>