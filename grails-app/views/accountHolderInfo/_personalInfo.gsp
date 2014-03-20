
<div class="row">
    <div class="col-md-12">

        <div class="col-md-6">

            <div class="form-group">
                <label for="firstName" class="col-sm-5 control-label">First Name</label>
                <input type="text" class="col-sm-7" placeholder="First Name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'First Name'" id="firstName" name="firstName" value="">
            </div>

            <div class="form-group">
                <label for="lastName" class="col-sm-5 control-label">Last Name</label>
                <input type="text" class="col-sm-7" placeholder="Last Name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Last Name'" id="lastName"
                       name="lastName" value="">
            </div>

            <div class="form-group">
                <label for="motherName" class="col-sm-5 control-label">Mother's Name</label>
                <input type="text" class="col-sm-7" placeholder="Mother's Name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Mother Name'" id="motherName"
                       name="motherName" value="">
            </div>

            <div class="form-group">
                <label for="DateOfBirthOfAccountHolder"
                       class="col-sm-5 control-label">Date of Birth</label>
                <div class="input-append date" id="DateOfBirthOfAccountHolder" data-date="dateValue: AccountHolder.DateOfBirth" data-date-format="dd-mm-yyyy">
                    <input class="col-sm-6" type="text" data-bind="value: AccountHolder.DateOfBirth" readonly="readonly"/>
                    <span class="add-on col-sm-1"><i class="icon-calendar"></i></span>
                </div>
                %{--<g:datePicker name="DOB"  id="DOB" value="${new Date()}"--}%
                              %{--precision="day"/>--}%
            </div>




            <div class="form-group">
                <label for="profession" class="col-sm-5 control-label">Profession</label>
                <input type="text" class="col-sm-7" placeholder="Profession" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Profession'" id="profession"
                       name="profession" value="">
            </div>

            <div class="form-group">
                <label for="nationality" class="col-sm-5 control-label">Nationality</label>
                <input type="text" class="col-sm-7" placeholder="Nationality" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Nationality'" id="nationality"
                       name="nationality" value="">
            </div>

        </div>

        <div class="col-md-6">

            <div class="form-group">
                <label for="middleName" class="col-sm-5 control-label">Middle Name</label>
                <input type="text" class="col-sm-7" placeholder="Middle Name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Middle Name'" id="middleName"
                       name="middleName" value="">
            </div>

            <div class="form-group">
                <label for="fatherName" class="col-sm-5 control-label">Father's Name</label>
                <input type="text" class="col-sm-7" placeholder="Father Name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Father Name'" id="fatherName"
                       name="fatherName" value="">
            </div>

            <div class="form-group">
                <label for="gender"
                       class="col-sm-5 control-label">Gender</label>
                <div class="col-sm-7">
                    <select id="gender" class="form-control" name="gender" >
                        <option value="Male" selected>Male</option>
                        <option value="Female">Female</option>
                    </select>
                </div>
            </div>



            <div class="form-group">
                <label for="placeofBirth" class="col-sm-5 control-label">Place of Birth</label>
                <input type="text" class="col-sm-7" placeholder="Place of Birth" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Place of Birth'" id="placeofBirth"
                       name="placeofBirth" value="">
            </div>

            <div class="form-group">
                <label for="citizenship" class="col-sm-5 control-label">Citizenship</label>
                <input type="text" class="col-sm-7" placeholder="Citizenship" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Citizenship'" id="citizenship"
                       name="citizenship" value="">
            </div>

            <div class="form-group">
                <label for="nationalID" class="col-sm-5 control-label">National ID</label>
                <input type="text" class="col-sm-7" placeholder="National Identification No" onfocus="this.placeholder = ''" onblur="this.placeholder = 'National Identification No'" id="nationalID"
                       name="nationalID" value="">
            </div>

        </div>

    </div>
</div>

<div class="clearfix form-actions">
    <div class="col-md-offset-10 col-md-2">

        <button class="btn btn-primary btn-sm" type="submit" name="update" id="button-update">Create</button>

    </div>
</div>



