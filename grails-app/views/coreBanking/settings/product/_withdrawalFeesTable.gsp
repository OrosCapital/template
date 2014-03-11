
<div class="col-md-12">
    Withdrawal Fees:



    <table class="table table-bordered table-condensed" id="withdrawalTableData">
        <thead>
        <tr>

            <th class="col-xs-3">
                <label for="startAmount" class="control-label col-sm-8" >Start Amount</label>

                <input type="text" class="form-control col-sm-4" name="startAmount" value="" placeholder=""
                       id="withdrwlStartAmount">

            </th>
            <th class="col-xs-3">
                <label for="endAmount" class="control-label col-sm-8" >End Amount</label>

                <input type="text" class="form-control col-sm-4" name="endAmount" id="withdrwlEndAmount" value="" placeholder="">

            </th>
            <th class="col-xs-2">
                <label for="rate" class="control-label col-sm-6" >Rate</label>

                <input type="text" class="form-control col-sm-6" name="rate" id="withdrwlRate" value="" placeholder="">

            </th>
            <th class="col-xs-3">
                <label for="rateType" class="control-label col-sm-8" >Rate Type</label>

                <select class="form-control col-sm-4" name="rateType" id="withdrwlRateType">
                    <option>-Select-</option>
                    <option value="1">Flat</option>
                    <option value="2">Rate</option>



                </select>

            </th>

            <th class="col-xs-1">
                <button type="button" class="btn btn-default navbar-btn" id="withdrawlAdd">Add</button>

            </th>
        </tr>
        </thead>
        <tbody>

        </tbody>
    </table>
</div>
