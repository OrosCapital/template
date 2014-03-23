<div class=row style="background:#E8E8E8 ">
    <div class="col-sm-4">

        <div class="col-md-12"><h5>Cheque Deposit</h5></div>


        <br/><br/>

        <div class="col-md-3">Min</div>
        <div class="col-md-9"><input type="text" placeholder="0.00" ></div>  <br/><br/> <br/>


        <div class="col-md-3">Max</div>
        <div class="col-md-9"><input type="text" placeholder="0.00"></div>
    </div>
    <div class="col-sm-8">
        <g:render template='/coreBanking/settings/product/savings/chequeFees'/>
    </div>
</div>
 <hr>
<br/>
<div class=row>
    <div class="col-sm-4">

        <div class="col-md-12"><h5>Withdrawing</h5></div>


        <br/><br/>

        <div class="col-md-3">Min</div>
        <div class="col-md-9"><input type="text" placeholder="0.00" ></div> <br/><br/> <br/>


        <div class="col-md-3">Max</div>
        <div class="col-md-9"><input type="text" placeholder="0.00"></div>
    </div>
    <div class="col-sm-8">
        <g:render template='/coreBanking/settings/product/savings/chequeWithdrawalFeesTable'/>
    </div>
</div>
 <hr>
<div class=row style="background:#E8E8E8 ">
    <div class="col-sm-4">

        <div class="col-md-12"><h5>Transfer</h5></div>


        <br/><br/>

        <div class="col-md-3">Min</div>
        <div class="col-md-9"><input type="text" placeholder="0.00" ></div><br/><br/> <br/>


        <div class="col-md-3">Max</div>
        <div class="col-md-9"><input type="text" placeholder="0.00"></div>
    </div>
    <div class="col-sm-8">
        <g:render template='/coreBanking/settings/product/savings/chequeTransferFeesTable'/>
    </div>

        <div class="col-md-offset-11 ">
            <button class="btn btn-info" type="button">
                <i class="icon-ok bigger-110"></i>
                Save
            </button>
        </div>
    </div>


