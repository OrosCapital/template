<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js">
</script>
<script>
    $(document).ready(function(){
        $("#manageAdd").click(function(){
            var manageMin = $( "#manageMin" ).val();
            var manageMax = $( "#manageMax" ).val();
            var manageValue = $( "#manageValue" ).val();
            var manageRateType = $( "#manageRateType" ).val();
            var manageCircleType = $( "#manageCircleType" ).val();
            $("#managementTableData tbody").append(
                    "<tr>"+
                            "<td>"+manageMin+"</td>"+
                            "<td>"+manageMax+"</td>"+
                            "<td>"+manageRateType+"</td>"+
                            "<td>"+manageCircleType+"</td>"+
                            "<td>"+manageValue+"</td>"+

                            "</tr>");



        });




    });
</script>

<g:render template='/coreBanking/settings/product/managementFeesTable'/>
