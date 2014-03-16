<g:form name="retailIntroducerInformationForm" method="post" role="form" class="form-horizontal"
        controller="retailClient" action="create">
    <div class="row">
        <div class="col-xs-12">
            <!-- PAGE CONTENT BEGINS -->

            <div class="form-group">
                <label for="introducerName" class="col-sm-2 control-label no-padding-right no-padding-left">
                    Name</label>
                <div class="col-sm-7">
                    <input type="text" class="col-xs-10 col-sm-12" placeholder="Name"
                           id="introducerName" name="introducerName">
                </div>
            </div>
            <div class="form-group">
                <label for="address" class="col-sm-2 control-label no-padding-right no-padding-left">
                    Address</label>
                <div class="col-sm-7">
                    <textarea name="address" id="address" class="col-sm-12"></textarea>
                </div>
            </div>
            <div class="form-group">
                <label for="accountNo" class="col-sm-2 control-label no-padding-right no-padding-left">
                    Account No</label>
                <div class="col-sm-7">
                    <input type="text" class="col-xs-10 col-sm-12" placeholder="Account No"
                           id="accountNo" name="accountNo">
                </div>
            </div>
            <div class="form-group">
                <label for="contactNo" class="col-sm-2 control-label no-padding-right no-padding-left">
                    Contact No</label>
                <div class="col-sm-7">
                    <input type="text" class="col-xs-10 col-sm-12" placeholder="Contact No"
                           id="contactNo" name="contactNo">
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