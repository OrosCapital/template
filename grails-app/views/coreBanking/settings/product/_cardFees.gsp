<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js">
</script>
<script>
    $(document).ready(function(){
        $("#cardAdd").click(function(){
            var cardStartAm = $( "#cardStartAmount" ).val();
            var cardEndAm = $( "#cardEndAmount" ).val();
            var cardRate = $( "#cardRate" ).val();
            var cardRateType = $( "#cardRateType" ).val();
            $("#cardTableData tbody").append(
                    "<tr>"+
                            "<td>"+cardStartAm+"</td>"+
                            "<td>"+cardEndAm+"</td>"+
                            "<td>"+cardRate+"</td>"+
                            "<td>"+cardRateType+"</td>"+
                            "</tr>");



        });
        $("#cardWithdrawlAdd").click(function(){
            var cardWithdrwlStartAm = $( "#cardWithdrwlStartAmount" ).val();
            var cardWithdrwlEndAm = $( "#cardWithdrwlEndAmount" ).val();
            var cardWithdrwlRate = $( "#cardWithdrwlRate" ).val();
            var cardWithdrwlRateType = $( "#cardeWithdrwlRateType" ).val();
            $("#cardWithdrawalTableData tbody").append(
                    "<tr>"+
                            "<td>"+cardWithdrwlStartAm+"</td>"+
                            "<td>"+cardWithdrwlEndAm+"</td>"+
                            "<td>"+cardWithdrwlRate+"</td>"+
                            "<td>"+cardWithdrwlRateType+"</td>"+
                            "</tr>");



        });
        $("#cardTransferAdd").click(function(){
            var cardTransferStartAm = $( "#cardTransferStartAmount" ).val();
            var cardTransferEndAm = $( "#cardTransferEndAmount" ).val();
            var cardTransferRate = $( "#cardTransferRate" ).val();
            var cardTransferRateType = $( "#cardTransferRateType" ).val();
            $("#cardTransferTableData tbody").append(
                    "<tr>"+
                            "<td>"+cardTransferStartAm +"</td>"+
                            "<td>"+cardTransferEndAm+"</td>"+
                            "<td>"+cardTransferRate+"</td>"+
                            "<td>"+cardTransferRateType+"</td>"+
                            "</tr>");



        });



    });
</script>

<g:render template='/coreBanking/settings/product/cardFeesTable'/>
%{--}<g:render template='/savingsProduct/withdrawalFeesTable'/>
<g:render template='/savingsProduct/transferFeesTable'/> --}%