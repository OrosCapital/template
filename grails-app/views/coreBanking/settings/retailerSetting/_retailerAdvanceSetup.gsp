<div class="row">
    <div class=" col-md-12 col-sm-12 ">

        <div class=" col-md-4 col-sm-4 ">
            <div class="form-group">
                <label for="minimumAmountPerDay">Minimum Amount Per Day</label>
                <input type="number"  pattern="[0-9]+([\.|,][0-9]+)?" step="0.01" required=""
                       oninvalid="this.setCustomValidity('${message(code: 'retailerSetup.retailerAdvancedSetup.minimumAmountPerDay',default: 'Please Enter Minimum Amount Per Day')}')"
                       oninput="setCustomValidity('')" title="${message(code: 'retailerSetup.retailerAdvancedSetup.minimumAmountPerDay', default: 'Please Enter Minimum Amount Per Day')}"
                       class="form-control" id="minimumAmountPerDay" name="minimumAmountPerDay"
                       placeholder="0.00">
            </div>
        </div>

        <div class=" col-md-4 col-sm-4">
            <div class="form-group">
                <label for="maximumAmountPerDay">Maximum Amount Per Day</label>
                <input type="number"  pattern="[0-9]+([\.|,][0-9]+)?" step="0.01" required=""
                       oninvalid="this.setCustomValidity('${message(code: 'retailerSetup.retailerAdvancedSetup.maximumAmountPerDay',default: 'Please Enter Maximum Amount Per Day')}')"
                       oninput="setCustomValidity('')" title="${message(code: 'retailerSetup.retailerAdvancedSetup.maximumAmountPerDay', default: 'Please Enter Maximum Amount Per Day')}"
                       class="form-control" id="maximumAmountPerDay" name="maximumAmountPerDay"
                       placeholder="0.00">
            </div>
        </div>



    </div>

    <div class=" col-md-12 col-sm-12 ">

        <div class=" col-md-4 col-sm-4 ">
            <div class="form-group">
                <label for="minimumAmountPerDeposit">Minimum Amount Per Deposits</label>
                <input type="number"  pattern="[0-9]+([\.|,][0-9]+)?" step="0.01" required=""
                       oninvalid="this.setCustomValidity('${message(code: 'retailerSetup.retailerAdvancedSetup.minimumAmountPerDeposit',default: 'Please Enter Minimum Amount Per Deposits')}')"
                       oninput="setCustomValidity('')" title="${message(code: 'retailerSetup.retailerAdvancedSetup.minimumAmountPerDeposit', default: 'Please Enter Minimum Amount Per Deposits')}"
                       class="form-control" id="minimumAmountPerDeposit" name="minimumAmountPerDeposit"
                       placeholder="0.00">
            </div>
        </div>

        <div class=" col-md-4 col-sm-4">
            <div class="form-group">
                <label for="maximumAmountPerDeposit">Maximum Amount Per Deposits</label>
                <input type="number"  pattern="[0-9]+([\.|,][0-9]+)?" step="0.01" required=""
                       oninvalid="this.setCustomValidity('${message(code: 'retailerSetup.retailerAdvancedSetup.maximumAmountPerDeposit',default: 'Please Enter Maximum Amount Per Deposits')}')"
                       oninput="setCustomValidity('')" title="${message(code: 'retailerSetup.retailerAdvancedSetup.maximumAmountPerDeposit', default: 'Please Enter Maximum Amount Per Deposits')}"
                       class="form-control" id="maximumAmountPerDeposit" name="maximumAmountPerDeposit"
                       placeholder="0.00">
            </div>
        </div>



    </div>

    <div class=" col-md-12 col-sm-12 ">

        <div class=" col-md-4 col-sm-4 ">
            <div class="form-group">
                <label for="minimumAmountPerWithdrawal">Minimum Amount Per Withdrawal</label>
                <input type="number"  pattern="[0-9]+([\.|,][0-9]+)?" step="0.01" required=""
                       oninvalid="this.setCustomValidity('${message(code: 'retailerSetup.retailerAdvancedSetup.minimumAmountPerWithdrawal',default: 'Please Enter Minimum Amount Per Withdrawal')}')"
                       oninput="setCustomValidity('')" title="${message(code: 'retailerSetup.retailerAdvancedSetup.minimumAmountPerWithdrawal', default: 'Please Enter Minimum Amount Per Withdrawal')}"
                       class="form-control" id="minimumAmountPerWithdrawal" name="minimumAmountPerWithdrawal"
                       placeholder="0.00">
            </div>
        </div>

        <div class=" col-md-4 col-sm-4">
            <div class="form-group">
                <label for="maximumAmountPerWithdrawal">Maximum Amount Per Withdrawal</label>
                <input type="number"  pattern="[0-9]+([\.|,][0-9]+)?" step="0.01" required=""
                       oninvalid="this.setCustomValidity('${message(code: 'retailerSetup.retailerAdvancedSetup.maximumAmountPerWithdrawal',default: 'Please Enter Maximum Amount Per Withdrawal')}')"
                       oninput="setCustomValidity('')" title="${message(code: 'retailerSetup.retailerAdvancedSetup.maximumAmountPerWithdrawal', default: 'Please Enter Maximum Amount Per Withdrawal')}"
                       class="form-control" id="maximumAmountPerWithdrawal" name="maximumAmountPerWithdrawal"
                       placeholder="0.00">
            </div>
        </div>


    </div>
</div>