<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js">
</script>
<script>
    $(document).ready(function(){
        $("#closeAdd").click(function(){
            var closeMin = $( "#closeMin" ).val();
            var closeMax = $( "#closeMax" ).val();
            var closeValue = $( "#closeValue" ).val();
            var closeRateType = $( "#closeRateType" ).val();
            $("#closeTableData tbody").append(
                    "<tr>"+
                            "<td>"+closeMin+"</td>"+
                            "<td>"+closeMax+"</td>"+
                            "<td>"+closeRateType+"</td>"+
                            "<td>"+closeValue+"</td>"+
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

<g:render template='/coreBanking/settings/product/closeFeesTable'/>
