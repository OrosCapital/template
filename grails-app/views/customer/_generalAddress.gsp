<g:form name="customerGeneralAddressForm" method="post" role="form"
        class="form-horizontal" controller="CustomerGeneralAddress" action="save">
    <div class="row">
        <!-- PAGE CONTENT BEGINS -->

        <div class="col-xs-4">
            <g:hiddenField name="customer" id="customer" value="${customerMaster?.id}"/>
            <div class="form-group">
                <label for="contactPersonName" class="col-sm-5 control-label no-padding-right no-padding-left">
                    Contact Person Name*
                </label>
                <div class="col-sm-7">
                    <input type="text" class="col-xs-10 col-sm-12" placeholder="Contact Person Name"
                           id="contactPersonName" name="contactPersonName" required
                           oninvalid="this.setCustomValidity('Contact Person Name is a must')"
                           oninput="setCustomValidity('')">
                </div>
            </div>
            <div class="form-group">
                <label for="mobileNo" class="col-sm-5 control-label no-padding-right no-padding-left">
                    Mobile No
                </label>
                <div class="col-sm-7">
                    <input type="text" class="col-xs-10 col-sm-12" placeholder="Mobile No"
                           id="mobileNo" name="mobileNo">
                </div>
            </div>
            <div class="form-group">
                <label for="websiteAddress" class="col-sm-5 control-label no-padding-right no-padding-left">
                    Website Address
                </label>
                <div class="col-sm-7">
                    <input type="text" class="col-xs-10 col-sm-12" placeholder="Website Address"
                           id="websiteAddress" name="websiteAddress">
                </div>
            </div>
            <div class="form-group">
                <label for="state" class="col-sm-5 control-label no-padding-right no-padding-left">
                    State
                </label>
                <div class="col-sm-7">
                    <input type="text" class="col-xs-10 col-sm-12" placeholder="State"
                           id="state" name="state">
                </div>
            </div>
            <div class="form-group">
                <label for="country" class="col-sm-5 control-label no-padding-right no-padding-left">
                    Country*
                </label>
                <div class="col-sm-7">
                    <select name="country" id="country" class="form-control" required="required">
                        <option value="">- Choose One -</option>
                        <g:each var="country" in="${countryList}">
                            <option value="${country.id}">${country.countryName}</option>
                        </g:each>
                    </select>
                </div>
            </div>
        </div><!-- /.col -->

        <div class="col-xs-4">
            <div class="form-group">
                <label for="contactPersonReference" class="col-sm-5 control-label no-padding-right no-padding-left">
                    Contact Person Reference
                </label>
                <div class="col-sm-7">
                    <input type="text" class="col-xs-10 col-sm-12" placeholder="Customer Name"
                           id="contactPersonReference" name="contactPersonReference">
                </div>
            </div>
            <div class="form-group">
                <label for="fax" class="col-sm-5 control-label no-padding-right no-padding-left">
                    Fax
                </label>
                <div class="col-sm-7">
                    <input type="text" class="col-xs-10 col-sm-12" placeholder="First Name"
                           id="fax" name="Fax">
                </div>
            </div>
            <div class="form-group">
                <label for="addressLine1" class="col-sm-5 control-label no-padding-right no-padding-left">
                    Address Line1
                </label>
                <div class="col-sm-7">
                    <textarea name="addressLine1" id="addressLine1" class="col-xs-10 col-sm-12"></textarea>
                </div>
            </div>
            <div class="form-group">
                <label for="postalCode" class="col-sm-5 control-label no-padding-right no-padding-left">
                    Postal Code*
                </label>
                <div class="col-sm-7">
                    <input type="text" class="col-xs-10 col-sm-12" placeholder="Postal Code"
                           id="postalCode" name="postalCode" required
                           oninvalid="this.setCustomValidity('Postal Code is a must')"
                           oninput="setCustomValidity('')">
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
                <label for="contactDealType"
                       class="col-sm-5 control-label no-padding-right no-padding-left">Contact Deal Type</label>
                <div class="col-sm-7">
                    <select name="contactDealType" id="contactDealType" class="form-control">
                        <option value="1">Account</option>
                        <option value="2">Credit Card</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label for="phoneNo" class="col-sm-5 control-label no-padding-right no-padding-left">
                    Phone No
                </label>
                <div class="col-sm-7">
                    <input type="text" class="col-xs-10 col-sm-12" placeholder="Phone No"
                           id="phoneNo" name="phoneNo">
                </div>
            </div>
            <div class="form-group">
                <label for="secondEmail" class="col-sm-5 control-label no-padding-right no-padding-left">
                    Second Email
                </label>
                <div class="col-sm-7">
                    <input type="email" class="col-xs-10 col-sm-12" placeholder="Second Email"
                           id="secondEmail" name="secondEmail">
                </div>
            </div>
            <div class="form-group">
                <label for="addressLine2" class="col-sm-5 control-label no-padding-right no-padding-left">
                    Address Line1
                </label>
                <div class="col-sm-7">
                    <textarea name="addressLine2" id="addressLine2" class="col-xs-10 col-sm-12"></textarea>
                </div>
            </div>
            <div class="form-group">
                <label for="city" class="col-sm-5 control-label no-padding-right no-padding-left">
                    City*
                </label>
                <div class="col-sm-7">
                    <input type="text" class="col-xs-10 col-sm-12" placeholder="City"
                           id="city" name="city" required
                           oninvalid="this.setCustomValidity('City is a must')"
                           oninput="setCustomValidity('')">
                </div>
            </div>
        </div><!-- /.col -->
    </div>

    <div class="clearfix form-actions">
        <div class="col-md-offset-5 col-md-9">
            <button type="submit" class="btn btn-info"><i class="icon-ok bigger-110">
            </i>Update</button>
        </div>
    </div>

</g:form>