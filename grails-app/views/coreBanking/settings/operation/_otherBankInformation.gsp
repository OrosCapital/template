
<g:form name="accountOpenForm" method=""
        id="accountOpenForm" role="form"
        class="form-horizontal">


                <div class="form-group">
                    <label class="col-sm-2 control-label no-padding-right" for="titleAccount">Title of the Account:</label>

                    <div class="col-sm-9">
                        <input id="titleAccount" class="col-xs-10 col-sm-5" type="text" name="titleAccount" placeholder="Title of the Account" onfocus="this.placeholder=''" onblur="this.placeholder = 'Title Of The Account'">
                    </div>
                </div>




                <div class="form-group">
                    <label class="col-sm-2 control-label no-padding-right" for="otherBankAcNo">Account No:</label>

                    <div class="col-sm-9">
                        <input id="otherBankAcNo" class="col-xs-10 col-sm-5" type="text" name="otherBankAcNo" placeholder="Account No" onfocus="this.placeholder=''" onblur="this.placeholder = 'Account No'">
                    </div>
                </div>



                <div class="form-group">
                    <label class="col-sm-2 control-label no-padding-right" for="otherBankBranch">Branch:</label>

                    <div class="col-sm-9">
                        <input id="otherBankBranch" class="col-xs-10 col-sm-5" type="text" name="otherBankBranch" placeholder="Branch" onfocus="this.placeholder=''" onblur="this.placeholder = 'Branch'">
                    </div>
                </div>


                <div class="form-group">
                    <label class="col-sm-2 control-label no-padding-right" for="otherBankType">Type:</label>

                    <div class="col-sm-9">
                        <input id="otherBankType" class="col-xs-10 col-sm-5" type="text" name="otherBankType" placeholder="Type" onfocus="this.placeholder=''" onblur="this.placeholder = 'Type'">
                    </div>
                </div>


                <div class="form-group">
                    <label class="col-sm-2 control-label no-padding-right" for="otherBankSortCode">Sort Code:</label>

                    <div class="col-sm-9">
                        <input id="otherBankSortCode" class="col-xs-10 col-sm-5" type="text" name="otherBankSortCode" placeholder="Sort Code" onfocus="this.placeholder=''" onblur="this.placeholder = 'Sort Code'">
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