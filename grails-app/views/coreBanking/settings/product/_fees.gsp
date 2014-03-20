<div class="row">

    <div class="col-xs-12">

    %{-- Entry fees --}%
        <fieldset>
            <legend class="blue"><small>Entry fees</small></legend>


            <g:render template='/coreBanking/settings/product/entryFees'/>

        </fieldset>
        %{-- Reopen fees --}%
        <fieldset>
            <legend class="blue"><small>Reopen fees</small></legend>

            <g:render template='/coreBanking/settings/product/reopenFees'/>
        </fieldset>
        %{-- Close fees --}%
        <fieldset>
            <legend class="blue"><small>Close fees</small></legend>

            <g:render template='/coreBanking/settings/product/closeFees'/>
        </fieldset>
        %{-- Management fees --}%
        <fieldset>
            <legend class="blue"><small>Management fees</small></legend>


            <g:render template='/coreBanking/settings/product/managementFees'/>
        </fieldset>

</div> %{-- main 12 md.xs--}%

</div>



<div class="clearfix form-actions">
    <div class="col-md-offset-3 col-md-9">
        <button class="btn btn-info" type="button"><i class="icon-ok bigger-110"></i>Submit</button>
        &nbsp; &nbsp; &nbsp;
        <button class="btn" type="reset"><i class="icon-undo bigger-110"></i>Reset</button>
    </div>
</div>