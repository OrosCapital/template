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
                            "<td>"+cardRateType+"</td>"+
                            "<td>"+cardRate+"</td>"+
                            "<td>" +
                            "<div class='visible-md visible-lg hidden-sm hidden-xs action-buttons'>"+
                            "<a  href='#'><i class='icon-pencil bigger-130 green'></i></a>"+
                            "<a class='red' href='#'><i class='icon-trash bigger-130'></i></a>"+
                            "</div>"+
                            "</td>"+
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
                            "<td>"+cardWithdrwlRateType+"</td>"+
                            "<td>"+cardWithdrwlRate+"</td>"+
                            "<td>" +
                            "<div class='visible-md visible-lg hidden-sm hidden-xs action-buttons'>"+
                            "<a  href='#'><i class='icon-pencil bigger-130 green'></i></a>"+
                            "<a class='red' href='#'><i class='icon-trash bigger-130'></i></a>"+
                            "</div>"+
                            "</td>"+
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
                            "<td>"+cardTransferRateType+"</td>"+
                            "<td>"+cardTransferRate+"</td>"+
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

<g:render template='/coreBanking/settings/product/savings/cardFeesTable'/>
