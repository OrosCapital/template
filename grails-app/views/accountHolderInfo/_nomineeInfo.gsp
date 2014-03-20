<div class="row">
    <div class="col-md-12">

        <div class="col-md-6">

            <div class="form-group">
                <label for="nomineeFirstName" class="col-sm-5 control-label">First Name</label>
                <input type="text" class="col-sm-7" placeholder="First Name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'First Name'" id="nomineeFirstName" name="nomineeFirstName" value="">
            </div>

            <div class="form-group">
                <label for="nomineeLastName" class="col-sm-5 control-label">Last Name</label>
                <input type="text" class="col-sm-7" placeholder="Last Name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Last Name'" id="nomineeLastName"
                       name="nomineeLastName" value="">
            </div>

            <div class="form-group">
                <label for="nomineeEmail" class="col-sm-5 control-label">Email</label>
                <input type="email" class="col-sm-7" placeholder="Email" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Email'" id="nomineeEmail"
                       name="nomineeEmail">
            </div>

            <div class="form-group">
                <label for="nomineeAddressLine2" class="col-sm-5 control-label">Address Line2</label>
                <input type="text" class="col-sm-7" placeholder="Second Address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Second Address'" id="nomineeAddressLine2"
                       name="nomineeAddressLine2">
            </div>

            <div class="form-group">
                <label for="nomineeAccountNo" class="col-sm-5 control-label">Account No</label>
                <input type="text" class="col-sm-7" placeholder="Account No" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Account No'" id="nomineeAccountNo"
                       name="nomineeAccountNo">
            </div>

            <div class="form-group">
                <label for="DateOfBirthOfNominee"
                       class="col-sm-5 control-label">Date of Birth</label>
                <div class="input-append date" id="DateOfBirthOfNominee" data-date="dateValue: AccountHolder.DateOfBirth" data-date-format="dd-mm-yyyy">
                    <input class="col-sm-6" type="text" data-bind="value: AccountHolder.DateOfBirth" readonly="readonly"/>
                    <span class="add-on col-sm-1"><i class="icon-calendar"></i></span>
                </div>
                %{--<g:datePicker name="nomineeDOB"  id="nomineeDOB" value="${new Date()}"--}%
                              %{--precision="day"/>--}%
            </div>

            <div class="form-group">
                <label for="nomineeBranchName" class="col-sm-5 control-label">Branch name</label>
                <input type="text" class="col-sm-7" placeholder="Branch Name Where Account is Held" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Branch Name Where Account is Held'" id="nomineeBranchName"
                       name="nomineeBranchName">
            </div>

        </div>

        <div class="col-md-6">
            <div class="form-group">
                <label for="nomineeMiddleName" class="col-sm-5 control-label">Middle Name</label>
                <input type="text" class="col-sm-7" placeholder="Middle Name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Middle Name'" id="nomineeMiddleName"
                       name="nomineeMiddleName" value="">
            </div>


            <div class="form-group">
                <label for="nomineePhoneNo" class="col-sm-5 control-label">Contact No</label>
                <input type="text" class="col-sm-7" placeholder="Contact No" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Contact No'" id="nomineePhoneNo"
                       name="nomineePhoneNo">
            </div>

            <div class="form-group">
                <label for="nomineeAddressLine1" class="col-sm-5 control-label">Address Line1</label>
                <input type="text" class="col-sm-7" placeholder="First Address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'First Address'" id="nomineeAddressLine1"
                       name="nomineeAddressLine1">
            </div>

            <div class="form-group">
                <label for="nomineeGender"
                       class="col-sm-5 control-label">Gender</label>
                <div class="col-sm-7">
                    <select id="nomineeGender" class="form-control" name="nomineeGender" >
                        <option value="Male" selected>Male</option>
                        <option value="Female">Female</option>
                    </select>
                </div>
            </div>

            <div class="form-group">
                <label for="nomineeNatureofAccount"
                       class="col-sm-5 control-label">Nature of Account</label>
                <div class="col-sm-7">
                    <select id="nomineeNatureofAccount" class="form-control" name="nomineeNatureofAccount" >
                        <option value="current" selected>Current</option>
                        <option value="deposit">Deposit</option>
                    </select>
                </div>
            </div>

            <div class="form-group">
                <label for="nomineeRelation" class="col-sm-5 control-label">Relationship with A/C holder</label>
                <input type="text" class="col-sm-7" placeholder="Relationship with A/C holder" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Relationship with A/C holder'" id="nomineeRelation"
                       name="nomineeRelation">
            </div>


            <div class="form-group">
                <label for="status"
                       class="col-sm-5 control-label">Status</label>
                <div class="col-sm-7">
                    <select id="status" class="form-control" name="status">
                        <option>-Select-</option>
                        <option value="1">Active</option>
                        <option value="0">Inactive</option>
                    </select>
                </div>
            </div>

        </div>

    </div>
</div>

<div class="clearfix form-actions">
    <div class="col-md-offset-10 col-md-2">
        <g:actionSubmit class="btn btn-primary btn-sm"  name="create" value="Create" id="button-create" controller="com.oros.custom.vendorPostalAddress" action="save" />

    </div>
</div>