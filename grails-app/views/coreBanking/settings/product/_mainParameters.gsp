<div class="row">


<div class="col-md-12">
    <!-- PAGE CONTENT BEGINS -->
    <div class="col-md-4">
        <div class="form-group">
            <label for="form-field-1" class="col-md-4 control-label no-padding-right">Name</label>

            <div class="col-md-8">
                <input type="text" placeholder="Name" name="name">
            </div>
        </div>
    </div>

    <div class="col-md-4">
        <div class="form-group">
            <label for="form-field-1" class="col-sm-4 control-label no-padding-right">Code</label>

            <div class="col-md-8">
                <input type="text" placeholder="Code" name="code">
            </div>
        </div>
    </div>
</div>

<div class="col-md-12">
    <div class="col-md-8">
        %{-- Attach product to a specific client type --}%
        <fieldset>
            <legend class="blue"><small>Attach product to a specific client type</small></legend>

            <div class="col-md-12">
                <div class="col-md-2">
                    <div class="control-group">
                        <input name="subscription" value="1" type="checkbox" class="ace"/>
                        <span class="lbl"> ALL</span>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="control-group">
                        <input name="subscription" value="1" type="checkbox" class="ace"/>
                        <span class="lbl"> Sol. group</span>
                    </div>
                </div>

                <div class="col-md-2">
                    <div class="control-group">
                        <input name="subscription" value="1" type="checkbox" class="ace"/>
                        <span class="lbl"> Ind.</span>
                    </div>
                </div>

                <div class="col-md-2">
                    <div class="control-group">
                        <input name="subscription" value="1" type="checkbox" class="ace"/>
                        <span class="lbl"> Corp.</span>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="control-group">
                        <input name="subscription" value="1" type="checkbox" class="ace"/>
                        <span class="lbl"> Non sol. group</span>

                    </div>
                </div>
            </div>
        </fieldset>
    </div>

    <div class="col-md-4">
        %{-- Attach product to a specific client type --}%
        <fieldset>
            <legend class="blue"><small>Attach product to currency</small></legend>
            <div class="form-group center">

                <div class="clearfix">
                    <select name="" class="input-medium">
                        <option value="">Select currency...</option>
                        <option value="EUR">EUR - Euro</option>
                        <option value="USD">USD - US Dollar</option>
                        <option value="INR">INR - Indian Rupee</option>
                    </select>
                </div>

            </div>

        </fieldset>
    </div>
</div>%{-- end second --}%


<div class="col-md-12">
    <div class="col-md-4">
        <fieldset>
            <legend class="blue"><small>Initial amount</small></legend>
            <div class="col-md-12">
                <div class="form-group">
                    <label class="control-label col-sm-3" for="Min">Min:</label>
                    <div class="col-sm-8">
                        <input type="text" value="" name="min" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-3" for="Max">Max:</label>
                    <div class="col-sm-8">
                        <input type="text" value="" name="max" class="form-control">
                    </div>
                </div>
            </div>
        </fieldset>
    </div>

    <div class="col-md-4">
        <fieldset>
            <legend class="blue"><small>Balance</small></legend>
            <div class="col-md-12">
                <div class="form-group">
                    <label class="control-label col-sm-3" for="Min">Min:</label>
                    <div class="col-sm-8">
                        <input type="text" value="" name="min" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-3" for="Max">Max:</label>
                    <div class="col-sm-8">
                        <input type="text" value="" name="max" class="form-control">
                    </div>
                </div>
            </div>
        </fieldset>
    </div>
</div>


%{-- table --}%

<div class="col-md-12">


    %{-- Interest rate --}%
    <fieldset>
        <div class="col-md-12">
            <legend class="blue"><small>Interest rate</small></legend>
            <span class="text-primary">Interest Range</span>
            <form name="journalForm" role="form" class="form-horizontal">
                %{--<div class="table-header">Add Item</div>--}%
                <div class="table-responsive">
                    <table id="journalTable" class="display dataTable table table-striped table-bordered table-hover">
                        <thead>
                        <tr>
                            <th>Start Amount</th>
                            <th>End Amount</th>
                            <th>Circle Name</th>
                            <th>Rate</th>
                            <th>Rate type</th>
                            <th>Cal. Amount Based On</th>
                            <th>Action</th>
                        </tr>
                        </thead>

                        <tr class="odd">
                            <td class="sorting_1">
                                <input type="text" id="startAmount" name="startAmount" value="" placeholder="Start Amount" class="input-small" required="true">
                            </td>
                            <td class="">
                                <input type="text" id="endAmount" name="endAmount" placeholder="End Amount" class="input-small">
                            </td>
                            <td class="">
                                <select id="circleName" class="form-control" name="circleName">
                                    <option value="">- Select -</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                </select>
                            </td>
                            <td class="">
                                <input type="text" id="rate" name="rate" placeholder="0.00" class="input-small">
                            </td>
                            <td class="">
                                <select id="" class="form-control" name="accountName">
                                    <option value="">- Select -</option>
                                    <option value="1">Percentage</option>
                                    <option value="2">Flat</option>
                                </select>
                            </td>
                            <td class="">
                                <select id="amountBasedOn" class="form-control" name="amountBasedOn">
                                    <option value="">- Select -</option>
                                    <option value="1">Minimum</option>
                                    <option value="2">Maximum</option>
                                </select>
                            </td>

                            %{--<td class="">
                                <span id="addNew" style="cursor:pointer;">
                                    <i class="icon-pencil bigger-125" title="Add New"></i>
                                </span>

                                <span id="clear" onclick="clearForm();" style="cursor:pointer;">
                                    <i class="icon-refresh bigger-130" title="Clear Input"></i>
                                </span>

                                <a class="green" href="#">
                                    <i class="icon-pencil bigger-130"></i>
                                </a>
                                <a class="red" href="#">
                                    <i class="icon-trash bigger-130"></i>
                                </a>
                            </td>--}%

                            %{-- Action --}%
                            <td class="center">
                                <div class="visible-md visible-lg hidden-sm hidden-xs action-buttons">
                                    <a  href="#"><i class="icon-pencil bigger-130 green"></i></a>
                                    <a class="red" href="#"><i class="icon-trash bigger-130"></i></a>
                                </div>

                                %{-- hover icon--}%
                                <div class="visible-xs visible-sm hidden-md hidden-lg">
                                    <div class="inline position-relative">
                                        <ul class="dropdown-menu dropdown-only-icon dropdown-yellow pull-right dropdown-caret dropdown-close">
                                            <li>
                                                <a data-original-title="Edit" href="#" class="tooltip-success" data-rel="tooltip" title="">
                                                    <span class="green"><i class="icon-edit bigger-120"></i></span>
                                                </a>
                                            </li>

                                            <li>
                                                <a data-original-title="Delete" href="#" class="tooltip-error" data-rel="tooltip" title="">
                                                    <span class="red"><i class="icon-trash bigger-120"></i></span>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </td>

                        </tr>
                    </table>
                </div>

            </form>
        </div>
    </fieldset>

</div>

%{-- end table --}%


<div class="space-2"></div>


</div>

<div class="clearfix form-actions">
    <div class="col-md-offset-3 col-md-9">
        <button class="btn btn-info" type="button"><i class="icon-ok bigger-110"></i>Submit</button>
        &nbsp; &nbsp; &nbsp;
        <button class="btn" type="reset"><i class="icon-undo bigger-110"></i>Reset</button>
    </div>
</div>