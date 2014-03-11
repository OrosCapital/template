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
                            "<td>"+chequeRate+"</td>"+
                            "<td>"+chequeRateType+"</td>"+
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
                            "<td>"+chequeWithdrwlRate+"</td>"+
                            "<td>"+chequeWithdrwlRateType+"</td>"+
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
                            "<td>"+chequeTransferRate+"</td>"+
                            "<td>"+chequeTransferRateType+"</td>"+
                            "</tr>");



        });



    });
</script>

<g:render template='/coreBanking/settings/product/chequeFeesTable'/>
%{--}<g:render template='/savingsProduct/withdrawalFeesTable'/>
<g:render template='/savingsProduct/transferFeesTable'/> --}%