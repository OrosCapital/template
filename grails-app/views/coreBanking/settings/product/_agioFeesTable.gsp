<table class="table table-bordered table-condensed" id="agioTableData">
    <thead>
    <tr>

        <th class="col-xs-2">
            <label for="agioMin" class="control-label col-sm-8" >Min</label>

            <input type="text" class="form-control col-sm-4" name="agioMin" value="" placeholder=""
                   id="agioMin">

        </th>
        <th class="col-xs-2">
            <label for="agioMax" class="control-label col-sm-8" >Max</label>

            <input type="text" class="form-control col-sm-4" name="agioMax" id="agioMax" value="" placeholder="">

        </th>
        <th class="col-xs-3">
            <label for="agioCircleType" class="control-label col-sm-8" >CircleType</label>

            <select class="form-control col-sm-4" name="agioCircleType" id="agioCircleType">
                <option>-Select-</option>
                <option value="Daily">Daily</option>
                <option value="Weekly">Weekly</option>
                <option value="Half Monthly">Half Monthly</option>
                <option value="Monthly">Monthly</option>




            </select>

        </th>
        <th class="col-xs-3">
            <label for="agioRateType" class="control-label col-sm-8" >Rate Type</label>

            <select class="form-control col-sm-4" name="agioRateType" id="agioRateType">
                <option>-Select-</option>
                <option value="1">Flat</option>
                <option value="2">Rate</option>



            </select>

        </th>
        <th class="col-xs-3">
            <label for="agioValue" class="control-label col-sm-6" >Value</label>

            <input type="text" class="form-control col-sm-6" name="agioalue" id="agioValue" value="" placeholder="">

        </th>


        <th class="col-xs-1">
            <button type="button" class="btn btn-default navbar-btn" id="agioAdd">Add</button>

        </th>
    </tr>
    </thead>
    <tbody>

    </tbody>
</table>
