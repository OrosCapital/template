<div class="row">
    <div class=" col-md-12 col-sm-12 ">

        <div class=" col-md-4 col-sm-4 ">
            <div class="form-group">
                <label for="country">Country</label>


                <select required="" class="form-control custom" oninvalid="this.setCustomValidity('${message(code: 'retailerSetup.retailerAddress.country',default: 'Please Select Country Name')}')" oninput="setCustomValidity('')" title="${message(code: 'retailerSetup.retailerAddress.country',default: 'Please Select Country Name')}" name="country" id="country">
                    <option value="">Chose A Country</option>
                    <option value="Bangladesh" selected>Bangladesh</option>
                    <option value="India" >India</option>
                    <option value="Pakistan">Pakistan</option>
                    <option value="Japan">Japan</option>
                    <option value="Australia">Australia</option>
                </select>

            </div>

        </div>

        <div class=" col-md-4 col-sm-4 ">
            <div class="form-group">
                <label for="district">District</label>


                <select required="" class="form-control custom" oninvalid="this.setCustomValidity('${message(code: 'retailerSetup.retailerAddress.district',default: 'Please Select District Name')}')" oninput="setCustomValidity('')" title="${message(code: 'retailerSetup.retailerAddress.district',default: 'Please Select District Name')}" name="district" id="district">
                    <option value="District">District</option>
                </select>

            </div>

        </div>

        <div class=" col-md-4 col-sm-4 ">
            <div class="form-group">
                <label for="city">City</label>


                <select required="" class="form-control custom" oninvalid="this.setCustomValidity('${message(code: 'retailerSetup.retailerAddress.city',default: 'Please Select City Name')}')" oninput="setCustomValidity('')" title="${message(code: 'retailerSetup.retailerAddress.city',default: 'Please Select City Name')}" name="city" id="city">
                    <option value="City">City</option>
                </select>

            </div>

        </div>


    </div>

    <div class=" col-md-12 col-sm-12 ">
        %{--<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">--}%
            %{--<div class="form-group">--}%
                %{--<label for="address">Address</label>--}%
                %{--<input type="text" required="" oninvalid="this.setCustomValidity('${message(code: '',default: 'Please Enter Address')}')" oninput="setCustomValidity('')" title="${message(code: '',default: 'Please Enter Address')}" class="form-control" id="address" name="address"--}%
                       %{--placeholder="Enter Address">--}%
            %{--</div>--}%

        %{--</div>--}%

        <div class=" col-md-4 col-sm-4 ">
            <div class="form-group">
                <label for="zipCode">Zip Code#</label>
                <input type="text" required="" oninvalid="this.setCustomValidity('${message(code: 'retailerSetup.retailerAddress.zipCode',default: 'Please Enter Zip Code')}')" oninput="setCustomValidity('')" title="${message(code: 'retailerSetup.retailerAddress.zipCode',default: 'Please Enter Zip Code')}" class="form-control" id="zipCode" name="zipCode"
                       placeholder="Enter Zip Code">
            </div>

        </div>

        <div class=" col-md-4 col-sm-4 ">
            <div class="form-group">
                <label for="phone">Phone #</label>
                <input type="text" required="" oninvalid="this.setCustomValidity('${message(code: 'retailerSetup.retailerAddress.phone',default: 'Please Enter Phone Number')}')" oninput="setCustomValidity('')" title="${message(code: 'retailerSetup.retailerAddress.phone',default: 'Please Enter Phone Number')}" class="form-control" id="phone" name="phone"
                       placeholder="Enter Phone Number">
            </div>

        </div>

    </div>




</div>