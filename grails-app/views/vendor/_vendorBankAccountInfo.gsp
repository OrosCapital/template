<g:form name="vendorBankAccountInfoForm" method="post" role="form" class="form-horizontal">
<div class="row">
    <div class="col-md-12">

        <div class="col-md-6">

            <div class="form-group">
                <label for="vendorBankAccountName" class="col-sm-5 control-label">Bank Account Name<span class="red">*</span></label>
                <input type="text" class="col-sm-7" placeholder="Bank Account Name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Bank Account Name'" id="vendorBankAccountName"
                       name="bankAccountName" required/>
            </div>

            <div class="form-group">
                <label for="vendorBankAccountNo" class="col-sm-5 control-label">Bank Account No<span class="red">*</span></label>
                <input type="text" class="col-sm-7" placeholder="Bank Account No" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Bank Account No'" id="vendorBankAccountNo"
                       name="bankAccountNo" required/>
            </div>



        </div>

        <div class="col-md-6">

            <div class="form-group">
                <label for="vendorIbanPrefix" class="col-sm-5 control-label">Iban Prefix<span class="red">*</span></label>
                <input type="text" class="col-sm-7" placeholder="Iban Prefix" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Iban Prefix'" id="vendorIbanPrefix"
                       name="ibanPrefix" required/>
            </div>

            <div class="form-group">
                <label for="vendorStatus"
                       class="col-sm-5 control-label">Status</label>
                <div class="col-sm-7">
                    <select id="vendorStatus" class="form-control" name="status">
                        <option>-Select-</option>
                        <option value="1">Active</option>
                        <option value="0">Inactive</option>
                    </select>
                </div>
            </div>

        </div>

        <div class="form-group">
            <div class="col-md-offset-10 col-md-2">

                <button class="btn btn-primary btn-sm" type="button" id="accountInfoButton" name="accountInfoButton">Create</button>

            </div>
        </div>

    </div>
</div>
</g:form>

<div class="row">
    <div class="col-md-12">
        <table class="table" id="vendorBankAccountInfoTable">
            <thead>
            <tr style="background: #dceefc">
                <th>Bank Account Name</th>
                <th>Iban Prefix</th>
                <th>Bank Account No</th>
                <th>Status</th>
                <th>Action</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td id="td1"></td>
                <td id="td2"></td>
                <td id="td3"></td>
                <td id="td4"></td>
                <td><span class="glyphicon glyphicon-pencil"></span></td>
            </tr>
            </tbody>
        </table>
    </div>
</div>

