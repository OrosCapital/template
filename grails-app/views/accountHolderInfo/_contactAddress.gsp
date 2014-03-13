<div class="row">
    <div class="col-md-12">

        <div class="col-md-6">

            <div class="form-group">
                <label for="contactPersonName" class="col-sm-5 control-label">Contact Person Name*</label>
                <input type="text" class="col-sm-7" placeholder="Contact Person Name" id="contactPersonName"
                       name="contactPersonName">
            </div>

            <div class="form-group">
                <label for="contactDealType" class="col-sm-5 control-label">Contact Deal Type</label>
                <input type="text" class="col-sm-7" placeholder="Contact Deal Type" id="contactDealType"
                       name="contactDealType">
            </div>

            <div class="form-group">
                <label for="fax" class="col-sm-5 control-label">Fax</label>
                <input type="text" class="col-sm-7" placeholder="Fax No" id="fax"
                       name="fax">
            </div>

            <div class="form-group">
                <label for="websiteAddress" class="col-sm-5 control-label">Website Address</label>
                <input type="text" class="col-sm-7" placeholder="Website Address" id="websiteAddress"
                       name="websiteAddress">
            </div>

            <div class="form-group">
                <label for="addressLine2" class="col-sm-5 control-label">Address Line2</label>
                <input type="text" class="col-sm-7" placeholder="Second Address" id="addressLine2"
                       name="addressLine2">
            </div>

            <div class="form-group">
                <label for="state" class="col-sm-5 control-label">State</label>
                <input type="text" class="col-sm-7" placeholder="State" id="state"
                       name="state">
            </div>

            <div class="form-group">
                <label for="countryId"
                       class="col-sm-5 control-label">Country*</label>

                <g:countrySelect name="countryId" class="col-sm-7"
                                 noSelection="['':'-Choose your country-']"/>

            </div>

            <div class="form-group">
                <label for="status"
                       class="col-sm-5 control-label">Status</label>
                <div class="col-sm-7">
                    <select id="status" class="form-control" name="status">
                        <option>-Select-</option>

                        <option value="1">Active</option>
                        <option value="0">Inactive</option>

                    </select>
                </div>
            </div>



        </div>

        <div class="col-md-6">

            <div class="form-group">
                <label for="contactPersonReference" class="col-sm-5 control-label">Contact Person Reference</label>
                <input type="text" class="col-sm-7" placeholder="Contact Person Reference" id="contactPersonReference"
                       name="contactPersonReference">
            </div>

            <div class="form-group">
                <label for="mobileNo" class="col-sm-5 control-label">Mobile No</label>
                <input type="text" class="col-sm-7" placeholder="Mobile No" id="mobileNo"
                       name="mobileNo">
            </div>

            <div class="form-group">
                <label for="phoneNo" class="col-sm-5 control-label">Phone No</label>
                <input type="text" class="col-sm-7" placeholder="Phone No" id="phoneNo"
                       name="phoneNo">
            </div>

            <div class="form-group">
                <label for="addressLine1" class="col-sm-5 control-label">Address Line1</label>
                <input type="text" class="col-sm-7" placeholder="First Address" id="addressLine1"
                       name="addressLine1">
            </div>

            <div class="form-group">
                <label for="email" class="col-sm-5 control-label">Email</label>
                <input type="email" class="col-sm-7" placeholder="Email" id="email"
                       name="email">
            </div>

            <div class="form-group">
                <label for="postalCode" class="col-sm-5 control-label">Postal Code*</label>
                <input type="text" class="col-sm-7" placeholder="Postal Code" id="postalCode"
                       name="postalCode">
            </div>

            <div class="form-group">
                <label for="city" class="col-sm-5 control-label">City</label>
                <input type="text" class="col-sm-7" placeholder="City" id="city"
                       name="city">
            </div>

        </div>

    </div>

</div>

<div class="clearfix form-actions">
    <div class="col-md-offset-10 col-md-2">
        <g:actionSubmit class="btn btn-primary btn-sm"  name="create" value="Create" id="create" controller="com.oros.custom.vendorGeneralAddress" action="save" />

    </div>
</div>



