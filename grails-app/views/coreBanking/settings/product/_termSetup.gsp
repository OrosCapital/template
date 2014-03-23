<div class=row>

    <div class=container>
        <input class="ace" type="checkbox"  name="termSetup" id="deposit" value="1">
        <span class="lbl">   Deposit</span>
    </div>
    <br/>

    <div class="col-sm-4">
        Number of Periods: <br/> <br/>

        <div class="form-group">
            <label class="control-label col-md-4">Min :</label>
            <div class="col-md-8">
                <input type="text"  class="form-control" name="name" />
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-4">Max :</label>
            <div class="col-md-8">
                <input type="text"  class="form-control" name="name"/>
            </div>
        </div>

    </div>
    <div class="col-sm-4">
        Posting frequency: <br/> <br/>

        <select id="postFreqDep" class="form-control col-sm-3" name="postFreqDep">
            <option>-Select-</option>
            <option value="Daily">Daily</option>
            <option value="Weekly">Weekly</option>
            <option value="Half Monthly">Half Monthly</option>
            <option value="Monthly">Monthly</option>
        </select>
    </div>

</div>
<hr>
<div class=row>

    <div class=container>
        <input class="ace" type="checkbox"  name="termSetup" id="withdrawal" value="1">
        <span class="lbl">   Withdrawal</span>

    </div>
    <br/>
    <div class="col-sm-4">
        Number of Periods: <br/> <br/>

        <div class="form-group">
            <label class="control-label col-md-4">Min :</label>
            <div class="col-md-8">
                <input type="text"  class="form-control" name="name" />
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-4">Max :</label>
            <div class="col-md-8">
                <input type="text"  class="form-control" name="name"/>
            </div>
        </div>

    </div>
    <div class="col-sm-4">
        Posting frequency <br/> <br/>

        <select id="postFreqWithdrwl" class="form-control col-sm-3" name="postFreqWithdrwl">
            <option>-Select-</option>
            <option value="Daily">Daily</option>
            <option value="Weekly">Weekly</option>
            <option value="Half Monthly">Half Monthly</option>
            <option value="Monthly">Monthly</option>
        </select>
    </div>

</div>
<div class="clearfix form-actions">
    <div class="col-md-offset-3 col-md-9">
        <button class="btn btn-info" type="button" id="voucherSubmit"><i class="icon-ok bigger-110"></i>Submit</button>
        <button class="btn" type="reset"><i class="icon-undo bigger-110"></i>Reset</button>
    </div>
</div>