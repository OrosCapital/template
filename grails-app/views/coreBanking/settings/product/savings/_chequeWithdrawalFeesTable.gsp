
<div class="col-md-12">
   <h5> Withdrawal Fees:</h5>



    <table class="display dataTable table table-striped table-bordered table-hover" id="chequeWithdrawalTableData">
        <thead>
        <tr>

            <th class="col-xs-3">
                <label for="chequeWithdrwlStartAmount" class="control-label col-sm-8" >Start Amount</label>

                <input type="text" class="form-control col-sm-4" name="chequeWithdrwlStartAmount" value="" placeholder=""
                       id="chequeWithdrwlStartAmount">

            </th>
            <th class="col-xs-3">
                <label for="chequeWithdrwlEndAmount" class="control-label col-sm-8" >End Amount</label>

                <input type="text" class="form-control col-sm-4" name="chequeWithdrwlEndAmount" id="chequeWithdrwlEndAmount" value="" placeholder="">

            </th>
            <th class="col-xs-3">
                <label for="chequeWithdrwlRateType" class="control-label col-sm-8" >Rate Type</label>

                <select class="form-control col-sm-4" name="chequeWithdrwlRateTyp" id="chequeWithdrwlRateType">
                    <option>-Select-</option>
                    <option value="1">Flat</option>
                    <option value="2">Rate</option>



                </select>

            </th>
            <th class="col-xs-2">
                <label for="chequeWithdrwlRate" class="control-label col-sm-6" >Rate</label>

                <input type="text" class="form-control col-sm-6" name="chequeWithdrwlRate" id="chequeWithdrwlRate" value="" placeholder="">

            </th>


            <th class="col-xs-1">
                <button type="button" class="btn btn-default navbar-btn" id="chequeWithdrawlAdd">Add</button>

            </th>
        </tr>
        </thead>
        <tbody>

        </tbody>
    </table>
</div>
