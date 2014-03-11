
<div class="row">
    <div class="col-md-12">

        <div class="col-md-8">

            <div class="form-group">
                <label for="phoneNo" class="col-sm-5 control-label">Residency for Tax Purposes</label>
                <input type="text" class="col-sm-7" placeholder="Residency for Tax Purposes" id="phoneNo"
                       name="phoneNo"  required="required">
            </div>



            <div class="form-group">
                <label for="fax" class="col-sm-5 control-label">Domicile</label>
                <input type="text" class="col-sm-7" placeholder="Domicile" id="fax"
                       name="fax"  required="required">
            </div>

            <div class="form-group">
                <label for="mobileNo" class="col-sm-5 control-label">Income Tax Rate</label>
                <input type="text" class="col-sm-7" placeholder="Income Tax Rate" id="mobileNo"
                       name="mobileNo"  required="required">
            </div>

            <div class="form-group">
                <label for="websiteAddress" class="col-sm-5 control-label">National Insurance Number</label>
                <input type="text" class="col-sm-7" placeholder="National Insurance Number" id="websiteAddress"
                       name="websiteAddress"  required="required">
            </div>

            <div class="form-group">
                <label for="taxReference" class="col-sm-5 control-label">Tax Reference</label>
                <input type="text" class="col-sm-7" placeholder="Tax Reference" id="taxReference"
                       name="taxReference"  required="required">
            </div>

        </div>

    </div>

</div>


%{--}<div class="form-group">

    <div class="controls span2">
        <label class="checkbox">
            <input type="checkbox" value="individual" id="Individual"> Individual
        </label>
        <label class="checkbox">
            <input type="checkbox" value="minor" id="Minor"> Minor
        </label>
        <label class="checkbox">
            <input type="checkbox" value="joint" id="Joint"> Joint
        </label>

    </div>


</div>   --}%



<div class="row">
    <table class="table" id="clientHelp">
        <thead>
        <tr style="background: #dceefc">
            <th></th>
            <th>Cash</th>
            <th>Stock</th>
            <th>Total</th>

        </tr>
        </thead>
        <tbody>
        <tr>

            <td id="td1"><label class="col-md-3 control-label">Individual/First Account Holder</label></td>
            <td id="td2"><input class="col-md-3 control-label" type="number" name="cash1" id="cash1"></td>
            <td id="td3"><input class="col-md-3 control-label" type="number" name="stock1" id="stock1"></td>
            <td id="td4"><input class="col-md-3 control-label" type="number" name="total1" id="total1"></td>

        </tr>

        <tr>

            <td id="td5"><label class="col-md-3 control-label">Second/Joint Account Holder</label></td>
            <td id="td6"><input class="col-md-3 control-label" type="number" name="cash2" id="cash2"></td>
            <td id="td7"><input class="col-md-3 control-label" type="number" name="stock2" id="stock2"></td>
            <td id="td8"><input class="col-md-3 control-label" type="number" name="total2" id="total2"></td>

        </tr>

        <tr>

            <td id="td9"><label class="col-md-3 control-label">Joint</label></td>
            <td id="td10"><input class="col-md-3 control-label" type="number" name="cash3" id="cash3"></td>
            <td id="td11"><input class="col-md-3 control-label" type="number" name="stock3" id="stock3"></td>
            <td id="td12"><input class="col-md-3 control-label" type="number" name="total3" id="total3"></td>

        </tr>
        </tbody>
    </table>
</div>

<div class="clearfix form-actions">
    <div class="col-md-offset-10 col-md-2">

        <button class="btn btn-primary btn-sm" type="submit" name="buttonFour" id="buttonFour">Next</button>

    </div>
</div>



