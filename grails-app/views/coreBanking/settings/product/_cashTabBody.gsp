<div class=row>
    <div class="col-sm-4">

        <div class="col-md-12"><h5>Cash Deposit</h5></div>


        <br/><br/>

        <div class="col-md-3">Min</div>
        <div class="col-md-9"><input type="text" placeholder="0.00" ></div>


        <div class="col-md-3">Max</div>
        <div class="col-md-9"><input type="text" placeholder="0.00"></div>
    </div>
    <div class="col-sm-8">
        <g:render template='/savingsProduct/cashFees'/>
    </div>
</div>

<br/>
<div class=row>
    <div class="col-sm-4">

        <div class="col-md-12"><h5>Withdrawing</h5></div>


        <br/><br/>

        <div class="col-md-3">Min</div>
        <div class="col-md-9"><input type="text" placeholder="0.00" ></div>


        <div class="col-md-3">Max</div>
        <div class="col-md-9"><input type="text" placeholder="0.00"></div>
    </div>
    <div class="col-sm-8">
        <g:render template='/savingsProduct/withdrawalFeesTable'/>
    </div>
</div>

<div class=row>
    <div class="col-sm-4">

        <div class="col-md-12"><h5>Transfer</h5></div>


        <br/><br/>

        <div class="col-md-3">Min</div>
        <div class="col-md-9"><input type="text" placeholder="0.00" ></div>


        <div class="col-md-3">Max</div>
        <div class="col-md-9"><input type="text" placeholder="0.00"></div>
    </div>
    <div class="col-sm-8">
        <g:render template='/coreBanking/settings/product/transferFeesTable'/>
    </div>
</div>