
<!DOCTYPE html>
<html>
<head>
    <style>
    .form-control, label, textarea, input[type="text"], input[type="password"], input[type="datetime"], input[type="datetime-local"], input[type="date"], input[type="month"], input[type="time"], input[type="week"], input[type="number"], input[type="email"], input[type="url"], input[type="search"], input[type="tel"], input[type="color"]{font-size: 12px;}
    </style>
    <meta name="layout" content="oros">
    <title>Current Account</title>
    <r:script>
        $(document).ready( function() {

        });


    </r:script>
</head>

<body>

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

                <table class="table">
                    <tr class="success">
                        <th>SI No</th>
                        <th>Name</th>
                        <th>Account No</th>
                        <th>Image</th>
                        <th>Signature</th>
                        <th></th>
                        <th></th>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>Golam Murtoza</td>
                        <td>0652054</td>
                        <td><img src="/oros/static/images/avatar.png" height="20" width="30"></td>

                        <td>
                            <form name="signUploadForm" id="signUploadForm" method="">

                                <input type="text" name="fname"/>
                                <input type="file" name="clientImage"/>
                                <input type="button" id="uploadImage" value="Save"/>
                            </form>

                        </td>
                    </tr>
                </table>
                <div id="signShow"> </div>
            </div>

            <div class="tab-pane" id="otherBankAccountInfo">
                <g:render template='/coreBanking/settings/operation/otherBankInformation'/>
            </div>

        </div>
    </div>

</body>
</html>