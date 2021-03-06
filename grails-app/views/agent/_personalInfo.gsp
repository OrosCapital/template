<g:form name="AgentPersonalInfoForm" method="post" role="form" class="form-horizontal">

<div class="row">
    <div class="col-md-12">

        <div class="col-md-6">

            <div class="form-group">
                <label for="firstName" class="col-sm-5 control-label">First Name<span class="red">*</span></label>
                <input type="text" class="col-sm-7" placeholder="First Name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'First Name'" id="firstName" name="firstName" value="" required="required">
            </div>



            <div class="form-group">
                <label for="middleName" class="col-sm-5 control-label">Middle Name</label>
                <input type="text" class="col-sm-7" placeholder="Middle Name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Middle Name'" id="middleName"
                       name="middleName" value="">
            </div>

            <div class="form-group">
                <label for="lastName" class="col-sm-5 control-label ">Last Name<span class="red">*</span></label>
                <input type="text" class="col-sm-7" placeholder="Last Name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Last Name'" id="lastName"
                       name="lastName" value="" required="required">
            </div>

            <div class="form-group">
                <label for="gender"
                       class="col-sm-5 control-label">Gender<span class="red">*</span></label>
                <div class="col-sm-7">
                    <select id="gender" class="form-control" name="gender" >
                        <option value="Male" selected>Male</option>
                        <option value="Female">Female</option>
                    </select>
                </div>
            </div>

            <div class="form-group">
                <label for="maritalStatus"
                       class="col-sm-5 control-label">Marital Status</label>
                <div class="col-sm-7">
                    <select id="maritalStatus" class="form-control" name="maritalStatus" >
                        <option value="Married" selected>Married</option>
                        <option value="Unmarried">Unmarried</option>
                    </select>
                </div>
            </div>

            <div class="form-group">
                <label for="DateOfBirthOfAgent"
                       class="col-sm-5 control-label">Date of Birth<span class="red">*</span></label>
                <div class="input-append date" id="DateOfBirthOfAgent" data-date="dateValue: Agent.DateOfBirth" data-date-format="dd-mm-yyyy">
                    <input class="col-sm-6" type="text" data-bind="value: Agent.DateOfBirth" readonly="readonly" required/>
                    <span class="add-on col-sm-1"><i class="icon-calendar"></i></span>
                </div>
                %{--<g:datePicker name="DOB"  id="DOB" value="${new Date()}"--}%
                              %{--precision="day"/>--}%
            </div>

            <div class="form-group">
                <label for="nationality1"
                       class="col-sm-5 control-label">Nationality</label>

                <g:countrySelect name="nationality1" class="col-sm-7"
                                 noSelection="['':'-First Nationality-']"/>
            </div>

            <div class="form-group">
                <label for="nationalID" class="col-sm-5 control-label">National ID<span class="red">*</span></label>
                <input type="text" class="col-sm-7" placeholder="National Identification No" onfocus="this.placeholder = ''" onblur="this.placeholder = 'National Identification No'" id="nationalID"
                       name="nationalID" value="" required="required">
            </div>

            <div class="form-group">
                <label for="profession" class="col-sm-5 control-label">Profession</label>
                <input type="text" class="col-sm-7 required" placeholder="Profession" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Profession'" id="profession"
                       name="profession" value="" required="required" >
            </div>







            <div class="form-group">
                <label for="nationality2"
                       class="col-sm-5 control-label">Second Nationality</label>

                <g:countrySelect name="nationality2" class="col-sm-7"
                                 noSelection="['':'-Second Nationality-']"/>
            </div>

            <div class="form-group">
                <label for="countryofBirth"
                       class="col-sm-5 control-label">Country of Birth<span class="red">*</span></label>

                <g:countrySelect name="countryofBirth" class="col-sm-7"
                                 noSelection="['':'-Your Birth Place-']"/>
            </div>

        </div>

    </div>
</div>

<div class="clearfix form-actions">
    <div class="col-md-offset-10 col-md-2">

        <button class="btn btn-primary btn-sm" type="submit" name="buttonOne" id="buttonOne">Next</button>

    </div>
</div>

</g:form>

