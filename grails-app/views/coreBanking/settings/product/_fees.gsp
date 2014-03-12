<div class="row">

    <div class="col-xs-12">

    %{-- Entry fees --}%
    <fieldset>
        <legend class="blue"><small>Entry fees</small></legend>

        %{-- radio button --}%
        <div class="col-md-8">
            <div class="col-md-6">
                <div class="form-group">
                    <label class="control-label col-md-4">Type:</label>

                    <div class="col-md-4">
                        <input type="radio" class="ace" value="1" name="EntryFeesType">
                        <span class="lbl"> Flat</span>
                    </div>

                    <div class="col-md-4">
                        <input type="radio" class="ace" value="2" name="EntryFeesType">
                        <span class="lbl"> Rate</span>
                    </div>
                </div>
            </div>
        </div>
        %{----}%

        <div class="col-md-8">
            <div class="col-md-6">
                <div class="form-group">
                    <label class="control-label col-md-4">Min :</label>
                    <div class="col-md-8">
                        <input type="text"  class="form-control" name="EntryFeesMin" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-4">Max :</label>
                    <div class="col-md-8">
                        <input type="text"  class="form-control" name="EntryFeesMax"/>
                    </div>
                </div>
            </div>

            <div class="col-md-6">
                <div class="form-group">
                    <label class="control-label col-md-5" > Or Value :</label>
                    <div class="col-md-7">
                        <input type="text" class="form-control" name="EntryFeesOrValue">
                    </div>
                </div>
            </div>
        </div>
    </fieldset>

    <div class="clearfix visible-xs"></div>


    %{-- Reopen fees --}%
    <fieldset>
        <legend class="blue"><small>Reopen fees</small></legend>

        %{-- radio buttob --}%
        <div class="col-md-8">
            <div class="col-md-6">
                <div class="form-group">
                    <label class="control-label col-md-4">Type:</label>

                    <div class="col-md-4">
                        <input type="radio" class="ace" value="1" name="ReopenFeesType">
                        <span class="lbl"> Flat</span>
                    </div>

                    <div class="col-md-4">
                        <input type="radio" class="ace" value="2" name="ReopenFeesType">
                        <span class="lbl"> Rate</span>
                    </div>
                </div>
            </div>
        </div>
        %{----}%

        <div class="col-md-8">
            <div class="col-md-6">
                <div class="form-group">
                    <label class="control-label col-md-4">Min :</label>
                    <div class="col-md-8">
                        <input type="text"  class="form-control" name="ReopenFeesMin" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-4">Max :</label>
                    <div class="col-md-8">
                        <input type="text"  class="form-control" name="ReopenFeesMax"/>
                    </div>
                </div>
            </div>

            <div class="col-md-6">
                <div class="form-group">
                    <label class="control-label col-md-5" > Or Value :</label>
                    <div class="col-md-7">
                        <input type="text" class="form-control" name="ReopenFeesOrValue">
                    </div>
                </div>
            </div>
        </div>
    </fieldset>

    <div class="clearfix visible-xs"></div>

    %{-- Close fees --}%
    <fieldset>
        <legend class="blue"><small>Close fees</small></legend>

        %{-- radio buttob --}%
        <div class="col-md-8">
            <div class="col-md-6">
                <div class="form-group">
                    <label class="control-label col-md-4">Type:</label>

                    <div class="col-md-4">
                        <input type="radio" class="ace" value="1" name="closeFeesType">
                        <span class="lbl"> Flat</span>
                    </div>

                    <div class="col-md-4">
                        <input type="radio" class="ace" value="2" name="closeFeesType">
                        <span class="lbl"> Rate</span>
                    </div>
                </div>
            </div>
        </div>
        %{----}%

        <div class="col-md-8">
            <div class="col-md-6">
                <div class="form-group">
                    <label class="control-label col-md-4">Min :</label>
                    <div class="col-md-8">
                        <input type="text"  class="form-control" name="closeFeesMin" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-4">Max :</label>
                    <div class="col-md-8">
                        <input type="text"  class="form-control" name="closeFeesMax"/>
                    </div>
                </div>
            </div>

            <div class="col-md-6">
                <div class="form-group">
                    <label class="control-label col-md-5" > Or Value :</label>
                    <div class="col-md-7">
                        <input type="text" class="form-control" name="closeFeesOrValue">
                    </div>
                </div>
            </div>
        </div>
    </fieldset>


    <div class="clearfix visible-xs"></div>
    %{-- Management fees --}%
    <fieldset>
        <legend class="blue"><small>Management fees</small></legend>

        %{-- radio buttob --}%
        <div class="col-md-12">
            <div class="col-md-4">
                <div class="form-group">
                    <label class="control-label col-md-4">Type:</label>

                    <div class="col-md-4">
                        <input type="radio" class="ace" value="1" name="managementFeesType">
                        <span class="lbl"> Flat</span>
                    </div>

                    <div class="col-md-4">
                        <input type="radio" class="ace" value="2" name="managementFeesType">
                        <span class="lbl"> Rate</span>
                    </div>
                </div>
            </div>
        </div>
        %{----}%

        <div class="col-md-12">
            <div class="col-md-4">
                <div class="form-group">
                    <label class="control-label col-md-4">Min :</label>
                    <div class="col-md-8">
                        <input type="text"  class="form-control" name="managementFeesMin" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-4">Max :</label>
                    <div class="col-md-8">
                        <input type="text"  class="form-control" name="managementFeesMax"/>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="form-group">
                    <label class="control-label col-md-5" > Or Value :</label>
                    <div class="col-md-7">
                        <input type="text" class="form-control" name="managementFeesOrValue">
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="form-group">
                    <div class="col-md-12">
                        <select class="form-control" name="" required>
                            <option value="1">Monthly</option>
                            <option value="2">Yearly</option>
                        </select>
                    </div>

                </div>

            </div>
        </div>
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