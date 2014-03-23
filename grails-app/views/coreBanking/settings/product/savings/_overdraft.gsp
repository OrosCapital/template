<div class="row">

    <div class="col-xs-12">

        %{-- Fixed overdraft fees --}%
        <fieldset>
            <legend class="blue"><small>Fixed overdraft fees</small></legend>
        <g:render template='/coreBanking/settings/product/savings/fixedFees'/>


        %{-- Agio fees --}%
        <fieldset>
            <legend class="blue"><small>Agio fees</small></legend>

            <g:render template='/coreBanking/settings/product/savings/agioFees'/>

    </div> %{-- main 12 md.xs--}%


</div>



%{--}<div class="clearfix form-actions">
    <div class="col-md-offset-3 col-md-9">
        <button class="btn btn-info" type="button"><i class="icon-ok bigger-110"></i>Submit</button>
        &nbsp; &nbsp; &nbsp;
        <button class="btn" type="reset"><i class="icon-undo bigger-110"></i>Reset</button>
    </div>
</div>   --}%