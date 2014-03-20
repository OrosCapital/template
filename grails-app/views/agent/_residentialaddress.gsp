<g:form name="AgentResidentialAddressForm" method="post" role="form" class="form-horizontal">
<div class="row">
    <div class="col-md-12">

        <div class="col-md-6">

            <div class="form-group">
                <label for="houseName" class="col-sm-5 control-label">House Name</label>
                <input type="text" class="col-sm-7" placeholder="House Name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'House Name'" id="houseName"
                       name="houseName" required="required">
            </div>

            <div class="form-group">
                <label for="houseNumber" class="col-sm-5 control-label">House Number</label>
                <input type="text" class="col-sm-7" placeholder="House Number" onfocus="this.placeholder = ''" onblur="this.placeholder = 'House Number'" id="houseNumber"
                       name="houseNumber" required="required">
            </div>

            <div class="form-group">
                <label for="city" class="col-sm-5 control-label">City<span class="red">*</span></label>
                <input type="text" class="col-sm-7" placeholder="City" onfocus="this.placeholder = ''" onblur="this.placeholder = 'City'" id="city"
                       name="city" required="required">
            </div>

            <div class="form-group">
                <label for="state" class="col-sm-5 control-label">State</label>
                <input type="text" class="col-sm-7" placeholder="State" onfocus="this.placeholder = ''" onblur="this.placeholder = 'State'" id="state"
                       name="state" required="required">
            </div>


            <div class="form-group">
                <label for="street" class="col-sm-5 control-label">Street</label>
                <input type="text" class="col-sm-7" placeholder="Street" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Street'" id="street" name="street" required="required">
            </div>

            <div class="form-group">
                <label for="postCode" class="col-sm-5 control-label">Post Code<span class="red">*</span></label>
                <input type="text" class="col-sm-7" placeholder="Post Code" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Post Code'" id="postCode" name="postCode" required="required">
            </div>

            <div class="form-group">
                <label for="countryId"
                       class="col-sm-5 control-label">Country<span class="red">*</span></label>

                <g:countrySelect name="countryId" class="col-sm-7"
                                 noSelection="['':'-Choose your country-']"/>

            </div>

        </div>

    </div>

</div>

<div class="clearfix form-actions">
    <div class="col-md-offset-10 col-md-2">

        <button class="btn btn-primary btn-sm" type="submit" name="buttonThree" id="buttonThree">Next</button>


    </div>
</div>
</g:form>


