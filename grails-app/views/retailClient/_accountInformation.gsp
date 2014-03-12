<g:form name="retailAccountInformationForm" method="post" role="form" class="form-horizontal">
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <!-- PAGE CONTENT BEGINS -->

            <div class="form-group">
                <label for="titleOfTheAccount" class="col-xs-3 col-sm-3 col-md-3 col-lg-3 control-label">
                    Title of the Account</label>
                <div class="col-xs-5 col-sm-5 col-md-5 col-lg-5">
                    <input type="text" class="col-xs-12 col-sm-12 col-md-12 col-lg-12" placeholder="Title of the Account"
                           id="titleOfTheAccount" name="titleOfTheAccount">
                </div>
            </div>
            <div class="form-group">
                <label for="openingDate" class="col-xs-3 col-sm-3 col-md-3 col-lg-3 control-label">
                    Opening Date</label>
                <div class="col-xs-5 col-sm-5 col-md-5 col-lg-5">
                    <input type="text" class="col-xs-12 col-sm-12 col-md-12 col-lg-12" placeholder="Opening Date"
                           id="openingDate" name="openingDate">
                </div>
            </div>
            <div class="form-group">
                <label for="accountPurpose" class="col-xs-3 col-sm-3 col-md-3 col-lg-3 control-label">
                    Account Purpose</label>
                <div class="col-xs-5 col-sm-5 col-md-5 col-lg-5">
                    <input type="text" class="col-xs-12 col-sm-12 col-md-12 col-lg-12" placeholder="Account Purpose"
                           id="accountPurpose" name="accountPurpose">
                </div>
            </div>
            <div class="form-group">
                <label for="modeOfOperation" class="col-xs-3 col-sm-3 col-md-3 col-lg-3 control-label">
                    Mode Of Operation</label>
                <div class="col-xs-5 col-sm-5 col-md-5 col-lg-5">
                    <g:radioGroup name="modeOfOperation" id="modeOfOperation" labels="['Singly','Jointly','Any Of Us']" values="[1,2,3]" value="1">
                        <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">${it.radio} <g:message code="${it.label}" /></div>
                    </g:radioGroup>
                </div>
            </div>
            <div class="form-group">
                <label for="sourceOfFund" class="col-xs-3 col-sm-3 col-md-3 col-lg-3 control-label">
                    Source Of Fund</label>
                <div class="col-xs-5 col-sm-5 col-md-5 col-lg-5">
                    <input type="text" class="col-xs-12 col-sm-12 col-md-12 col-lg-12" placeholder="Source Of Fund"
                           id="sourceOfFund" name="sourceOfFund">
                </div>
            </div>
            <div class="form-group">
                <label for="initialDeposit" class="col-xs-3 col-sm-3 col-md-3 col-lg-3 control-label">
                    Initial Deposit</label>
                <div class="col-xs-5 col-sm-5 col-md-5 col-lg-5">
                    <input type="text" class="col-xs-12 col-sm-12 col-md-12 col-lg-12" placeholder="Initial Deposit"
                           id="initialDeposit" name="initialDeposit">
                </div>
            </div>
            <div class="form-group">
                <label for="paymentMethod" class="col-xs-3 col-sm-3 col-md-3 col-lg-3 control-label">
                    Payment Method</label>
                <div class="col-xs-5 col-sm-5 col-md-5 col-lg-5">
                    <select name="paymentMethod" id="paymentMethod" class="form-control">
                        <option value="">- Choose One -</option>
                        <option value="1">Cash</option>
                        <option value="2">Check</option>
                        <option value="3">Card</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label for="residentialStatus" class="col-xs-3 col-sm-3 col-md-3 col-lg-3 control-label">
                    Residential Status</label>
                <div class="col-xs-5 col-sm-5 col-md-5 col-lg-5">
                    <input type="text" class="col-xs-12 col-sm-12 col-md-12 col-lg-12" placeholder="Residential Status"
                           id="residentialStatus" name="residentialStatus">
                </div>
            </div>
            <div class="form-group">
                <label for="accountOpenedBy" class="col-xs-3 col-sm-3 col-md-3 col-lg-3 control-label">
                    Account Opened By</label>
                <div class="col-xs-5 col-sm-5 col-md-5 col-lg-5">
                    <input type="text" class="col-xs-12 col-sm-12 col-md-12 col-lg-12" placeholder="Account Opened By"
                           id="accountOpenedBy" name="accountOpenedBy">
                </div>
            </div>
            <div class="form-group">
                <label for="acceptanceTerms&Conditions" class="col-xs-3 col-sm-3 col-md-3 col-lg-3 control-label">
                    Acceptance Terms & Conditions</label>
                <div class="col-xs-5 col-sm-5 col-md-5 col-lg-5">
                    <g:checkBox name="acceptanceTerms&Conditions" id="acceptanceTerms&Conditions"></g:checkBox>
                </div>
            </div>

        </div><!-- /.col -->
    </div>

    <div class="clearfix form-actions">
        <div class="col-md-offset-5 col-md-9">
            <button type="submit" name="customerBasicSubmit" id="customerBasicSubmit" class="btn btn-info">
                <i class="icon-ok bigger-110"></i>Update
            </button>
        </div>
    </div>

</g:form>