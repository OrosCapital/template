
<div class="col-md-12">
   <h5> Withdrawal Fees:</h5>



    <table class="display dataTable table table-striped table-bordered table-hover" id="cardWithdrawalTableData">
        <thead>
        <tr>

            <th class="col-xs-3">
                <label for="cardWithdrwlStartAmount" class="control-label col-sm-8" >Start Amount</label>

                <input type="text" class="form-control col-sm-4" name="cardWithdrwlStartAmount" value="" placeholder=""
                       id="cardWithdrwlStartAmount">

            </th>
            <th class="col-xs-3">
                <label for="cardWithdrwlEndAmount" class="control-label col-sm-8" >End Amount</label>

                <input type="text" class="form-control col-sm-4" name="cardWithdrwlEndAmount" id="cardWithdrwlEndAmount" value="" placeholder="">

            </th>
            <th class="col-xs-3">
                <label for="cardWithdrwlRateType" class="control-label col-sm-8" >Rate Type</label>

                <select class="form-control col-sm-4" name="cardWithdrwlRateType" id="cardWithdrwlRateType">
                    <option>-Select-</option>
                    <option value="1">Flat</option>
                    <option value="2">Rate</option>



                </select>

            </th>
            <th class="col-xs-2">
                <label for="cardWithdrwlRate" class="control-label col-sm-6" >Rate</label>

                <input type="text" class="form-control col-sm-6" name="cardWithdrwlRate" id="cardWithdrwlRate" value="" placeholder="">

            </th>


            <th class="col-xs-1">
                <button type="button" class="btn btn-default navbar-btn" id="cardWithdrawlAdd">Add</button>

            </th>
        </tr>
        </thead>
        <tbody>

        </tbody>
    </table>
</div>
