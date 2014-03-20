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

                            "</tr>");



        });




    });
</script>

<g:render template='/coreBanking/settings/product/fixedFeesTable'/>
