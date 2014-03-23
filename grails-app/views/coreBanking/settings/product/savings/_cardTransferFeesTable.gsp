
<div class="col-md-12">
   <h5> Transfer Fees: </h5>



    <table class="table table-bordered table-condensed" id="cardTransferTableData">
        <thead>
        <tr>

            <th class="col-xs-3">
                <label for="cardTransferStartAmount" class="control-label col-sm-8" >Start Amount</label>

                <input type="text" class="form-control col-sm-4" name="cardTransferStartAmount" value="" placeholder=""
                       id="cardTransferStartAmount">

            </th>
            <th class="col-xs-3">
                <label for="cardTransferEndAmount" class="control-label col-sm-8" >End Amount</label>

                <input type="text" class="form-control col-sm-4" name="cardTransferEndAmount" id="cardTransferEndAmount" value="" placeholder="">

            </th>
            <th class="col-xs-3">
                <label for="cardTransferRateType" class="control-label col-sm-8" >Rate Type</label>

                <select class="form-control col-sm-4" name="cardTransferRateType" id="cardTransferRateType">
                    <option>-Select-</option>
                    <option value="1">Flat</option>
                    <option value="2">Rate</option>



                </select>

            </th>
            <th class="col-xs-2">
                <label for="cardTransferRate" class="control-label col-sm-6" >Rate</label>

                <input type="text" class="form-control col-sm-6" name="cardTransferRate" id="cardTransferRate" value="" placeholder="">

            </th>


            <th class="col-xs-1">
                <button type="button" class="btn btn-default navbar-btn" id="cardTransferAdd">Add</button>

            </th>
        </tr>
        </thead>
        <tbody>

        </tbody>
    </table>
</div>
