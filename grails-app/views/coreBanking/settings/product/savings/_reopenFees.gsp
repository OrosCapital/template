<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js">
</script>
<script>
    $(document).ready(function(){
        $("#reopenAdd").click(function(){
            var reopenMin = $( "#reopenMin" ).val();
            var reopenMax = $( "#reopenMax" ).val();
            var reopenValue = $( "#reopenValue" ).val();
            var reopenRateType = $( "#reopenRateType" ).val();
            $("#reopenTableData tbody").append(
                    "<tr>"+
                            "<td>"+reopenMin+"</td>"+
                            "<td>"+reopenMax+"</td>"+
                            "<td>"+reopenRateType+"</td>"+
                            "<td>"+reopenValue+"</td>"+
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

<g:render template='/coreBanking/settings/product/savings/reopenFeesTable'/>
