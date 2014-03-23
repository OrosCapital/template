<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js">
</script>
<script>
    $(document).ready(function(){
        $("#chequeAdd").click(function(){
            var chequeStartAm = $( "#chequeStartAmount" ).val();
            var chequeEndAm = $( "#chequeEndAmount" ).val();
            var chequeRate = $( "#chequeRate" ).val();
            var chequeRateType = $( "#chequeRateType" ).val();
            $("#chequeTableData tbody").append(
                    "<tr>"+
                            "<td>"+chequeStartAm+"</td>"+
                            "<td>"+chequeEndAm+"</td>"+
                            "<td>"+chequeRateType+"</td>"+
                            "<td>"+chequeRate+"</td>"+
                            "<td>" +
                            "<div class='visible-md visible-lg hidden-sm hidden-xs action-buttons'>"+
                            "<a  href='#'><i class='icon-pencil bigger-130 green'></i></a>"+
                            "<a class='red' href='#'><i class='icon-trash bigger-130'></i></a>"+
                            "</div>"+
                            "</td>"+
                            "</tr>");



        });
        $("#chequeWithdrawlAdd").click(function(){
            var chequeWithdrwlStartAm = $( "#chequeWithdrwlStartAmount" ).val();
            var chequeWithdrwlEndAm = $( "#chequeWithdrwlEndAmount" ).val();
            var chequeWithdrwlRate = $( "#chequeWithdrwlRate" ).val();
            var chequeWithdrwlRateType = $( "#chequeWithdrwlRateType" ).val();
            $("#chequeWithdrawalTableData tbody").append(
                    "<tr>"+
                            "<td>"+chequeWithdrwlStartAm+"</td>"+
                            "<td>"+chequeWithdrwlEndAm+"</td>"+
                            "<td>"+chequeWithdrwlRateType+"</td>"+
                            "<td>"+chequeWithdrwlRate+"</td>"+
                            "<td>" +
                            "<div class='visible-md visible-lg hidden-sm hidden-xs action-buttons'>"+
                            "<a  href='#'><i class='icon-pencil bigger-130 green'></i></a>"+
                            "<a class='red' href='#'><i class='icon-trash bigger-130'></i></a>"+
                            "</div>"+
                            "</td>"+
                            "</tr>");



        });
        $("#chequeTransferAdd").click(function(){
            var chequeTransferStartAm = $( "#chequeTransferStartAmount" ).val();
            var chequeTransferEndAm = $( "#chequeTransferEndAmount" ).val();
            var chequeTransferRate = $( "#chequeTransferRate" ).val();
            var chequeTransferRateType = $( "#chequeTransferRateType" ).val();
            $("#chequeTransferTableData tbody").append(
                    "<tr>"+
                            "<td>"+chequeTransferStartAm +"</td>"+
                            "<td>"+chequeTransferEndAm+"</td>"+
                            "<td>"+chequeTransferRateType+"</td>"+
                            "<td>"+chequeTransferRate+"</td>"+
                            "<td>" +
                            "<div class='visible-md visible-lg hidden-sm hidden-xs action-buttons'>"+
                            "<a  href='#'><i class='icon-pencil bigger-130 green'></i></a>"+
                            "<a class='red' href='#'><i class='icon-trash bigger-130'></i></a>"+
                            "</div>"+
                            "</td>"+
                            "</tr>");



        });



    });
</script>

<g:render template='/coreBanking/settings/product/savings/chequeFeesTable'/>
%{--}<g:render template='/savingsProduct/withdrawalFeesTable'/>
<g:render template='/savingsProduct/transferFeesTable'/> --}%