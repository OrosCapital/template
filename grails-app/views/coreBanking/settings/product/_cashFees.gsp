<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js">
</script>
<script>
    $(document).ready(function(){
        $("#cashAdd").click(function(){
            var CashStartAm = $( "#cashStartAmount" ).val();
            var CashEndAm = $( "#cashEndAmount" ).val();
            var cashRate = $( "#cashRate" ).val();
            var cashRateType = $( "#cashRateType" ).val();
            $("#cashTableData tbody").append(
                    "<tr>"+
                            "<td>"+CashStartAm+"</td>"+
                            "<td>"+CashEndAm+"</td>"+
                            "<td>"+cashRateType+"</td>"+
                            "<td>"+cashRate+"</td>"+

                            "</tr>");



        });
        $("#withdrawlAdd").click(function(){
            var withdrwlStartAm = $( "#withdrwlStartAmount" ).val();
            var withdrwlEndAm = $( "#withdrwlEndAmount" ).val();
            var withdrwlRate = $( "#withdrwlRate" ).val();
            var withdrwlRateType = $( "#withdrwlRateType" ).val();
            $("#withdrawalTableData tbody").append(
                    "<tr>"+
                            "<td>"+withdrwlStartAm+"</td>"+
                            "<td>"+withdrwlEndAm+"</td>"+
                            "<td>"+withdrwlRateType+"</td>"+
                            "<td>"+withdrwlRate+"</td>"+

                            "</tr>");



        });
        $("#transferAdd").click(function(){
            var transferStartAm = $( "#transferStartAmount" ).val();
            var transferEndAm = $( "#transferEndAmount" ).val();
            var transferRate = $( "#transferRate" ).val();
            var transferRateType = $( "#transferRateType" ).val();
            $("#transferTableData tbody").append(
                    "<tr>"+
                            "<td>"+transferStartAm+"</td>"+
                            "<td>"+transferEndAm+"</td>"+
                            "<td>"+transferRateType+"</td>"+
                            "<td>"+transferRate+"</td>"+

                            "</tr>");



        });



    });
</script>

<g:render template='/coreBanking/settings/product/cashFeesTable'/>
%{--}<g:render template='/savingsProduct/withdrawalFeesTable'/>
<g:render template='/savingsProduct/transferFeesTable'/> --}%