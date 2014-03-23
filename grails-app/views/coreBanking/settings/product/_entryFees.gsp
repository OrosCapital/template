<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js">
</script>
<script>
    $(document).ready(function(){
        $("#entryAdd").click(function(){
            var entryMin = $( "#entryMin" ).val();
            var entryMax = $( "#entryMax" ).val();
            var entryValue = $( "#entryValue" ).val();
            var entryRateType = $( "#entryRateType" ).val();
            $("#entryTableData tbody").append(
                    "<tr>"+
                            "<td>"+entryMin+"</td>"+
                            "<td>"+entryMax+"</td>"+
                            "<td>"+entryRateType+"</td>"+
                            "<td>"+entryValue+"</td>"+
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

<g:render template='/coreBanking/settings/product/enrtyFeesTable'/>
