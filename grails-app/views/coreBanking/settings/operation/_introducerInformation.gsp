<g:form name="accountOpenForm" method=""
        id="accountOpenForm" role="form"
        class="form-horizontal">
                    <div class="form-group">
                        <label class="col-sm-2 control-label no-padding-right" for="firstName">Name:</label>

                        <div class="col-sm-9">
                            <input id="firstName" class="col-xs-10 col-sm-5" type="text" name="firstName" placeholder="First Name" onfocus="this.placeholder=''" onblur="this.placeholder = 'First Nme'">
                        </div>
                    </div>


                    <div class="form-group">
                        <label class="col-sm-2 control-label no-padding-right" for="address">Address:</label>

                        <div class="col-sm-9">
                            <input id="address" class="col-xs-10 col-sm-5" type="text" name="address" placeholder="Address" onfocus="this.placeholder=''" onblur="this.placeholder = 'Address'">
                        </div>
                    </div>


                    <div class="form-group">
                        <label class="col-sm-2 control-label no-padding-right" for="accNo">A/C No:</label>

                        <div class="col-sm-9">
                            <input id="accNo" class="col-xs-10 col-sm-5" type="text" name="accNo" placeholder="A/C No" onfocus="this.placeholder=''" onblur="this.placeholder = 'Account No'">
                        </div>
                    </div>


                    <div class="form-group">
                        <label class="col-sm-2 control-label no-padding-right" for="contactNo">Contact No:</label>

                        <div class="col-sm-9">
                            <input id="contactNo" class="col-xs-10 col-sm-5" type="text" name="contactNo" placeholder="Contact No" onfocus="this.placeholder=''" onblur="this.placeholder = 'Contact No'">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label no-padding-right" for="relAcNo">Relation Of A/C Holder:</label>

                        <div class="col-sm-9">
                            <input id="relAcNo" class="col-xs-10 col-sm-5" type="text" name="relAcNo"
                                   placeholder="Relation Of A/C Holder" onfocus="this.placeholder=''" onblur="this.placeholder = 'Relation Of A/C Holder'">
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