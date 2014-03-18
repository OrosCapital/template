<g:form name="customerForm" method="post" role="form" class="form-horizontal" controller="customer" action="saveShipmentAddress">
    <div class="row">
        <!-- PAGE CONTENT BEGINS -->

        <div class="col-xs-4">
            <g:hiddenField name="customer" id="customer" value="${customerPostalAddress?.customerId}"/>
            <div class="form-group">
                <label for="shipContactName" class="col-sm-5 control-label no-padding-right no-padding-left">
                    Contact Name*
                </label>
                <div class="col-sm-7">
                    <input type="text" class="col-xs-10 col-sm-12" placeholder="Contact Name"
                           id="shipContactName" name="shipContactName" required
                           oninvalid="this.setCustomValidity('Contact Name is a must')"
                           oninput="setCustomValidity('')">
                </div>
            </div>
            <div class="form-group">
                <label for="shipAddLine1" class="col-sm-5 control-label no-padding-right no-padding-left">
                    Shipping Address Line2
                </label>
                <div class="col-sm-7">
                    <textarea name="shipAddLine1" id="shipAddLine1" class="col-xs-10 col-sm-12"></textarea>
                </div>
            </div>
            <div class="form-group">
                <label for="shipFax" class="col-sm-5 control-label no-padding-right no-padding-left">
                    Ship Fax
                </label>
                <div class="col-sm-7">
                    <input type="text" class="col-xs-10 col-sm-12" placeholder="Ship Fax"
                           id="shipFax" name="shipFax">
                </div>
            </div>
            <div class="form-group">
                <label for="shipCity" class="col-sm-5 control-label no-padding-right no-padding-left">
                    Ship City
                </label>
                <div class="col-sm-7">
                    <input type="text" class="col-xs-10 col-sm-12" placeholder="Ship City"
                           id="shipCity" name="shipCity">
                </div>
            </div>
            <div class="form-group">
                <label for="note" class="col-sm-5 control-label no-padding-right no-padding-left">
                    Note*
                </label>
                <div class="col-sm-7">
                    <textarea name="note" id="note" class="col-xs-10 col-sm-12" required
                              oninvalid="this.setCustomValidity('Note is a must')"
                              oninput="setCustomValidity('')"></textarea>
                </div>
            </div>
        </div><!-- /.col -->
        <div class="col-xs-4">
            <div class="form-group">
                <label for="shipPostCode" class="col-sm-5 control-label no-padding-right no-padding-left">
                    Ship Post Code
                </label>
                <div class="col-sm-7">
                    <input type="text" class="col-xs-10 col-sm-12" placeholder="Ship Post Code"
                           id="shipPostCode" name="shipPostCode">
                </div>
            </div>
            <div class="form-group">
                <label for="shipPhoneNo1" class="col-sm-5 control-label no-padding-right no-padding-left">
                    Ship Phone No1
                </label>
                <div class="col-sm-7">
                    <input type="text" class="col-xs-10 col-sm-12" placeholder="Ship Phone No1"
                           id="shipPhoneNo1" name="shipPhoneNo1">
                </div>
            </div>
            <div class="form-group">
                <label for="shipEmail" class="col-sm-5 control-label no-padding-right no-padding-left">
                    Ship Email
                </label>
                <div class="col-sm-7">
                    <input type="email" class="col-xs-10 col-sm-12" placeholder="Ship Email"
                           id="shipEmail" name="shipEmail">
                </div>
            </div>
            <div class="form-group">
                <label for="shipState" class="col-sm-5 control-label no-padding-right no-padding-left">
                    Ship State
                </label>
                <div class="col-sm-7">
                    <input type="text" class="col-xs-10 col-sm-12" placeholder="Ship State"
                           id="shipState" name="shipState">
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
                <label for="shipAddLine2" class="col-sm-5 control-label no-padding-right no-padding-left">
                    Shipping Address Line1
                </label>
                <div class="col-sm-7">
                    <textarea name="shipAddLine2" id="shipAddLine2" class="col-xs-10 col-sm-12"></textarea>
                </div>
            </div>
            <div class="form-group">
                <label for="shipPhoneNo2" class="col-sm-5 control-label no-padding-right no-padding-left">
                    Ship Phone No2
                </label>
                <div class="col-sm-7">
                    <input type="text" class="col-xs-10 col-sm-12" placeholder="Ship Phone No2"
                           id="shipPhoneNo2" name="shipPhoneNo2">
                </div>
            </div>
            <div class="form-group">
                <label for="shipWebsite" class="col-sm-5 control-label no-padding-right no-padding-left">
                    Second Email
                </label>
                <div class="col-sm-7">
                    <input type="text" class="col-xs-10 col-sm-12" placeholder="Ship Website"
                           id="shipWebsite" name="shipWebsite">
                </div>
            </div>
            <div class="form-group">
                <label for="shipCountry"
                       class="col-sm-5 control-label no-padding-right no-padding-left">Ship Country*</label>
                <div class="col-sm-7">
                    <select name="shipCountry" id="shipCountry" class="form-control" required="required">
                        <option value="">- Choose One -</option>
                        <g:each var="shipCountry" in="${countryList}">
                            <option value="${shipCountry.id}">${shipCountry.name}</option>
                        </g:each>
                    </select>
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