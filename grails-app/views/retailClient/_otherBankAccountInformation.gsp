<g:form name="retailOtherBankAccountInformationForm" method="post" role="form" class="form-horizontal">
    <div class="row">
        <div class="col-xs-12">
            <!-- PAGE CONTENT BEGINS -->

            <div class="form-group">
                <label for="otherBankAccountName" class="col-sm-2 control-label no-padding-right no-padding-left">
                    Name</label>
                <div class="col-sm-7">
                    <input type="text" class="col-xs-10 col-sm-12" placeholder="Name"
                           id="otherBankAccountName" name="Name">
                </div>
            </div>
            <div class="form-group">
                <label for="branch" class="col-sm-2 control-label no-padding-right no-padding-left">
                    Branch</label>
                <div class="col-sm-7">
                    <input type="text" class="col-xs-10 col-sm-12" placeholder="Branch"
                           id="branch" name="branch">
                </div>
            </div>
            <div class="form-group">
                <label for="type" class="col-sm-2 control-label no-padding-right no-padding-left">
                    Type</label>
                <div class="col-sm-7">
                    <input type="text" class="col-xs-10 col-sm-12" placeholder="Type"
                           id="type" name="type">
                </div>
            </div>
            <div class="form-group">
                <label for="sortCode" class="col-sm-2 control-label no-padding-right no-padding-left">
                    Sort Code</label>
                <div class="col-sm-7">
                    <input type="text" class="col-xs-10 col-sm-12" placeholder="Sort Code"
                           id="sortCode" name="sortCode">
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