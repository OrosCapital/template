<g:form name="customerForm" method="post" role="form" class="form-horizontal" controller="customer" action="saveBankAccount">
    <div class="row">
        <!-- PAGE CONTENT BEGINS -->

        <div class="col-xs-4">
            <g:hiddenField name="customer" id="customer" value="${customerShipmentAddress?.customerId}"/>
            <div class="form-group">
                <label for="bankAccountName" class="col-sm-5 control-label no-padding-right no-padding-left">
                    Bank Account Name*
                </label>
                <div class="col-sm-7">
                    <input type="text" class="col-xs-10 col-sm-12" placeholder="Bank Account Name"
                           id="bankAccountName" name="bankAccountName" required
                           oninvalid="this.setCustomValidity('Bank Account Name is a must')"
                           oninput="setCustomValidity('')">
                </div>
            </div>
            <div class="form-group">
                <label for="status"
                       class="col-sm-5 control-label no-padding-right no-padding-left">Bank Account Status</label>
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
                <label for="ibanPrefix" class="col-sm-5 control-label no-padding-right no-padding-left">
                    Iban Prefix*
                </label>
                <div class="col-sm-7">
                    <input type="text" class="col-xs-10 col-sm-12" placeholder="Iban Prefix"
                           id="ibanPrefix" name="ibanPrefix" required
                           oninvalid="this.setCustomValidity('Iban Prefix is a must')"
                           oninput="setCustomValidity('')">
                </div>
            </div>
        </div><!-- /.col -->
        <div class="col-xs-4">
            <div class="form-group">
                <label for="bankAccountNo" class="col-sm-5 control-label no-padding-right no-padding-left">
                    Bank Account Number*
                </label>
                <div class="col-sm-7">
                    <input type="text" class="col-xs-10 col-sm-12" placeholder="Bank Account Number"
                           id="bankAccountNo" name="bankAccountNo" required
                           oninvalid="this.setCustomValidity('Bank Account Number is a must')"
                           oninput="setCustomValidity('')">
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