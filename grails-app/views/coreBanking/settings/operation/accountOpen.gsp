
<!DOCTYPE html>
 <html>
    <head>
        <style>
        .form-control, label, textarea, input[type="text"], input[type="password"], input[type="datetime"], input[type="datetime-local"], input[type="date"], input[type="month"], input[type="time"], input[type="week"], input[type="number"], input[type="email"], input[type="url"], input[type="search"], input[type="tel"], input[type="color"]{font-size: 12px;}
        </style>
        <meta name="layout" content="oros">
        <title>Account Opening</title>
        <r:script>
              $(document).ready(function(){
               $("#signPreview").hide();
               $("#multiform").submit(function(e)  {
                    var formObj = $(this);
                    var formURL = formObj.attr("save");
                    var formData = new FormData(this);
                    $.ajax({
                        url:"${createLink(controller: 'accountOpen', action: 'save')}",
                        type: 'POST',
                        data:  formData,
                        dataType:'json',
                        mimeType:"multipart/form-data",
                        contentType: false,
                        cache: false,
                        processData:false,
                        success: function (data){
                        $("#signPreview").show();
                        var signName=data.imgPath;
                        var imagePath="/template/static/images/userImages/"+signName;
                        alert(imagePath);
                        $("#signId").attr({
                           src:imagePath
                           })
                        }
                        });
                       e.preventDefault();
                       e.unbind();
                       });

                     $('#editSignature').click(function(){
                      $("#signPreview").hide();
                      $("#imgId").val(null);
                      });

                    $("#id-date-picker-1").click(function(){
                    $("#id-date-picker-1").datepicker();
                    });
               });
        </r:script>
    </head>

   <body>

     <div class="row">
       <div class="col-md-12">
                <div class="page-header">
                    <h1>Account Opening</h1>
                </div>
                        <div class="tabbable">
                            <ul id="currentAccount" class="nav nav-tabs padding-12 tab-color-blue background-blue">
                                <li class="active" id="accountInfoListElement">
                                    <a href="#accountInformation" data-toggle="tab">Account Information</a>
                                </li>
                                <li class="" id="introducerInfoListElement">
                                    <a href="#introducerInformation" data-toggle="tab">Introducer Information</a>
                                </li>

                                <li class="" id="otherBankAccountInfoListElement">
                                    <a href="#otherBankAccountInfo" data-toggle="tab">Other Bank A/C Information</a>
                                </li>

                                <li class="" id="attachmentId">
                                    <a href="#attachmentInfo" data-toggle="tab">Attachment</a>
                                </li>


                                <li class="" id="basicInformationId">
                                    <a href="#basicInfo" data-toggle="tab">Basic Information</a>
                                </li>
                            </ul>

                            <div class="tab-content">
                                <!--account information start here-->
                                <div class="tab-pane active" id="accountInformation">
                                    <g:render template='/coreBanking/settings/operation/accountInformation'/>
                                </div>

                                <div class="tab-pane" id="introducerInformation">
                                    <g:render template='/coreBanking/settings/operation/introducerInformation'/>
                                </div>

                                <div class="tab-pane" id="attachmentInfo">
                                    <g:render template='/coreBanking/settings/operation/attachmentInformation'/>
                                </div>

                                <div class="tab-pane" id="otherBankAccountInfo">
                                    <g:render template='/coreBanking/settings/operation/otherBankInformation'/>
                                </div>

                            </div>
                        </div>
       </div>
     </div>
   </body>
 </html>