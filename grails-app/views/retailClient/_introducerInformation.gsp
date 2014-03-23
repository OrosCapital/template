<g:form name="retailIntroducerInformationForm" method="post" role="form" class="form-horizontal"
        controller="retailClient" action="create">
    <div class="row">
        <div class="col-xs-12">
            <!-- PAGE CONTENT BEGINS -->

            <div class="form-group">
                <label for="accountNo" class="col-sm-2 control-label no-padding-right no-padding-left">
                    Account No</label>
                <div class="col-sm-7">
                    <input type="text" class="col-xs-10 col-sm-12" placeholder="Account No"
                           id="accountNo" name="accountNo">
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-2 control-label no-padding-right no-padding-left">
                    Name</div>
                <div class="col-sm-7 control-label align-left">
                    Name
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-2 control-label no-padding-right no-padding-left">
                    Address</div>
                <div class="col-sm-7 control-label align-left">
                    Address
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-2 control-label no-padding-right no-padding-left">
                    Contact No
                </div>
                <div class="col-sm-7 control-label align-left">
                    Contact No
                </div>
            </div>
            <div class="form-group">
                <label for="relationalAccountHolder" class="col-sm-2 control-label no-padding-right no-padding-left">
                    Relational Account Holder</label>
                <div class="col-sm-7">
                    <input type="text" class="col-xs-10 col-sm-12" placeholder="Relational Account Holder"
                           id="relationalAccountHolder" name="relationalAccountHolder">
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