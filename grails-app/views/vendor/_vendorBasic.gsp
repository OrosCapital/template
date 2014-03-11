
<div class="row">
    <div class="col-md-12">

        <div class="col-md-4">

            <div class="form-group">
                <label for="vendorCode" class="col-sm-5 control-label">Vendor Code</label>
                <input type="text" class="col-sm-7" placeholder="" id="vendorCode" name="vendorCode" value="${avendorMaster?.vendorCode}">
            </div>

            <div class="form-group">
                <label for="middleName" class="col-sm-5 control-label">Middle Name</label>
                <input type="text" class="col-sm-7" placeholder="" id="middleName"
                       name="middleName" value="${avendorMaster?.middleName}">
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
                <label for="chamberOfCommerce" class="col-sm-5 control-label">Chamber of Commerce</label>
                <input type="text" class="col-sm-7" placeholder="" id="chamberOfCommerce"
                       name="chamOfCommerce" value="${avendorMaster?.chamOfCommerce}">
            </div>

            <div class="form-group">
                <label for="comments" class="col-sm-5 control-label">Comments</label>
                <textarea class="col-sm-7" placeholder="" id="comments"
                          name="comments">${avendorMaster?.comments}</textarea>
            </div>

        </div>

        <div class="col-md-4">

            <div class="form-group">
                <label for="vendorName" class="col-sm-5 control-label">Vendor Name*</label>
                <input type="text" class="col-sm-7" placeholder="" id="vendorName"
                       name="vendorName" value="${avendorMaster?.vendorName}">
            </div>

            <div class="form-group">
                <label for="lastName" class="col-sm-5 control-label">Last Name</label>
                <input type="text" class="col-sm-7" placeholder="" id="lastName"
                       name="lastName" value="${avendorMaster?.lastName}">
            </div>

            <div class="form-group">
                <label for="email" class="col-sm-5 control-label">Email</label>
                <input type="email" class="col-sm-7" placeholder="" id="email"
                       name="email" value="${avendorMaster?.email}">
            </div>

            <div class="form-group">
                <label for="vat"
                       class="col-sm-5 control-label">Vat</label>
                <div class="col-sm-7">
                    <select id="vat" class="form-control" name="vat">
                        <g:if test="${avendorMaster?.vat != null}">
                            <option  value="${avendorMaster?.vat}">${avendorMaster?.vat}</option>
                        </g:if>
                        <g:else>
                            <g:each var="vendorMaster" in="${vendorMasterList}">
                                <option value="${vendorMaster?.vat}">${vendorMaster?.vat}</option>
                            </g:each>
                        </g:else>
                    </select>
                </div>
            </div>

            <div class="form-group">
                <label for="status"
                       class="col-sm-5 control-label">Status</label>
                <div class="col-sm-7">
                    <select id="status" class="form-control" name="status">


                        <option value="1">Active</option>
                        <option value="0">Inactive</option>

                    </select>
                </div>
            </div>

        </div>

        <div class="col-md-4">

            <div class="form-group">
                <label for="firstName" class="col-sm-5 control-label">First Name</label>
                <input type="text" class="col-sm-7" placeholder="" id="firstName"
                       name="firstName" value="${avendorMaster?.firstName}">
            </div>

            <div class="form-group">
                <label for="defaultGlAccount"
                       class="col-sm-5 control-label">Default GI Account</label>
                <div class="col-sm-7">
                    <select id="defaultGlAccount" class="form-control" name="defaultGlAccount">
                        <option>-Select-</option>
                        <g:each var="vendorMaster" in="${vendorMasterList}">
                            <option value="${vendorMaster.defaultGlAccount}">${vendorMaster.defaultGlAccount}</option>
                        </g:each>
                    </select>
                </div>
            </div>

            <div class="form-group">
                <label for="paymentTermId"
                       class="col-sm-5 control-label">Payment Term*</label>
                <div class="col-sm-7">
                    <select id="paymentTermId" class="form-control" name="paymentTermId">
                        <option>-Select-</option>

                        <option value="1">1SS week</option>
                        <option value="2">2SS week</option>

                    </select>
                </div>
            </div>

            <div class="form-group">
                <label for="vendorType"
                       class="col-sm-5 control-label">Type*</label>
                <div class="col-sm-7">
                    <select id="vendorType" class="form-control" name="vendorType">
                        <option>-Select-</option>
                        <g:each var="vendorMaster" in="${vendorMasterList}">
                            <option value="${vendorMaster.vendorType}">${vendorMaster.vendorType}</option>
                        </g:each>
                    </select>
                </div>
            </div>



        </div>
    </div>
</div>
<div class="clearfix form-actions">
    <div class="col-md-offset-9 col-md-3">
        <button class="btn btn-primary btn-sm" type="submit" name="update" id="button-update">Update</button>

        <g:actionSubmit class="btn btn-primary btn-sm"  name="next" value="Next" id="button-next" controller="vendor" action="saveBasic" />

    </div>
</div>


