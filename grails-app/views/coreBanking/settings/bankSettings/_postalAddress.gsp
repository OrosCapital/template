<div class="row">
    <div class="col-md-12 col-sm-12">

        <div class="col-md-4 col-sm-4">
            <div class="form-group">
                <label for="postalZipCode">Postal Zip Code</label>
                <input type="text" required="" oninvalid="this.setCustomValidity('${message(code: 'bankSetup.postalAddress.postalZipCode',default: 'Please Enter Postal Zip Code')}')" oninput="setCustomValidity('')" title="${message(code: 'bankSetup.postalAddress.postalZipCode',default: 'Please Enter Postal Zip Code')}" class="form-control" id="postalZipCode" name="postalZipCode"
                       value="${bankSetupData?.postalZipCode}"   placeholder="Enter Postal Zip Code">
            </div>

        </div>

        <div class="col-md-4 col-sm-4">
            <div class="form-group">
                <label for="postalAddressLine1">Postal Address</label>
                <input type="text" required="" oninvalid="this.setCustomValidity('${message(code: 'bankSetup.postalAddress.postalAddressLine1',default: 'Please Enter Postal Address')}')" oninput="setCustomValidity('')" title="${message(code: 'bankSetup.postalAddress.postalAddressLine1',default: 'Please Enter Postal Address')}" class="form-control" id="postalAddressLine1"
                       value="${bankSetupData?.postalAddressLine1}"  name="postalAddressLine1" placeholder="Enter Postal Address">
            </div>

        </div>

        <div class="col-md-4 col-sm-4">
            <div class="form-group">
                <label for="postalCity">Postal City</label>
                <input type="text" required="" oninvalid="this.setCustomValidity('${message(code: 'bankSetup.postalAddress.postalCity',default: 'Please Enter Postal City')}')" oninput="setCustomValidity('')" title="${message(code: 'bankSetup.postalAddress.postalCity',default: 'Please Enter Postal City')}" class="form-control" id="postalCity" name="postalCity"
                       value="${bankSetupData?.postalCity}" placeholder="Enter Postal City">
            </div>

        </div>

    </div>

    <div class="col-md-12 col-sm-12">
        <div class="col-md-4 col-sm-4">
            <div class="form-group">
                <label for="postalState">Postal State</label>
                <input type="text" required="" oninvalid="this.setCustomValidity('${message(code: 'bankSetup.postalAddress.postalState',default: 'Please Enter Postal State')}')" oninput="setCustomValidity('')" title="${message(code: 'bankSetup.postalAddress.postalState',default: 'Please Enter Postal State')}" class="form-control" id="postalState" name="postalState"
                       value="${bankSetupData?.postalState}"  placeholder="Enter Postal State">
            </div>

        </div>

        <div class="col-md-4 col-sm-4">
            <div class="form-group">
                <label for="postalCountry">Postal Country *</label>


                    <select class="form-control" required="" oninvalid="this.setCustomValidity('${message(code: 'bankSetup.postalAddress.postalCountry',default: 'Please Select Postal Country')}')" oninput="setCustomValidity('')" title="${message(code: 'bankSetup.postalAddress.postalCountry',default: 'Please Select Postal Country')}" name="postalCountry" id="postalCountry">
                        <option value="">Chose A Country</option>
                        <option value="bangladesh">Bangladesh</option>
                        <option value="india">India</option>
                        <option value="pakistan">Pakistan</option>
                        <option value="japan">Japan</option>
                        <option value="australia">Australia</option>
                    </select>

            </div>

        </div>

        <div class="col-md-4 col-sm-4">
            <div class="form-group">
                <label for="phoneNo">Phone #</label>
                <input type="text" required="" oninvalid="this.setCustomValidity('${message(code: 'bankSetup.postalAddress.phoneNo',default: 'Please Enter Phone Number')}')" oninput="setCustomValidity('')" title="${message(code: 'bankSetup.postalAddress.phoneNo',default: 'Please Enter Phone Number')}" class="form-control" id="phoneNo" name="phoneNo"
                       value="${bankSetupData?.phoneNo}"   placeholder="Enter Phone Number">
            </div>

        </div>

    </div>

    <div class="col-md-12 col-sm-12">
        <div class="col-md-4 col-sm-4">
            <div class="form-group">
                <label for="mobileNo">Mobile #</label>
                <input type="text" required="" oninvalid="this.setCustomValidity('${message(code: 'bankSetup.postalAddress.mobileNo',default: 'Please Enter Mobile Number')}')" oninput="setCustomValidity('')" title="${message(code: 'bankSetup.postalAddress.mobileNo',default: 'Please Enter Mobile Number')}" class="form-control" id="mobileNo" name="mobileNo"
                       value="${bankSetupData?.mobileNo}"   placeholder="Enter Mobile Number">
            </div>

        </div>

        <div class="col-md-4 col-sm-4">
            <div class="form-group">
                <label for="faxNo">Fax #</label>
                <input type="text" required="" oninvalid="this.setCustomValidity('${message(code: 'bankSetup.postalAddress.faxNo',default: 'Please Enter Fax Number')}')" oninput="setCustomValidity('')" title="${message(code: 'bankSetup.postalAddress.faxNo',default: 'Please Enter Fax Number')}" class="form-control" id="faxNo" name="faxNo"
                       value="${bankSetupData?.faxNo}"   placeholder="Enter Fax Number">
            </div>

        </div>

        <div class="col-md-4 col-sm-4">
            <div class="form-group">
                <label for="emailAddress">First Email</label>
                <input type="email" required="" oninvalid="this.setCustomValidity('${message(code: 'bankSetup.postalAddress.emailAddress',default: 'Please Enter First Email Id')}')" oninput="setCustomValidity('')" title="${message(code: 'bankSetup.postalAddress.emailAddress',default: 'Please Enter First Email Id')}" class="form-control" id="emailAddress" name="emailAddress"
                       value="${bankSetupData?.emailAddress}"   placeholder="Enter First Email">
            </div>

        </div>

    </div>

    <div class="col-md-12 col-sm-12">
        <div class="col-md-4 col-sm-4">
            <div class="form-group">
                <label for="secondEmailAddress">Second Email</label>
                <input type="email" required="" oninvalid="this.setCustomValidity('${message(code: 'bankSetup.postalAddress.secondEmailAddress',default: 'Please Enter Second Email Id')}')" oninput="setCustomValidity('')" title="${message(code: 'bankSetup.postalAddress.secondEmailAddress',default: 'Please Enter Second Email Id')}" class="form-control" id="secondEmailAddress" name="secondEmailAddress"
                       value="${bankSetupData?.secondEmailAddress}"   placeholder="Enter Second Email">
            </div>

        </div>
        <div class="col-md-4 col-sm-4">
            <div class="form-group">
                <label for="websiteAddress">Website URL</label>
                <input type="url" required="" oninvalid="this.setCustomValidity('${message(code: 'bankSetup.postalAddress.websiteAddress',default: 'Please Enter Website URL')}')" oninput="setCustomValidity('')" title="${message(code: 'bankSetup.postalAddress.websiteAddress',default: 'Please Enter Website URL')}" class="form-control" id="websiteAddress" name="websiteAddress"
                       value="${bankSetupData?.websiteAddress}"   placeholder="Enter Website URL">
            </div>

        </div>
    </div>

</div>