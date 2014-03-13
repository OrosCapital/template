<div class="row">
    <div class=" col-md-12 col-sm-12 ">

        <div class=" col-md-4 col-sm-4">

            <div class="form-group">
                <label for="companyFullName">Company Full Name</label>
                <input type="text" required=""
                       oninvalid="this.setCustomValidity('${message(code: 'bankSetup.genelarInformation.companyFullName',default: 'Please Enter Company Full Name')}')"
                       oninput="setCustomValidity('')"
                       title="${message(code: 'bankSetup.genelarInformation.companyFullName', default: 'Please Enter Company Full Name')}"
                       class="form-control" id="companyFullName" name="companyFullName"
                       value="${bankSetupData?.companyFullName}" placeholder="Enter Company Name">
            </div>

        </div>

        <div class="col-md-4 col-sm-4">

            <div class="form-group">
                <label for="companyShortName">Com.Short Name</label>
                <input type="text" required=""
                       oninvalid="this.setCustomValidity('${message(code: 'bankSetup.genelarInformation.companyShortName',default: 'Please Enter Company Short Name')}')"
                       oninput="setCustomValidity('')"
                       title="${message(code: 'bankSetup.genelarInformation.companyShortName', default: 'Please Enter Company Short Name')}"
                       class="form-control" id="companyShortName"
                       value="${bankSetupData?.companyShortName}" name="companyShortName"
                       placeholder="Enter Company Short Name">
            </div>

        </div>

        <div class="col-md-4 col-sm-4">

            <div class="form-group">
                <label for="chamberCommerceNo">Chamber of Com</label>
                <input type="text" required=""
                       oninvalid="this.setCustomValidity('${message(code: 'bankSetup.genelarInformation.chamberCommerceNo',default: 'Please Enter Chamber Of Commerce')}')"
                       oninput="setCustomValidity('')"
                       title="${message(code: 'bankSetup.genelarInformation.chamberCommerceNo', default: 'Please Enter Chamber Of Commerce')}"
                       class="form-control" id="chamberCommerceNo" name="chamberCommerceNo"
                       value="${bankSetupData?.companyShortName}" placeholder="Enter Chamber of Com">
            </div>

        </div>

    </div>

    <div class=" col-md-12 col-sm-12 ">
        <div class="col-md-4 col-sm-4">

            <div class="form-group">
                <label for="logo">Company Logo</label>
                <input type="file" required="" class="form-control" id="logo" name="logo"
                       placeholder="Upload Company Logo">
            </div>

        </div>

        <div class="col-md-4 col-sm-4">

            <div class="form-group">
                <label for="country">Country</label>

                <select  class="width-90 chosen-select form-control"
                        oninvalid="this.setCustomValidity('${message(code: 'bankSetup.genelarInformation.country',default: 'Please Select Country Name')}')"
                        oninput="setCustomValidity('')"
                        title="${message(code: 'bankSetup.genelarInformation.country', default: 'Please Select Country Name')}"
                        name="country" id="country" data-placeholder="Choose a Country...">
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
                <input type="text" required=""
                       oninvalid="this.setCustomValidity('${message(code: 'bankSetup.genelarInformation.state',default: 'Please Enter State Name')}')"
                       oninput="setCustomValidity('')"
                       title="${message(code: 'bankSetup.genelarInformation.state', default: 'Please Enter State Name')}"
                       class="form-control" id="state" name="state"
                       value="${bankSetupData?.state}" placeholder="Enter State Name">
            </div>

        </div>

    </div>

    <div class="col-md-12 col-sm-12">
        <div class="col-md-4 col-sm-4">

            <div class="form-group">
                <label for="addressLine2">Address Line 2</label>
                <input type="text" required=""
                       oninvalid="this.setCustomValidity('${message(code: 'bankSetup.genelarInformation.addressLine2',default: 'Please Enter Address Name')}')"
                       oninput="setCustomValidity('')"
                       title="${message(code: 'bankSetup.genelarInformation.addressLine2', default: 'Please Enter Address Name')}"
                       class="form-control" id="addressLine2" name="addressLine2"
                       value="${bankSetupData?.addressLine2}" placeholder="Enter Address Line">
            </div>

        </div>

        <div class="col-md-4 col-sm-4">

            <div class="form-group">
                <label for="generalStreet">Street Name</label>
                <input type="text" required=""
                       oninvalid="this.setCustomValidity('${message(code: 'bankSetup.genelarInformation.generalStreet',default: 'Please Enter Street Name')}')"
                       oninput="setCustomValidity('')"
                       title="${message(code: 'bankSetup.genelarInformation.generalStreet', default: 'Please Enter Street Name')}"
                       class="form-control" id="generalStreet" name="generalStreet"
                       value="${bankSetupData?.generalStreet}" placeholder="Enter Stree Name">
            </div>

        </div>

        <div class="col-md-4 col-sm-4">

            <div class="form-group">
                <label for="zipCode">Post Code</label>
                <input type="text" required=""
                       oninvalid="this.setCustomValidity('${message(code: 'bankSetup.genelarInformation.zipCode',default: 'Please Enter Post Code')}')"
                       oninput="setCustomValidity('')"
                       title="${message(code: 'bankSetup.genelarInformation.zipCode', default: 'Please Enter Post Code')}"
                       class="form-control" id="zipCode" name="zipCode"
                       value="${bankSetupData?.zipCode}" placeholder="Enter postCode">
            </div>

        </div>

    </div>

    <div class="col-md-12 col-sm-12">
        <div class="col-md-4 col-sm-4">
            <div class="form-group">
                <label for="city">City</label>
                <input type="text" required=""
                       oninvalid="this.setCustomValidity('${message(code: 'bankSetup.genelarInformation.city',default: 'Please Enter City Name')}')"
                       oninput="setCustomValidity('')"
                       title="${message(code: 'bankSetup.genelarInformation.city', default: 'Please Enter City Name')}"
                       class="form-control" id="city" name="city"
                       value="${bankSetupData?.city}" placeholder="Enter city Name">
            </div>

        </div>

    </div>

</div>