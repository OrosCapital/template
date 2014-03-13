<div class="row">
    <div class="col-md-12 col-sm-12">

        <div class="col-md-4 col-sm-4">
            <div class="form-group">
                <label for="branchName">Branch Full Name *</label>
                <input type="text" required="" oninvalid="this.setCustomValidity('${message(code: 'branchSetup.branchDetails.branchName',default: 'Please Enter Branch Full Name')}')" oninput="setCustomValidity('')" title="${message(code: 'branchSetup.branchDetails.branchName',default: 'Please Enter Branch Full Name')}" class="form-control" id="branchName" name="branchName"
                             placeholder="Enter Branch Name">
            </div>

        </div>

        <div class="col-md-4 col-sm-4">
            <div class="form-group">
                <label for="branchShortName">Branch Short Name *</label>
                <input type="text" required="" oninvalid="this.setCustomValidity('${message(code: 'branchSetup.branchDetails.branchShortName',default: 'Please Enter Branch Short Name')}')" oninput="setCustomValidity('')" title="${message(code: 'branchSetup.branchDetails.branchShortName',default: 'Please Enter Branch Short Name')}" class="form-control" id="branchShortName"
                       name="branchShortName" placeholder="Enter Branch Short Name">
            </div>

        </div>

        <div class="col-md-4 col-sm-4">
            <div class="form-group">
                <label for="branchType">Branch Type</label>

                <select required="" class="form-control custom" oninvalid="this.setCustomValidity('${message(code: 'branchSetup.branchDetails.branchType',default: 'Please Select Branch Type')}')" oninput="setCustomValidity('')" title="${message(code: 'branchSetup.branchDetails.branchType',default: 'Please Select Branch Type')}" name="branchType" id="branchType">
                    <option value="">Chose A Branch Type</option>
                    <option value="RegionalBranch" selected>Regional Branch</option>
                    <option value="DivisionalBranch">Divisional Branch</option>
                    <option value="AreaBranch">Area Branch</option>
                </select>

            </div>
        </div>

    </div>

    <div class="col-md-12 col-sm-12">
        <div class="col-md-4 col-sm-4">
            <div class="form-group">
                <label for="parentOffice">Parent Office</label>

                <select required="" class="form-control custom" oninvalid="this.setCustomValidity('${message(code: 'branchSetup.branchDetails.parentOffice',default: 'Please Select Parent Office Name')}')" oninput="setCustomValidity('')" title="${message(code: 'branchSetup.branchDetails.parentOffice',default: 'Please Select Parent Office Name')}" name="parentOffice" id="parentOffice">
                    <option value="">Chose A Parent Office</option>
                    <option value="HeadOffice" selected>Head Office(OrosCapital HO)</option>
                </select>

            </div>
        </div>

        <div class="col-md-4 col-sm-4">
            <div class="form-group">
                <label for="Country">Country</label>

                <select  class="width-90 chosen-select form-control" oninvalid="this.setCustomValidity('${message(code: 'branchSetup.branchDetails.Country',default: 'Please Select Country Name')}')" oninput="setCustomValidity('')" title="${message(code: 'branchSetup.branchDetails.Country',default: 'Please Select Country Name')}" name="Country" id="Country" data-placeholder="Choose a Country...">
                    <option value="">Chose A Country</option>
                    <g:each in="${country}" var="countryList">
                        <option value="${countryList.id}">${countryList.name}</option>
                    </g:each>
                </select>

            </div>

        </div>

        <div class="col-md-4 col-sm-4">
            <div class="form-group">
                <label for="state">State</label>
                <input type="text" required="" oninvalid="this.setCustomValidity('${message(code: 'branchSetup.branchDetails.state',default: 'Please Enter State Name')}')" oninput="setCustomValidity('')" title="${message(code: 'branchSetup.branchDetails.state',default: 'Please Enter State Name')}" class="form-control" id="state" name="state"
                       placeholder="Enter State Name">
            </div>

        </div>

    </div>

    <div class="col-md-12 col-sm-12">
        <div class="col-md-4 col-sm-4">
            <div class="form-group">
                <label for="addressLine2">Address Line 2</label>
                <input type="text" required="" oninvalid="this.setCustomValidity('${message(code: 'branchSetup.branchDetails.addressLine2',default: 'Please Enter Address Name')}')" oninput="setCustomValidity('')" title="${message(code: 'branchSetup.branchDetails.addressLine2',default: 'Please Enter Address Name')}" class="form-control" id="addressLine2" name="addressLine2"
                       placeholder="Enter Address Line">
            </div>

        </div>

        <div class="col-md-4 col-sm-4">
            <div class="form-group">
                <label for="streetName">Stree Name</label>
                <input type="text" required="" oninvalid="this.setCustomValidity('${message(code: 'branchSetup.branchDetails.streetName',default: 'Please Enter Street Name')}')" oninput="setCustomValidity('')" title="${message(code: 'branchSetup.branchDetails.streetName',default: 'Please Enter Stree Name')}" class="form-control" id="streetName" name="streetName"
                       placeholder="Enter Street Name">
            </div>

        </div>

        <div class="col-md-4 col-sm-4">
            <div class="form-group">
                <label for="postCode">Post Code</label>
                <input type="text" required="" oninvalid="this.setCustomValidity('${message(code: 'branchSetup.branchDetails.postCode',default: 'Please Enter Post Code')}')" oninput="setCustomValidity('')" title="${message(code: 'branchSetup.branchDetails.postCode',default: 'Please Enter Post Code')}"  class="form-control" id="postCode" name="postCode"
                       placeholder="Enter postCode">
            </div>

        </div>

    </div>

    <div class="col-md-12 col-sm-12">
        <div class="col-md-4 col-sm-4">
            <div class="form-group">
                <label for="city">City</label>
                <input type="text" required="" oninvalid="this.setCustomValidity('${message(code: 'branchSetup.branchDetails.city',default: 'Please Enter City Name')}')" oninput="setCustomValidity('')" title="${message(code: 'branchSetup.branchDetails.city',default: 'Please Enter City Name')}" class="form-control" id="city" name="city"
                       placeholder="Enter city Name">
            </div>

        </div>


    </div>



</div>