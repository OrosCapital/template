<g:form name="customerBasicForm" method="post" role="form" class="form-horizontal"
        controller="customer" action="saveCustomerMaster">
%{--<g:formRemote name="customerBasicForm" id="customerBasicForm" method="post" role="form" class="form-horizontal"--}%
        %{--url="[controller: 'customer', action:'saveCustomerMaster']" >--}%
    <div class="row">
        <!-- PAGE CONTENT BEGINS -->

        <div class="col-xs-4">
            <div class="form-group">
                <label for="customerCode" class="col-sm-5 control-label no-padding-right no-padding-left">
                    Customer Code*
                </label>
                <div class="col-sm-7">
                    <input type="text" class="col-xs-10 col-sm-12" placeholder="Customer Code"
                           id="customerCode" name="customerCode" required
                           oninvalid="this.setCustomValidity('Customer Code is a must')"
                           oninput="setCustomValidity('')">
                </div>
            </div>
            <div class="form-group">
                <label for="bankName" class="col-sm-5 control-label no-padding-right no-padding-left">
                    Bank Name
                </label>
                <div class="col-sm-7">
                    <input type="text" class="col-xs-10 col-sm-12" placeholder="Bank Name"
                           id="bankName" name="bankName">
                </div>
            </div>
            <div class="form-group">
                <label for="lastName" class="col-sm-5 control-label no-padding-right no-padding-left">
                    Last Name
                </label>
                <div class="col-sm-7">
                    <input type="text" class="col-xs-10 col-sm-12" placeholder="Last Name"
                           id="lastName" name="lastName">
                </div>
            </div>
            <div class="form-group">
                <label for="momentOfSending" class="col-sm-5 control-label no-padding-right no-padding-left">
                    Moment Of Sending
                </label>
                <div class="col-sm-7">
                    <input type="text" class="col-xs-10 col-sm-12" placeholder="Moment Of Sending"
                           id="momentOfSending" name="momentOfSending">
                </div>
            </div>
            <div class="form-group">
                <label for="vat" class="col-sm-5 control-label no-padding-right no-padding-left">
                    Vat
                </label>
                <div class="col-sm-7">
                    <select name="vat" id="vat" class="form-control">
                        <option value="VAT High (21.0%)">VAT High (21.0%)</option>
                        <option value="VAT Low (11.0%)">VAT Low (11.0%)</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label for="status" class="col-sm-5 control-label no-padding-right no-padding-left">
                    Status
                </label>
                <div class="col-sm-7">
                    <select name="status" id="status" class="form-control">
                        <option value="1">Active</option>
                        <option value="0">Inactive</option>
                    </select>
                </div>
            </div>
        </div><!-- /.col -->

        <div class="col-xs-4">
            <div class="form-group">
                <label for="customerName" class="col-sm-5 control-label no-padding-right no-padding-left">
                    Customer Name*
                </label>
                <div class="col-sm-7">
                    <input type="text" class="col-xs-10 col-sm-12" placeholder="Customer Name"
                           id="customerName" name="customerName" required
                           oninvalid="this.setCustomValidity('Customer Name is a must')"
                           oninput="setCustomValidity('')">
                </div>
            </div>
            <div class="form-group">
                <label for="firstName" class="col-sm-5 control-label no-padding-right no-padding-left">
                    First Name</label>
                <div class="col-sm-7">
                    <input type="text" class="col-xs-10 col-sm-12" placeholder="First Name"
                           id="firstName" name="firstName">
                </div>
            </div>
            <div class="form-group">
                <label for="email" class="col-sm-5 control-label no-padding-right no-padding-left">
                    Email
                </label>
                <div class="col-sm-7">
                    <input type="email" class="col-xs-10 col-sm-12" placeholder="Email"
                           id="email" name="email">
                </div>
            </div>
            <div class="form-group">
                <label for="chamberOfCommerce" class="col-sm-5 control-label no-padding-right no-padding-left">
                    Chamber of Commerce
                </label>
                <div class="col-sm-7">
                    <input type="text" class="col-xs-10 col-sm-12" placeholder="Chamber of Commerce"
                           id="chamberOfCommerce" name="chamberOfCommerce">
                </div>
            </div>
            <div class="form-group">
                <label for="comments" class="col-sm-5 control-label no-padding-right no-padding-left">
                    Comments
                </label>
                <div class="col-sm-7">
                    <textarea name="comments" id="comments" class="col-xs-10 col-sm-12"></textarea>
                </div>
            </div>
        </div><!-- /.col -->

        <div class="col-xs-4">
            <div class="form-group">
                <label for="gender" class="col-sm-5 control-label no-padding-right no-padding-left">
                    Gender
                </label>
                <div class="col-sm-7">
                    <select name="gender" id="gender" class="form-control">
                        <option value="Male">Male</option>
                        <option value="Female">Female</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label for="middleName" class="col-sm-5 control-label no-padding-right no-padding-left">
                    Middle Name
                </label>
                <div class="col-sm-7">
                    <input type="text" class="col-xs-10 col-sm-12" placeholder="Middle Name"
                           id="middleName" name="middleName">
                </div>
            </div>
            <div class="form-group">
                <label for="defaultGlAccount" class="col-sm-5 control-label no-padding-right no-padding-left">
                    Default Gl Account
                </label>
                <div class="col-sm-7">
                    <select name="defaultGlAccount" id="defaultGlAccount" class="form-control">
                        <option value="1">8000 Sales Tax Services</option>
                        <option value="2">9000 Sales Tax Services</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label for="customerType"
                       class="col-sm-5 control-label no-padding-right no-padding-left">Type*</label>
                <div class="col-sm-7">
                    <select name="customerType" id="customerType" class="form-control" required>
                        <option value="">- Choose One -</option>
                        <option value="1">Regular Customer</option>
                        <option value="2">Guest Customer</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label for="paymentTerm" class="col-sm-5 control-label no-padding-right no-padding-left">
                    Payment Term*
                </label>
                <div class="col-sm-7">
                    <select name="paymentTerm" id="paymentTerm" class="form-control" required>
                        <option value="">- Choose One -</option>
                        <g:each var="paymentTerm" in="${paymentTermsList}">
                            <option value="${paymentTerm.id}">${paymentTerm.paymentTermName}</option>
                        </g:each>
                    </select>
                </div>
            </div>
        </div><!-- /.col -->
    </div>

    <div class="clearfix form-actions">
        <div class="col-md-offset-5 col-md-9">
            <button type="submit" name="customerBasicSubmit" id="customerBasicSubmit" class="btn btn-info">
                <i class="icon-ok bigger-110"></i>Update
            </button>
            %{--<g:submitToRemote name="customerBasicSubmit" id="customerBasicSubmit" class="btn btn-info"--}%
                              %{--url="[action: 'newGeneralAddress']" update="customerBasicForm" value="Create" />--}%
        </div>
    </div>

</g:form>