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

                            "</tr>");



        });




    });
</script>

<g:render template='/coreBanking/settings/product/agioFeesTable'/>
