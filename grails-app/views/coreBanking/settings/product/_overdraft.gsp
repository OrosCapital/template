<div class="row">

    <div class="col-xs-12">

        %{-- Fixed overdraft fees --}%
        <fieldset>
            <legend class="blue"><small>Fixed overdraft fees</small></legend>

            %{-- radio button --}%
            <div class="col-md-8">
                <div class="col-md-6">
                    <div class="form-group">
                        <label class="control-label col-md-4">Type:</label>

                        <div class="col-md-4">
                            <input type="radio" class="ace" value="1" name="">
                            <span class="lbl"> Flat</span>
                        </div>

                        <div class="col-md-4">
                            <input type="radio" class="ace" value="1" name="">
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
                            <input type="text"  class="form-control" name="name" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4">Max :</label>
                        <div class="col-md-8">
                            <input type="text"  class="form-control" name="name"/>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="form-group">
                        <label class="control-label col-md-5" > Or Value :</label>
                        <div class="col-md-7">
                            <input type="text" class="form-control" name="">
                        </div>
                    </div>
                </div>
            </div>
        </fieldset>

        <div class="clearfix visible-xs"></div>


        %{-- Agio fees --}%
        <fieldset>
            <legend class="blue"><small>Agio fees</small></legend>

            %{-- radio buttob --}%
            <div class="col-md-12">
                <div class="col-md-4">
                    <div class="form-group">
                        <label class="control-label col-md-4">Type:</label>

                        <div class="col-md-4">
                            <input type="radio" class="ace" value="1" name="">
                            <span class="lbl"> Flat</span>
                        </div>

                        <div class="col-md-4">
                            <input type="radio" class="ace" value="1" name="">
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
                            <input type="text"  class="form-control" name="name" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4">Max :</label>
                        <div class="col-md-8">
                            <input type="text"  class="form-control" name="name"/>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="form-group">
                        <label class="control-label col-md-5" > Or Value :</label>
                        <div class="col-md-7">
                            <input type="text" class="form-control" name="">
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="form-group">
                        <div class="col-md-12">
                            <select class="form-control" name="" required>
                                <option value="1">Daily</option>
                            </select>
                        </div>

                    </div>

                </div>

            </div>
        </fieldset>

        <div class="clearfix visible-xs"></div>
    </div> %{-- main 12 md.xs--}%


    <div class="space-2"></div>


</div>



<div class="clearfix form-actions">
    <div class="col-md-offset-3 col-md-9">
        <button class="btn btn-info" type="button"><i class="icon-ok bigger-110"></i>Submit</button>
        &nbsp; &nbsp; &nbsp;
        <button class="btn" type="reset"><i class="icon-undo bigger-110"></i>Reset</button>
    </div>
</div>