
<div class="col-md-12">
    Cash Fees:



    <table class="table table-bordered table-condensed" id="cashTableData">
        <thead>
        <tr>

            <th class="col-xs-3">
                <label for="cashStartAmount" class="control-label col-sm-8" >Start Amount</label>

                <input type="text" class="form-control col-sm-4" name="cashStartAmount" value="" placeholder=""
                       id="cashStartAmount">

            </th>
            <th class="col-xs-3">
                <label for="cashEndAmount" class="control-label col-sm-8" >End Amount</label>

                <input type="text" class="form-control col-sm-4" name="endAmount" id="cashEndAmount" value="" placeholder="">

            </th>
            <th class="col-xs-2">
                <label for="cashRate" class="control-label col-sm-6" >Rate</label>

                <input type="text" class="form-control col-sm-6" name="rate" id="cashRate" value="" placeholder="">

            </th>
            <th class="col-xs-3">
                <label for="cashRateType" class="control-label col-sm-8" >Rate Type</label>

                <select class="form-control col-sm-4" name="rateType" id="cashRateType">
                    <option>-Select-</option>
                    <option value="1">Flat</option>
                    <option value="2">Rate</option>



                </select>

            </th>

            <th class="col-xs-1">
                <button type="button" class="btn btn-default navbar-btn" id="cashAdd">Add</button>

            </th>
        </tr>
        </thead>
        <tbody>

        </tbody>
    </table>
</div>
