<g:form name="customerForm" method="post" role="form" class="form-horizontal" controller="customer" action="savePostalAddress">
    <div class="row">
        <!-- PAGE CONTENT BEGINS -->
        <div class="col-xs-4">
            <g:hiddenField name="customer" id="customer" value="${customerGeneralAddress?.customerId}"/>
            <div class="form-group">
                <label for="postalContactPersonName" class="col-sm-5 control-label no-padding-right no-padding-left">
                    Postal Contact Name
                </label>
                <div class="col-sm-7">
                    <input type="text" class="col-xs-10 col-sm-12" placeholder="Postal Contact Name"
                           id="postalContactPersonName" name="postalContactPersonName">
                </div>
            </div>
            <div class="form-group">
                <label for="PostalState" class="col-sm-5 control-label no-padding-right no-padding-left">
                    Postal State
                </label>
                <div class="col-sm-7">
                    <input type="text" class="col-xs-10 col-sm-12" placeholder="Postal State"
                           id="PostalState" name="PostalState">
                </div>
            </div>
            <div class="form-group">
                <label for="postalCountry"
                       class="col-sm-5 control-label no-padding-right no-padding-left">Postal Country</label>
                <div class="col-sm-7">
                    <select name="postalCountry" id="postalCountry" class="form-control" required="required">
                        <option value="">- Choose One -</option>
                        <g:each var="postalCountry" in="${countryList}">
                            <option value="${postalCountry.id}">${postalCountry.name}</option>
                        </g:each>
                    </select>
                </div>
            </div>
        </div><!-- /.col -->
        <div class="col-xs-4">
            <div class="form-group">
                <label for="postalAddressLine1" class="col-sm-5 control-label no-padding-right no-padding-left">
                    First Postal Address
                </label>
                <div class="col-sm-7">
                    <textarea name="postalAddressLine1" id="postalAddressLine1" class="col-xs-10 col-sm-12"></textarea>
                </div>
            </div>
            <div class="form-group">
                <label for="postalPostcode" class="col-sm-5 control-label no-padding-right no-padding-left">
                    Postal Post Code
                </label>
                <div class="col-sm-7">
                    <input type="text" class="col-xs-10 col-sm-12" placeholder="Postal Post Code"
                           id="postalPostcode" name="postalPostcode">
                </div>
            </div>
            <div class="form-group">
                <label for="status"
                       class="col-sm-5 control-label no-padding-right no-padding-left">Status</label>
                <div class="col-sm-7">
                    <select name="status" id="status" class="form-control">
                        <option value="1">Active</option>
                        <option value="0">Inactive</option>
                    </select>
                </div>
            </div>
        </div><!-- /.col -->
        <div class="col-xs-4">
            <div class="form-group">
                <label for="postalAddressLine2" class="col-sm-5 control-label no-padding-right no-padding-left">
                    Postal Address Line2
                </label>
                <div class="col-sm-7">
                    <textarea name="postalAddressLine2" id="postalAddressLine2" class="col-xs-10 col-sm-12"></textarea>
                </div>
            </div>
            <div class="form-group">
                <label for="postalCity" class="col-sm-5 control-label no-padding-right no-padding-left">
                    Postal City
                </label>
                <div class="col-sm-7">
                    <input type="text" class="col-xs-10 col-sm-12" placeholder="Postal City"
                           id="postalCity" name="postalCity">
                </div>
            </div>
        </div><!-- /.col -->
    </div>

    <div class="clearfix form-actions">
        <div class="col-md-offset-5 col-md-9">
            <button type="submit" class="btn btn-info"><i class="icon-ok bigger-110">
            </i>Update</button>
        </div>
    </div>

</g:form>