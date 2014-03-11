<div class="row">
    <div class="col-md-12">

        <div class="col-md-6">

            <div class="form-group">
                <label for="gross" class="col-sm-5 control-label">Gross amount per year</label>
                <input type="text" class="col-sm-7" placeholder="Gross amount per year" id="gross" required="required">
            </div>



            <div class="form-group">
                <label for="horizon" class="col-sm-5 control-label">Investment Time horizon</label>
                <input type="checkbox" name="timeType"  value="1">
                <span >1-3 years</span>


                <input type="checkbox" name="timeType"  value="2">
                <span>3-5 years</span>


                <input type="checkbox" name="timeType"  value="3">
                <span>5-10 years</span>

                <input type="checkbox" name="timeType"  value="4">
                <span>10+ years</span>


            </div>

            <div class="form-group">
                <label for="risk" class="col-sm-5 control-label">Investment Objectives <br/> & Risk Classification</label>
                <div><input type="checkbox" name="riskType"  value="1">
                    <span >Income Return</span>  </div>


                <div><input type="checkbox" name="riskType"  value="2">
                    <span>Aggressive Total Return</span>  </div>


                <div><input type="checkbox" name="riskType"  value="3">
                    <span>Income and Growth Return</span>   </div>

            </div>
            <div class="form-group">
                <label for="benchmark" class="col-sm-5 control-label">Benchmark</label>
                <input type="text" class="col-sm-7" placeholder="Benchmark" id="benchmark" required="required">
            </div>

        </div>
    </div>
</div>




<div class="clearfix form-actions">
    <div class="col-md-offset-10 col-md-2">

        <button class="btn btn-primary btn-sm" type="submit" name="buttonSix" id="buttonSix">Next</button>


    </div>
</div>