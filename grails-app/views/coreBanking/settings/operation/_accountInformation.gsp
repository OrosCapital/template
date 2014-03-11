<g:form name="accountOpenForm" method=""
        id="accountOpenForm" role="form"
        class="form-horizontal">
            <div class="form-group">
                <label class="col-sm-2 control-label no-padding-right">Title of the Account:</label>
                <div class="col-sm-9">
                    <span>Title of the Account Holder</span>
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-2 control-label no-padding-right" for="ds">Nature of Account:</label>
                <div class="col-sm-9">
                    <select class="col-xs-10 col-sm-5" id="ds">
                        <option value="">Individual</option>
                        <option value="">Corporate</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label no-padding-right" for="id-date-picker-1">Opening Date:</label>
                <div class="col-sm-9">
                    <div class="row">
                        <div class="col-xs-8 col-sm-4">
                            <div class="input-group">
                                <input id="id-date-picker-1" class="form-control date-picker" type="text" data-date-format="dd-mm-yyyy">
                                <span class="input-group-addon">
                                    <i class="icon-calendar bigger-110"></i>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <div class="form-group">
                <label class="col-sm-2 control-label no-padding-right" for="accountPurpose">Account Purpose:</label>
                <div class="col-sm-9">
                    <input id="accountPurpose" class="col-xs-10 col-sm-5" type="text" name="accountPurpose" placeholder="Account Purpose">
                </div>
            </div>




            <div class="form-group">
                <label class="col-sm-2 control-label no-padding-right" for="modeOperation">Mode Of Operation:</label>
                <div class="col-sm-9">
                    <span>Singly/Jointly/Any One Of Us</span>
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-2 control-label no-padding-right" for="sourceFund">Source Of Fund:</label>

                <div class="col-sm-9">
                    <input id="sourceFund" class="col-xs-10 col-sm-5" type="text" name="sourceFund" placeholder="Source Of Fund">
                </div>
            </div>


            <div class="form-group">
                <label class="col-sm-2 control-label no-padding-right" for="monthlyIncome">Monthly Income:</label>

                <div class="col-sm-9">
                    <input id="monthlyIncome" class="col-xs-10 col-sm-5" type="text" name="monthlyIncome"
                           placeholder="Monthly Income">
                </div>
            </div>


            <div class="form-group">
                <label class="col-sm-2 control-label no-padding-right" for="initialDeposit">Initial Deposit:</label>

                <div class="col-sm-9">
                    <input id="initialDeposit" class="col-xs-10 col-sm-5" type="text" name="initialDeposit"
                           placeholder="Initial Deposit">
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-2 control-label no-padding-right" for="residentialStatus">Residential Status:</label>

                <div class="col-sm-9">

                    <input id="residentialStatus" class="col-xs-10 col-sm-5" type="text" name="residentialStatus"
                           placeholder="Residential Status">
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-2 control-label no-padding-right" for="acOpenedBy">Account Opened By:</label>

                <div class="col-sm-9">

                    <input id="acOpenedBy" class="col-xs-10 col-sm-5" type="text" name="acOpenedBy" placeholder="Account Opened By">
                </div>
            </div>


            <div class="form-group">
                <label class="col-sm-2 control-label no-padding-right" for="acceptence">Acceptance Terms & Conditions:</label>

                <div class="col-sm-9">
                    <g:checkBox name="modeOperation" id="acceptence"/>

                </div>
            </div>

            <div class="clearfix form-actions">
                <div class="col-md-offset-3 col-md-9">
                    <button class="btn btn-info" type="submit">
                        <i class="icon-ok bigger-110"></i>
                        Submit
                    </button>
                    <button class="btn" type="reset">
                        <i class="icon-undo bigger-110"></i>
                        Reset
                    </button>
                </div>
            </div>
</g:form>