<div class="row">
    <div class=" col-md-12 col-sm-12 ">

        <div class=" col-md-4 col-sm-4 ">
            <div class="form-group">
                <label for="retailerName">Retailer Name *</label>
                <input type="text" required=""
                       oninvalid="this.setCustomValidity('${message(code: 'retailerSetup.retailerBasicInfo.retailerName',default: 'Please Enter Retailer Name')}')"
                       oninput="setCustomValidity('')" title="${message(code: 'retailerSetup.retailerBasicInfo.retailerName', default: 'Please Enter Retailer Name')}"
                       class="form-control" id="retailerName" name="retailerName"
                       placeholder="Enter Retailer Name">
            </div>
        </div>

        <div class=" col-md-4 col-sm-4 ">
            <div class="form-group">
                <label for="retailerCode">Retailer Code *</label>
                <input type="text" required=""
                       oninvalid="this.setCustomValidity('${message(code: 'retailerSetup.retailerBasicInfo.retailerCode',default: 'Please Enter Retailer Code')}')"
                       oninput="setCustomValidity('')" title="${message(code: 'retailerSetup.retailerBasicInfo.retailerCode', default: 'Please Enter Retailer Code')}"
                       class="form-control" id="retailerCode" name="retailerCode"
                       placeholder="Enter Retailer Code">
            </div>
        </div>

        <div class=" col-md-4 col-sm-4 ">
            <div class="form-group">
                <label for="account">Account</label>

                <select required="" class="form-control custom"
                        oninvalid="this.setCustomValidity('${message(code: 'retailerSetup.retailerBasicInfo.account',default: 'Please Select Account')}')"
                        oninput="setCustomValidity('')" title="${message(code: 'retailerSetup.retailerBasicInfo.account', default: 'Please Select Account')}"
                        name="account" id="account">
                    <option value="account">Account Code--Account Name</option>
                </select>

            </div>
        </div>

    </div>

    <div class=" col-md-12 col-sm-12">

        <div class="col-md-4 col-sm-4 ">
            <div class="form-group">
                <label for="currency">Currency</label>

                <select required="" class="form-control custom"
                        oninvalid="this.setCustomValidity('${message(code: 'retailerSetup.retailerBasicInfo.currency',default: 'Please Select Currency')}')"
                        oninput="setCustomValidity('')" title="${message(code: 'retailerSetup.retailerBasicInfo.currency', default: 'Please Select Currency')}"
                        name="currency" id="currency">
                    <option value="currency">Default</option>
                </select>

            </div>
        </div>

        <div class="col-md-4 col-sm-4">
            <div class="form-group">
                <label for="branch">Branch</label>

                <select required="" class="form-control custom"
                        oninvalid="this.setCustomValidity('${message(code: 'retailerSetup.retailerBasicInfo.branch',default: 'Please Select Branch')}')"
                        oninput="setCustomValidity('')" title="${message(code: 'retailerSetup.retailerBasicInfo.branch', default: 'Please Select Branch')}"
                        name="branch" id="branch">
                    <option value="Branch">Default</option>
                </select>

            </div>
        </div>

    </div>



</div>