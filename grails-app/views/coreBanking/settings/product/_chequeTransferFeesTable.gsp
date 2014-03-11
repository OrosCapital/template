
<div class="col-md-12">
    Transfer Fees:



    <table class="table table-bordered table-condensed" id="chequeTransferTableData">
        <thead>
        <tr>

            <th class="col-xs-3">
                <label for="chequeTransferStartAmount" class="control-label col-sm-8" >Start Amount</label>

                <input type="text" class="form-control col-sm-4" name="chequeTransferStartAmount" value="" placeholder=""
                       id="chequeTransferStartAmount">

            </th>
            <th class="col-xs-3">
                <label for="chequeTransferEndAmount" class="control-label col-sm-8" >End Amount</label>

                <input type="text" class="form-control col-sm-4" name="chequeTransferEndAmount" id="chequeTransferEndAmount" value="" placeholder="">

            </th>
            <th class="col-xs-2">
                <label for="chequeTransferRate" class="control-label col-sm-6" >Rate</label>

                <input type="text" class="form-control col-sm-6" name="chequeTransferRate" id="chequeTransferRate" value="" placeholder="">

            </th>
            <th class="col-xs-3">
                <label for="chequeTransferRateType" class="control-label col-sm-8" >Rate Type</label>

                <select class="form-control col-sm-4" name="chequeTransferRateType" id="chequeTransferRateType">
                    <option>-Select-</option>
                    <option value="1">Flat</option>
                    <option value="2">Rate</option>



                </select>

            </th>

            <th class="col-xs-1">
                <button type="button" class="btn btn-default navbar-btn" id="chequeTransferAdd">Add</button>

            </th>
        </tr>
        </thead>
        <tbody>

        </tbody>
    </table>
</div>
