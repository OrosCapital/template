<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js">
</script>
<script>
    $(document).ready(function(){
        $("#agioAdd").click(function(){
            var agioMin = $( "#agioMin" ).val();
            var agioMax = $( "#agioMax" ).val();
            var agioValue = $( "#agioValue" ).val();
            var agioRateType = $( "#agioRateType" ).val();
            var agioCircleType = $( "#agioCircleType" ).val();
            $("#agioTableData tbody").append(
                    "<tr>"+
                            "<td>"+agioMin+"</td>"+
                            "<td>"+agioMax+"</td>"+
                            "<td>"+agioCircleType+"</td>"+
                            "<td>"+agioRateType+"</td>"+
                            "<td>"+agioValue+"</td>"+
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

<g:render template='/coreBanking/settings/product/agioFeesTable'/>
