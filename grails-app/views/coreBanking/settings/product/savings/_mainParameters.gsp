
<div class="row">

<div class="col-xs-12 col-md-12 col-sm-12 col-lg-12">
    <!-- PAGE CONTENT BEGINS -->
    %{--<div><input class="clickMe" value="Click Me"/></div> --}%
    <div class="col-md-4">
        <div class="form-group">
            <label for="form-field-1" class="col-md-3 control-label no-padding-right">Name</label>

            <div class="col-md-9">
                <input type="text" placeholder="Name" name="name">
            </div>
        </div>
    </div>

    <div class="col-md-4">
        <div class="form-group">
            <label for="form-field-1" class="col-sm-3 control-label no-padding-right">Code</label>

            <div class="col-md-9">
                <input type="text" placeholder="Code" name="code">
            </div>
        </div>
    </div>
</div>

<div class="col-xs-12 col-md-12 col-sm-12 col-lg-12">
    <div class="col-md-8">
        %{-- Attach product to a specific client type --}%
        <fieldset>
            <legend class="blue"><small>Attach product to a specific client type</small></legend>

            <div class="col-md-12">

                <div class="col-md-2">
                    <div class="control-group">
                        <input name="subscription" value="1" type="checkbox" class="ace"id="all"/>
                        <span class="lbl"> ALL</span>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="control-group">
                        <input name="subscription"  value="1" type="checkbox" class="ace" id="solCheck"/>
                        <span class="lbl" id="sol" data-toggle="tooltip" data-placement="right" title="Solidary Group"> Sol. group</span>
                    </div>
                </div>

                <div class="col-md-2">
                    <div class="control-group">
                        <input name="subscription" value="1" type="checkbox" class="ace"id="indCheck"/>
                        <span class="lbl" id="ind" data-toggle="tooltip" data-placement="right" title="Individual"> Ind.</span>
                    </div>
                </div>

                <div class="col-md-2">
                    <div class="control-group">
                        <input name="subscription" value="1" type="checkbox" class="ace" id="corpCheck"/>
                        <span class="lbl" id="corp" data-toggle="tooltip" data-placement="right" title="Corporate"> Corp.</span>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="control-group">
                        <input name="subscription" value="1" type="checkbox" class="ace" id="nonSolCheck"/>
                        <span class="lbl" id="nonSol" data-toggle="tooltip" data-placement="right" title="Non Solidary Group"> Non sol. group</span>

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


<div class="col-xs-12 col-md-12 col-sm-12 col-lg-12">
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
                    <label class="control-label col-sm-3" for="max">Max:</label>
                    <div class="col-sm-8">
                        <input type="text" value="" name="max" id="max" class="form-control">
                    </div>
                </div>
            </div>
        </fieldset>
    </div>
</div>


%{-- table --}%

<r:script>
    $(document).ready(function () {

        $("#addMore").click(function () {
            var startAmount = $("#startAmount").val();
            var endAmount = $("#endAmount").val();
            var circleName = $("#circleName").val();
            var rate = $("#rate").val();
            var rateType = $("#rateType").val();
            var amountBasedOn = $("#amountBasedOn").val();

            var newObj = {
                startAmount: startAmount,
                endAmount: endAmount,
                circleName: circleName,
                rate: rate,
                rateType: rateType,
                amountBasedOn: amountBasedOn
            };

            var htmlForm = "<tr class='row-ob'>"+
                    "<td>"+ startAmount +"</td>"+
                    "<td>"+ endAmount +"</td>"+
                    "<td>"+ circleName +"</td>"+
                     "<td>"+ rateType +"</td>"+
                    "<td>"+ rate +"</td>"+

                    "<td>"+ amountBasedOn +"</td>"+
                    "<td>" +
                        "<div class='visible-md visible-lg hidden-sm hidden-xs action-buttons'>"+
                            "<a  href='#'><i class='icon-pencil bigger-130 green'></i></a>"+
                            "<a class='red' href='#'><i class='icon-trash bigger-130'></i></a>"+
                        "</div>"+
                    "</td>"+
                "</tr>";
            $(htmlForm).data('rowObj', newObj).appendTo($("#interestRangeTable tbody"));
        });

        $('.clickMe').click(function () {
            $('tr.row-ob').each(function () {
                alert(JSON.stringify($(this).data('rowObj')));
            });
        });

        $('#voucherSubmit').click(function () {
            $.ajax({
                url:"${createLink(controller: 'product', action: 'save')}",
                dataType:'json',
                data: getJsonParams( 'rowObj', 'tr.row-ob', 'voucher'),
                type:'post'
            });
            return false;
        });

    });
    function getJsonParams(o, e, p){
        var list = [];
        $(e).each(function () {
            list.push($(this).data(o));
        });
        var params = {};
        params[p] = JSON.stringify(list);
        return params;
    }
</r:script>

<div class="col-xs-12 col-md-12 col-sm-12 col-lg-12">


    %{-- Interest rate --}%
    <fieldset>
        <div class="col-xs-12 col-md-12 col-sm-12 col-lg-12">
            <legend class="blue"><small>Interest rate</small></legend>
            <span class="text-primary">Interest Range</span>
            <form name="journalForm" role="form" class="form-horizontal">
                %{--<div class="table-header">Add Item</div>--}%
                <div class="table-responsive">
                    <table id="interestRangeTable" class="display dataTable table table-striped table-bordered table-hover">
                        <thead>
                        <tr>
                            <th>Start Amount</th>
                            <th>End Amount</th>
                            <th>Circle Name</th>
                            <th>Rate Type</th>
                            <th>Rate</th>
                            <th>Cal. Amount Based On</th>
                            <th>Action</th>
                        </tr>
                        </thead>
                        <tbody>
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
                                    <option value="Daily">Daily</option>
                                    <option value="Weekly">Weekly</option>
                                    <option value="Half Monthly">Half Monthly</option>
                                    <option value="Monthly">Monthly</option>
                                </select>
                            </td>
                            <td class="">
                                <select id="rateType" class="form-control" name="rateType">
                                    <option value="">- Select -</option>
                                    <option value="1">Percentage</option>
                                    <option value="2">Flat</option>
                                </select>
                            </td>
                            <td class="">
                                <input type="text" id="rate" name="rate" placeholder="0.00" class="input-small">
                            </td>

                            <td class="">
                                <select id="amountBasedOn" class="form-control" name="amountBasedOn">
                                    <option value="">- Select -</option>
                                    <option value="1">Minimum</option>
                                    <option value="2">Maximum</option>
                                </select>
                            </td>
                            %{-- Action --}%
                            <td class="center">
                                <button id="addMore" class="btn btn-default navbar-btn" type="button">Add</button>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>

            </form>
        </div>
    </fieldset>

</div>

%{-- end table --}%


%{--<div class="space-2"></div>--}%


</div>

%{--}<div class="clearfix form-actions">
    <div class="col-md-offset-3 col-md-9">
        <button class="btn btn-info" type="button" id="voucherSubmit"><i class="icon-ok bigger-110"></i>Submit</button>
        <button class="btn" type="reset"><i class="icon-undo bigger-110"></i>Reset</button>
    </div>
</div> --}%



