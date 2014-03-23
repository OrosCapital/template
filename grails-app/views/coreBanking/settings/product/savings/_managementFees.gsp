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
                            "<td>"+manageCircleType+"</td>"+
                            "<td>"+manageRateType+"</td>"+

                            "<td>"+manageValue+"</td>"+
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

<g:render template='/coreBanking/settings/product/savings/managementFeesTable'/>
