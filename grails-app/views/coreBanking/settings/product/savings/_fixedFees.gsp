<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js">
</script>
<script>
    $(document).ready(function(){
        $("#fixedAdd").click(function(){
            var fixedMin = $( "#fixedMin" ).val();
            var fixedMax = $( "#fixedMax" ).val();
            var fixedValue = $( "#fixedValue" ).val();
            var fixedRateType = $( "#fixedRateType" ).val();
            $("#fixedTableData tbody").append(
                    "<tr>"+
                            "<td>"+fixedMin+"</td>"+
                            "<td>"+fixedMax+"</td>"+
                            "<td>"+fixedRateType+"</td>"+
                            "<td>"+fixedValue+"</td>"+
                            "<td>" +
                            "<div class='visible-md visible-lg hidden-sm hidden-xs action-buttons' id='btnEdit'>"+
                            "<a  href='#'><i class='icon-pencil bigger-130 green'></i></a>"+
                            "<a class='red' href='#'><i class='icon-trash bigger-130'></i></a>"+
                            "</div>"+
                            "</td>"+
                            "</tr>");



        });



    });
</script>

<g:render template='/coreBanking/settings/product/savings/fixedFeesTable'/>
