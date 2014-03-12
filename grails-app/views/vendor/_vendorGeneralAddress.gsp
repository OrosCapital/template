<g:form name="vendorGeneralAddressForm" method="post" role="form" class="form-horizontal">
<div class="row">
    <div class="col-md-12">

        <div class="col-md-6">
            <g:hiddenField name="vendorId" value="${avendorMaster?.id}"/>
            <div class="form-group">
                <label for="contactPersonName" class="col-sm-5 control-label">Contact Person Name*</label>
                <input type="text" class="col-sm-7" placeholder="" id="contactPersonName"
                       name="contactPersonName">
            </div>

            <div class="form-group">
                <label for="contactDealType" class="col-sm-5 control-label">Contact Deal Type</label>
                <input type="text" class="col-sm-7" placeholder="" id="contactDealType"
                       name="contactDealType">
            </div>

            <div class="form-group">
                <label for="phoneNo" class="col-sm-5 control-label">Phone No</label>
                <input type="text" class="col-sm-7" placeholder="" id="phoneNo"
                       name="phoneNo">
            </div>

            <div class="form-group">
                <label for="websiteAddress" class="col-sm-5 control-label">Website Address</label>
                <input type="text" class="col-sm-7" placeholder="" id="websiteAddress"
                       name="websiteAddress">
            </div>

            <div class="form-group">
                <label for="addressLine1" class="col-sm-5 control-label">Address Line1</label>
                <input type="text" class="col-sm-7" placeholder="" id="addressLine1"
                       name="addressLine1">
            </div>

            <div class="form-group">
                <label for="postalCode" class="col-sm-5 control-label">Postal Code*</label>
                <input type="text" class="col-sm-7" placeholder="" id="postalCode"
                       name="postalCode">
            </div>

            <div class="form-group">
                <label for="state" class="col-sm-5 control-label">State</label>
                <input type="text" class="col-sm-7" placeholder="" id="state"
                       name="state">
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
                <input type="text" class="col-sm-7" placeholder="" id="contactPersonReference"
                       name="contactPersonReference">
            </div>

            <div class="form-group">
                <label for="mobileNo" class="col-sm-5 control-label">Mobile No</label>
                <input type="text" class="col-sm-7" placeholder="" id="mobileNo"
                       name="mobileNo">
            </div>

            <div class="form-group">
                <label for="secondEmail" class="col-sm-5 control-label">Second Email</label>
                <input type="email" class="col-sm-7" placeholder="" id="secondEmail"
                       name="secondEmail">
            </div>

            <div class="form-group">
                <label for="fax" class="col-sm-5 control-label">Fax</label>
                <input type="text" class="col-sm-7" placeholder="" id="fax"
                       name="fax">
            </div>

            <div class="form-group">
                <label for="addressLine2" class="col-sm-5 control-label">Address Line2</label>
                <input type="text" class="col-sm-7" placeholder="" id="addressLine2"
                       name="addressLine2">
            </div>

            <div class="form-group">
                <label for="city" class="col-sm-5 control-label">City</label>
                <input type="text" class="col-sm-7" placeholder="" id="city"
                       name="city">
            </div>

            <div class="form-group">
                <label for="countryId"
                       class="col-sm-5 control-label">Country*</label>

                <g:countrySelect name="countryId" class="col-sm-7"
                                 noSelection="['':'-Choose your country-']"/>

            </div>



        </div>


    </div>
</div>

<div class="clearfix form-actions">
    <div class="col-md-offset-10 col-md-2">
        <g:actionSubmit class="btn btn-primary btn-sm"  name="create" value="Create" id="create" controller="vendor" action="saveVendorGeneralAddress" />
    </div>
</div>

</g:form>

