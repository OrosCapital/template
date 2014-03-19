<g:form name="vendorPostalAddressForm" method="post" role="form" class="form-horizontal">
<div class="row">
    <div class="col-md-12">

        <div class="col-md-6">
            <g:hiddenField name="vendorId" value="${avendorMaster?.id}"/>
            <div class="form-group">
                <label for="postalContactPersonName" class="col-sm-5 control-label">Contact Person Name*</label>
                <input type="text" class="col-sm-7" placeholder="Contact Person Name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Contact Person Name'" id="postalContactPersonName"
                       name="postalContactPersonName" value="${aPostalAddress?.postalContactPersonName}" required/>
            </div>



            <div class="form-group">
                <label for="postalAddressLine2" class="col-sm-5 control-label">Postal Address Line2</label>
                <textarea class="col-sm-7" placeholder="Second Postal Address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Second Postal Address'" id="postalAddressLine2"
                          name="postalAddressLine2"></textarea>
            </div>

            <div class="form-group">
                <label for="postalCity" class="col-sm-5 control-label">Postal City</label>
                <input type="text" class="col-sm-7" placeholder="Postal City" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Postal City'" id="postalCity"
                       name="postalCity" value="${aPostalAddress?.postalCity}" required/>
            </div>

            <div class="form-group">
                <label for="postalCountryId"
                       class="col-sm-5 control-label">Postal Country*</label>

                <g:countrySelect name="postalCountryId" value="" class="col-sm-7"
                                 noSelection="['':'-Choose your country-']"/>

            </div>

        </div>

        <div class="col-md-6">

            <div class="form-group">
                <label for="postalAddressLine1" class="col-sm-5 control-label">Postal Address Line1</label>
                <textarea class="col-sm-7" placeholder="First Postal Address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'First Postal Address'" id="postalAddressLine1"
                          name="postalAddressLine1"></textarea>
            </div>

            <div class="form-group">
                <label for="postalPostcode" class="col-sm-5 control-label">Postal Postcode</label>
                <input type="text" class="col-sm-7" placeholder="Postal Postcode" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Postal Postcode'" id="postalPostcode"
                       name="postalPostcode" value="${aPostalAddress?.postalPostcode}" required/>
            </div>

            <div class="form-group">
                <label for="postalState" class="col-sm-5 control-label">Postal State</label>
                <input type="text" class="col-sm-7" placeholder="Postal State" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Postal State'" id="postalState"
                       name="postalState" value="${aPostalAddress?.postalState}" required/>
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

    </div>
</div>

<div class="clearfix form-actions">
    <div class="col-md-offset-10 col-md-2">
        <g:actionSubmit class="btn btn-primary btn-sm"  name="create" value="Create" id="button-create" controller="vendor" action="saveVendorPostalAddress" />

    </div>
</div>

</g:form>


