
<div class="col-md-12">
    Cheque Fees:



    <table class="table table-bordered table-condensed" id="chequeTableData">
        <thead>
        <tr>

            <th class="col-xs-3">
                <label for="chequeStartAmount" class="control-label col-sm-8" >Start Amount</label>

                <input type="text" class="form-control col-sm-4" name="chequeStartAmount" value="" placeholder=""
                       id="chequeStartAmount">

            </th>
            <th class="col-xs-3">
                <label for="chequeEndAmount" class="control-label col-sm-8" >End Amount</label>

                <input type="text" class="form-control col-sm-4" name="chequeEndAmount" id="chequeEndAmount" value="" placeholder="">

            </th>
            <th class="col-xs-2">
                <label for="chequeRate" class="control-label col-sm-6" >Rate</label>

                <input type="text" class="form-control col-sm-6" name="chequeRate" id="chequeRate" value="" placeholder="">

            </th>
            <th class="col-xs-3">
                <label for="chequeRateType" class="control-label col-sm-8" >Rate Type</label>

                <select class="form-control col-sm-4" name="chequeRateType" id="chequeRateType">
                    <option>-Select-</option>
                    <option value="1">Flat</option>
                    <option value="2">Rate</option>



                </select>

            </th>

            <th class="col-xs-1">
                <button type="button" class="btn btn-default navbar-btn" id="chequeAdd">Add</button>

            </th>
        </tr>
        </thead>
        <tbody>

        </tbody>
    </table>
</div>
