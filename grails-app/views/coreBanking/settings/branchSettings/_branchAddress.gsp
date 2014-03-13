<div class="row">
    <div class="col-md-12 col-sm-12">

        <div class="col-md-4 col-sm-4">
            <div class="form-group">
                <label for="postalZipCode">Postal Zip Code</label>
                <input type="text" required="" oninvalid="this.setCustomValidity('${message(code: 'branchSetup.branchAddress.postalZipCode',default: 'Please Enter Postal Zip Code')}')" oninput="setCustomValidity('')" title="${message(code: 'branchSetup.branchAddress.postalZipCode',default: 'Please Enter Postal Zip Code')}" class="form-control" id="postalZipCode" name="postalZipCode"
                       placeholder="Enter Postal Zip Code">
            </div>

        </div>

        <div class="col-md-4 col-sm-4">
            <div class="form-group">
                <label for="postalAddress">Postal Address</label>
                <input type="text" required="" oninvalid="this.setCustomValidity('${message(code: 'branchSetup.branchAddress.postalAddress',default: 'Please Enter Postal Address')}')" oninput="setCustomValidity('')" title="${message(code: 'branchSetup.branchAddress.postalAddress',default: 'Please Enter Postal Address')}" class="form-control" id="postalAddress"
                       name="postalAddress" placeholder="Enter Postal Address">
            </div>

        </div>

        <div class="col-md-4 col-sm-4">
            <div class="form-group">
                <label for="postalCity">Postal City</label>
                <input type="text" required="" oninvalid="this.setCustomValidity('${message(code: 'branchSetup.branchAddress.postalCity',default: 'Please Enter Postal City')}')" oninput="setCustomValidity('')" title="${message(code: 'branchSetup.branchAddress.postalCity',default: 'Please Enter Postal City')}" class="form-control" id="postalCity" name="postalCity"
                       placeholder="Enter Postal City">
            </div>

        </div>

    </div>

    <div class="col-md-12 col-sm-12">
        <div class="col-md-4 col-sm-4">
            <div class="form-group">
                <label for="postalState">Postal State</label>
                <input type="text" required="" oninvalid="this.setCustomValidity('${message(code: 'branchSetup.branchAddress.postalState',default: 'Please Enter Postal State')}')" oninput="setCustomValidity('')" title="${message(code: 'branchSetup.branchAddress.postalState',default: 'Please Enter Postal State')}" class="form-control" id="postalState" name="postalState"
                       placeholder="Enter Postal State">
            </div>

        </div>

        <div class="col-md-4 col-sm-4">
            <div class="form-group">
                <label for="postalCountry">Postal Country *</label>


                <select class="form-control" required="" oninvalid="this.setCustomValidity('${message(code: 'branchSetup.branchAddress.postalCountry',default: 'Please Select Postal Country')}')" oninput="setCustomValidity('')" title="${message(code: 'branchSetup.branchAddress.postalCountry',default: 'Please Select Postal Country')}" name="postalCountry" id="postalCountry">
                    <option value="">Chose A Country</option>
                    <option value="Bangladesh" selected>Bangladesh</option>
                    <option value="India">India</option>
                    <option value="Pakistan">Pakistan</option>
                    <option value="Japan">Japan</option>
                    <option value="Australia">Australia</option>
                </select>

            </div>

        </div>

        <div class="col-md-4 col-sm-4">
            <div class="form-group">
                <label for="phone">Phone #</label>
                <input type="text" required="" oninvalid="this.setCustomValidity('${message(code: 'branchSetup.branchAddress.phone',default: 'Please Enter Phone Number')}')" oninput="setCustomValidity('')" title="${message(code: 'branchSetup.branchAddress.phone',default: 'Please Enter Phone Number')}" class="form-control" id="phone" name="phone"
                       placeholder="Enter Phone Number">
            </div>

        </div>

    </div>

    <div class="col-md-12 col-sm-12">
        <div class="col-md-4 col-sm-4">
            <div class="form-group">
                <label for="mobile">Mobile #</label>
                <input type="text" required="" oninvalid="this.setCustomValidity('${message(code: 'branchSetup.branchAddress.mobile',default: 'Please Enter Mobile Number')}')" oninput="setCustomValidity('')" title="${message(code: 'branchSetup.branchAddress.mobile',default: 'Please Enter Mobile Number')}" class="form-control" id="mobile" name="mobile"
                       placeholder="Enter Mobile Number">
            </div>

        </div>

        <div class="col-md-4 col-sm-4">
            <div class="form-group">
                <label for="fax">Fax #</label>
                <input type="text" required="" oninvalid="this.setCustomValidity('${message(code: 'branchSetup.branchAddress.fax',default: 'Please Enter Fax Number')}')" oninput="setCustomValidity('')" title="${message(code: 'branchSetup.branchAddress.fax',default: 'Please Enter Fax Number')}" class="form-control" id="fax" name="fax"
                       placeholder="Enter Fax Number">
            </div>

        </div>

        <div class="col-md-4 col-sm-4">
            <div class="form-group">
                <label for="firstEmail">First Email</label>
                <input type="email" required="" oninvalid="this.setCustomValidity('${message(code: 'branchSetup.branchAddress.firstEmail',default: 'Please Enter First Email Id')}')" oninput="setCustomValidity('')" title="${message(code: 'branchSetup.branchAddress.firstEmail',default: 'Please Enter First Email Id')}" class="form-control" id="firstEmail" name="firstEmail"
                       placeholder="Enter First Email">
            </div>

        </div>

    </div>

    <div class="col-md-12 col-sm-12">
        <div class="col-md-4 col-sm-4">
            <div class="form-group">
                <label for="secondEmail">Second Email</label>
                <input type="email" required="" oninvalid="this.setCustomValidity('${message(code: 'branchSetup.branchAddress.secondEmail',default: 'Please Enter Second Email Id')}')" oninput="setCustomValidity('')" title="${message(code: 'branchSetup.branchAddress.secondEmail',default: 'Please Enter Second Email Id')}" class="form-control" id="secondEmail" name="secondEmail"
                       placeholder="Enter Second Email">
            </div>

        </div>

    </div>

</div>