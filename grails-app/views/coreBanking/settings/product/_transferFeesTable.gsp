
<div class="col-md-12">
  <h5>Transfer Fees:</h5>



    <table class="table table-bordered table-condensed" id="transferTableData">
        <thead>
        <tr>

            <th class="col-xs-3">
                <label for="transferStartAmount" class="control-label col-sm-8" >Start Amount</label>

                <input type="text" class="form-control col-sm-4" name="transferStartAmount" value="" placeholder=""
                       id="transferStartAmount">

            </th>
            <th class="col-xs-3">
                <label for="transferEndAmount" class="control-label col-sm-8" >End Amount</label>

                <input type="text" class="form-control col-sm-4" name="endAmount" id="transferEndAmount" value="" placeholder="">

            </th>
            <th class="col-xs-3">
                <label for="transferRateType" class="control-label col-sm-8" >Rate Type</label>

                <select class="form-control col-sm-4" name="rateType" id="transferRateType">
                    <option>-Select-</option>
                    <option value="1">Flat</option>
                    <option value="2">Rate</option>



                </select>

            </th>
            <th class="col-xs-2">
                <label for="transferRate" class="control-label col-sm-6" >Rate</label>

                <input type="text" class="form-control col-sm-6" name="rate" id="transferRate" value="" placeholder="">

            </th>


            <th class="col-xs-1">
                <button type="button" class="btn btn-default navbar-btn" id="transferAdd">Add</button>

            </th>
        </tr>
        </thead>
        <tbody>

        </tbody>
    </table>
</div>
