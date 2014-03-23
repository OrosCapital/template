<g:form name="retailAccountInformationForm" method="post" role="form" class="form-horizontal"
        controller="retailClient" action="create">
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
                    <input type="date" class="col-xs-10 col-sm-10 col-md-10 col-lg-10" placeholder="Opening Date" id="openingDate"
                           name="openingDate" value=""/>
                    <span class="input-group-addon">
                        <i class="icon-calendar"></i>
                    </span>
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
                <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3 control-label">
                    Mode Of Operation</div>
                <div class="col-xs-5 col-sm-5 col-md-5 col-lg-5">
                    Any of Us
                </div>
            </div>
            %{--<div class="form-group">--}%
                %{--<label for="sourceOfFund" class="col-xs-3 col-sm-3 col-md-3 col-lg-3 control-label">--}%
                    %{--Source Of Fund</label>--}%
                %{--<div class="col-xs-5 col-sm-5 col-md-5 col-lg-5">--}%
                    %{--<input type="text" class="col-xs-12 col-sm-12 col-md-12 col-lg-12" placeholder="Source Of Fund"--}%
                           %{--id="sourceOfFund" name="sourceOfFund">--}%
                %{--</div>--}%
            %{--</div>--}%
            %{--<div class="form-group">--}%
                %{--<label for="initialDeposit" class="col-xs-3 col-sm-3 col-md-3 col-lg-3 control-label">--}%
                    %{--Initial Deposit</label>--}%
                %{--<div class="col-xs-5 col-sm-5 col-md-5 col-lg-5">--}%
                    %{--<input type="text" class="col-xs-12 col-sm-12 col-md-12 col-lg-12" placeholder="Initial Deposit"--}%
                           %{--id="initialDeposit" name="initialDeposit">--}%
                %{--</div>--}%
            %{--</div>--}%
            <div class="form-group">
                <label for="paymentMethod" class="col-xs-3 col-sm-3 col-md-3 col-lg-3 control-label">
                    Package Name</label>
                <div class="col-xs-5 col-sm-5 col-md-5 col-lg-5">
                    <select name="paymentMethod" id="paymentMethod" class="form-control">
                        <option value="">- Choose One -</option>
                        <option value="1">Package 1</option>
                        <option value="2">Package 2</option>
                        <option value="3">Package 3</option>
                    </select>
                </div>
            </div>
            %{--<div class="form-group">--}%
                %{--<label for="residentialStatus" class="col-xs-3 col-sm-3 col-md-3 col-lg-3 control-label">--}%
                    %{--Residential Status</label>--}%
                %{--<div class="col-xs-5 col-sm-5 col-md-5 col-lg-5">--}%
                    %{--<input type="text" class="col-xs-12 col-sm-12 col-md-12 col-lg-12" placeholder="Residential Status"--}%
                           %{--id="residentialStatus" name="residentialStatus">--}%
                %{--</div>--}%
            %{--</div>--}%
            %{--<div class="form-group">--}%
                %{--<label for="accountOpenedBy" class="col-xs-3 col-sm-3 col-md-3 col-lg-3 control-label">--}%
                    %{--Account Opened By</label>--}%
                %{--<div class="col-xs-5 col-sm-5 col-md-5 col-lg-5">--}%
                    %{--<input type="text" class="col-xs-12 col-sm-12 col-md-12 col-lg-12" placeholder="Account Opened By"--}%
                           %{--id="accountOpenedBy" name="accountOpenedBy">--}%
                %{--</div>--}%
            %{--</div>--}%
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