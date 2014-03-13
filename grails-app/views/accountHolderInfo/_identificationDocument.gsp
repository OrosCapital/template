<div class="row">
    <div class="col-xs-12">
        <!-- PAGE CONTENT BEGINS -->

        <div class="form-group">
            <label for="nationalIdCard" class="col-sm-2 control-label no-padding-right no-padding-left">
                National Id Card*</label>
            <div class="col-sm-7">
                <input type="file" class="col-xs-10 col-sm-12" placeholder="National Id Card"
                       id="nationalIdCard" name="nationalIdCard" required="required">
            </div>
        </div>
        <div class="form-group">
            <label for="passport" class="col-sm-2 control-label no-padding-right no-padding-left">
                Passport</label>
            <div class="col-sm-7">
                <input type="file" class="col-xs-10 col-sm-12" placeholder="Passport"
                       id="passport" name="passport">
            </div>
        </div>
        <div class="form-group">
            <label for="drivingLicence" class="col-sm-2 control-label no-padding-right no-padding-left">
                Driving Licence</label>
            <div class="col-sm-7">
                <input type="file" class="col-xs-10 col-sm-12" placeholder="Driving Licence"
                       id="drivingLicence" name="drivingLicence">
            </div>
        </div>
    </div><!-- /.col -->
%{--<div class="col-xs-4">--}%
%{--<div class="form-group">--}%
%{--<label for="customerName" class="col-sm-5 control-label no-padding-right no-padding-left">--}%
%{--Customer Name*</label>--}%
%{--<div class="col-sm-7">--}%
%{--<input type="text" class="col-xs-10 col-sm-12" placeholder="Customer Name"--}%
%{--id="customerName" name="customerName" required="required">--}%
%{--</div>--}%
%{--</div>--}%
%{--<div class="form-group">--}%
%{--<label for="firstName" class="col-sm-5 control-label no-padding-right no-padding-left">--}%
%{--First Name</label>--}%
%{--<div class="col-sm-7">--}%
%{--<input type="text" class="col-xs-10 col-sm-12" placeholder="First Name"--}%
%{--id="firstName" name="firstName">--}%
%{--</div>--}%
%{--</div>--}%
%{--<div class="form-group">--}%
%{--<label for="email" class="col-sm-5 control-label no-padding-right no-padding-left">--}%
%{--Email</label>--}%
%{--<div class="col-sm-7">--}%
%{--<input type="email" class="col-xs-10 col-sm-12" placeholder="Email"--}%
%{--id="email" name="email">--}%
%{--</div>--}%
%{--</div>--}%
%{--<div class="form-group">--}%
%{--<label for="chamberOfCommerce" class="col-sm-5 control-label no-padding-right no-padding-left">--}%
%{--Chamber of Commerce</label>--}%
%{--<div class="col-sm-7">--}%
%{--<input type="text" class="col-xs-10 col-sm-12" placeholder="Chamber of Commerce"--}%
%{--id="chamberOfCommerce" name="chamberOfCommerce">--}%
%{--</div>--}%
%{--</div>--}%
%{--<div class="form-group">--}%
%{--<label for="comments" class="col-sm-5 control-label no-padding-right no-padding-left">--}%
%{--Comments</label>--}%
%{--<div class="col-sm-7">--}%
%{--<textarea name="comments" id="comments" class="col-xs-10 col-sm-12"></textarea>--}%
%{--</div>--}%
%{--</div>--}%
%{--</div><!-- /.col -->--}%
%{--<div class="col-xs-4">--}%
%{--<div class="form-group">--}%
%{--<label for="gender"--}%
%{--class="col-sm-5 control-label no-padding-right no-padding-left">Gender</label>--}%
%{--<div class="col-sm-7">--}%
%{--<select name="gender" id="gender" class="form-control">--}%
%{--<option value="Male">Male</option>--}%
%{--<option value="Female">Female</option>--}%
%{--</select>--}%
%{--</div>--}%
%{--</div>--}%
%{--<div class="form-group">--}%
%{--<label for="middleName" class="col-sm-5 control-label no-padding-right no-padding-left">--}%
%{--Middle Name</label>--}%
%{--<div class="col-sm-7">--}%
%{--<input type="text" class="col-xs-10 col-sm-12" placeholder="Middle Name"--}%
%{--id="middleName" name="middleName">--}%
%{--</div>--}%
%{--</div>--}%
%{--<div class="form-group">--}%
%{--<label for="defaultGlAccount"--}%
%{--class="col-sm-5 control-label no-padding-right no-padding-left">Default Gl Account</label>--}%
%{--<div class="col-sm-7">--}%
%{--<select name="defaultGlAccount" id="defaultGlAccount" class="form-control">--}%
%{--<option value="1">8000 Sales Tax Services</option>--}%
%{--<option value="2">9000 Sales Tax Services</option>--}%
%{--</select>--}%
%{--</div>--}%
%{--</div>--}%
%{--<div class="form-group">--}%
%{--<label for="customerType"--}%
%{--class="col-sm-5 control-label no-padding-right no-padding-left">Type*</label>--}%
%{--<div class="col-sm-7">--}%
%{--<select name="customerType" id="customerType" class="form-control" required="required">--}%
%{--<option value="1">Customer Name1</option>--}%
%{--<option value="2">Customer Name2</option>--}%
%{--</select>--}%
%{--</div>--}%
%{--</div>--}%
%{--<div class="form-group">--}%
%{--<label for="paymentTerm"--}%
%{--class="col-sm-5 control-label no-padding-right no-padding-left">Payment Term*</label>--}%
%{--<div class="col-sm-7">--}%
%{--<select name="paymentTerm" id="paymentTerm" class="form-control" required="required">--}%
%{--<option value="">- Choose One -</option>--}%
%{--<g:each var="paymentTerm" in="${paymentTermsList}">--}%
%{--<option value="${paymentTerm.id}">${paymentTerm.paymentTermName}</option>--}%
%{--</g:each>--}%
%{--</select>--}%
%{--</div>--}%
%{--</div>--}%
%{--</div><!-- /.col -->--}%
</div>


<div class="clearfix form-actions">
    <div class="col-md-offset-5 col-md-9">
        <button type="submit" name="customerBasicSubmit" id="customerBasicSubmit" class="btn btn-info"><i class="icon-ok bigger-110">
        </i>Update</button>
    </div>
</div>