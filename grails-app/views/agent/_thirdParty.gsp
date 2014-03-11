
<div class="row">
    <div class="col-md-12">

        <div class="col-md-6">

            <div class="form-group">
                <label for="Name" class="col-sm-5 control-label">Contact Name</label>
                <input type="text" class="col-sm-7" placeholder="Contact Name" id="Name" name="Name" value="" required="required">
            </div>

            <div class="form-group">
                <label for="role" class="col-sm-5 control-label">Role</label>
                <input type="text" class="col-sm-7" placeholder="Role" id="role" name="role" value="" required="required">
            </div>

            <div class="form-group">
                <label for="address" class="col-sm-5 control-label">Address</label>
                <input type="text" class="col-sm-7" placeholder="Address" id="address" name="address" value="" required="required">
            </div>

            <div class="form-group">
                <label for="firm" class="col-sm-5 control-label">Name of Firm</label>
                <input type="text" class="col-sm-7" placeholder="Name of Firm" id="firm" name="firm" value="" required="required">
            </div>

            <div class="form-group">
                <label for="DOB"
                       class="col-sm-5 control-label">Date of Birth</label>

                <g:datePicker name="DOB"  id="DOB" value="${new Date()}"
                              precision="day"/>
            </div>

            <div class="form-group">
                <label for="nationality1"
                       class="col-sm-5 control-label">Nationality</label>

                <g:countrySelect name="nationality1" class="col-sm-7"
                                 noSelection="['':'-First Nationality-']"/>
            </div>

            <div class="form-group">
                <label for="nationalID" class="col-sm-5 control-label">National ID</label>
                <input type="text" class="col-sm-7" placeholder="National Identification No" id="nationalID"
                       name="nationalID" value="" required="required">
            </div>

            <div class="form-group">
                <label for="countryofBirth"
                       class="col-sm-5 control-label">Country of Birth</label>

                <g:countrySelect name="countryofBirth" class="col-sm-7"
                                 noSelection="['':'-Your Birth Place-']"/>
            </div>



            <div class="form-group">
                <label for="email" class="col-sm-5 control-label">Email</label>
                <input type="text" class="col-sm-7" placeholder="Email" id="email"
                       name="email" value="" required="required">
            </div>

            <div class="form-group">
                <label for="phone" class="col-sm-5 control-label">Phone no</label>
                <input type="text" class="col-sm-7" placeholder="Phone no" id="phone"
                       name="phone" value="" required="required">
            </div>

            <div class="form-group">
                <label for="postCode" class="col-sm-5 control-label">Post Code</label>
                <input type="text" class="col-sm-7" placeholder="Post Code" id="postCode"
                       name="postCode" value="" required="required">
            </div>




            <div class="form-group">
                <label for="res" class="col-sm-5 control-label">Residency for Tax Purposes</label>
                <input type="text" class="col-sm-7" placeholder="Residency for Tax Purposes" id="res"
                       name="res" value="" required="required">
            </div>

        </div>

    </div>
</div>


<div class="clearfix form-actions">
    <div class="col-md-offset-10 col-md-2">

        <button class="btn btn-primary btn-sm" type="submit" name="buttonSeven" id="buttonSeven">Next</button>


    </div>
</div>



