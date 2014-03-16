<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>

<script>
    $(document).ready(function () {

        $('#cash').attr('checked', false).change(function () {
            if (this.checked) {

                $( '#cashList').addClass( "active" );
                $( '#cashTab').addClass( "active" );
                $('#cashList').show();
                $('#cashTab').fadeIn('fast');

                $( '#chequeList').removeClass( "active" );
                $( '#chequeTab').removeClass( "active" );
                $( '#cardList').removeClass( "active" );
                $( '#cardTab').removeClass( "active" );

            } else {
                $('#cashList').hide();
                $('#cashTab').fadeOut('fast');
                $( '#cashList').removeClass( "active" );
                $( '#cashTab').removeClass( "active" );

                if (($('#chequeList').css('display') == 'block')&&($('#chequeList').hasClass('active'))) {
                    //   if ($('#cheque'.checked) ){
                    $( '#cardList').removeClass( "active" );
                    $( '#cardTab').removeClass( "active" );
                    $( '#chequeList').addClass( "active" );
                    $( '#chequeTab').addClass( "active" );


                }
                else if  (($('#cardList').css('display') == 'block')&&($('#cardList').hasClass('active'))) {
                    $( '#chequeList').removeClass( "active" );
                    $( '#chequeTab').removeClass( "active" );
                    $( '#cardList').addClass( "active" );
                    $( '#cardTab').addClass( "active" );

                }
                if((!$('#cashList').hasClass('active')) && (!$('#cardList').hasClass('active'))){
                    if (($('#chequeList').css('display') == 'block')) {
                        //   if ($('#cheque'.checked) ){
                        $( '#cardList').removeClass( "active" );
                        $( '#cardTab').removeClass( "active" );
                        $( '#chequeList').addClass( "active" );
                        $( '#chequeTab').addClass( "active" );


                    }
                    else if  (($('#cardList').css('display') == 'block')) {
                        $( '#chequeList').removeClass( "active" );
                        $( '#chequeTab').removeClass( "active" );
                        $( '#cardList').addClass( "active" );
                        $( '#cardTab').addClass( "active" );

                    }
                }


            }
        });

        $('#cheque').attr('checked', false).change(function () {
            if (this.checked) {

                $( '#chequeList').addClass( "active" );
                $( '#chequeTab').addClass( "active" );
                $('#chequeList').show();
                $('#chequeTab').fadeIn('fast');
                $( '#cashList').removeClass( "active" );
                $( '#cashTab').removeClass( "active" );
                $( '#cardList').removeClass( "active" );
                $( '#cardTab').removeClass( "active" );


            } else {

                $('#chequeList').hide();
                $('#chequeTab').fadeOut('fast');
                $( '#chequeList').removeClass( "active" );
                $( '#chequeTab').removeClass( "active" );
                if (($('#cardList').css('display') == 'block')&&($('#cardList').hasClass('active'))) {
                    $( '#cashList').removeClass( "active" );
                    $( '#cashTab').removeClass( "active" );
                    $( '#cardList').addClass( "active" );
                    $( '#cardTab').addClass( "active" );
                }
                else if(($('#cashList').css('display') == 'block')&&($('#cashList').hasClass('active'))) {
                    $( '#cardList').removeClass( "active" );
                    $( '#cardTab').removeClass( "active" );
                    $( '#cashList').addClass( "active" );
                    $( '#cashTab').addClass( "active" );
                }
                if((!$('#cashList').hasClass('active')) && (!$('#cardList').hasClass('active'))){
                    if(($('#cardList').css('display') == 'block')) {
                        $( '#cashList').removeClass( "active" );
                        $( '#cashTab').removeClass( "active" );
                        $( '#cardList').addClass( "active" );
                        $( '#cardTab').addClass( "active" );
                    }
                    else if(($('#cashList').css('display') == 'block')) {
                        $( '#cardList').removeClass( "active" );
                        $( '#cardTab').removeClass( "active" );
                        $( '#cashList').addClass( "active" );
                        $( '#cashTab').addClass( "active" );
                    }
                }
            }
        });


        $('#card').attr('checked', false).change(function () {
            if (this.checked) {

                $( '#cardList').addClass( "active" );
                $( '#cardTab').addClass( "active" );
                $('#cardList').show();
                $('#cardTab').fadeIn('fast');

                $( '#cashList').removeClass( "active" );
                $( '#cashTab').removeClass( "active" );
                $( '#chequeList').removeClass( "active" );
                $( '#chequeTab').removeClass( "active" );


            } else {
                $('#cardList').hide();
                $('#cardTab').fadeOut('fast');
                $( '#cardList').removeClass( "active" );
                $( '#cardTab').removeClass( "active" );
                if (($('#cashList').css('display') == 'block')&&($('#cashList').hasClass('active'))) {
                    $( '#chequeList').removeClass( "active" );
                    $( '#chequeTab').removeClass( "active" );
                    $( '#cashList').addClass( "active" );
                    $( '#cashTab').addClass( "active" );

                }
                else if (($('#chequeList').css('display') == 'block')&&($('#chequeList').hasClass('active'))) {
                    $( '#cardList').removeClass( "active" );
                    $( '#cardTab').removeClass( "active" );
                    $( '#chequeList').addClass( "active" );
                    $( '#chequeTab').addClass( "active" );


                }
                if((!$('#cashList').hasClass('active')) && (!$('#chequeList').hasClass('active'))){

                    if (($('#chequeList').css('display') == 'block')) {
                        $( '#cardList').removeClass( "active" );
                        $( '#cardTab').removeClass( "active" );
                        $( '#chequeList').addClass( "active" );
                        $( '#chequeTab').addClass( "active" );

                    }
                    else if (($('#cashList').css('display') == 'block')) {
                        $( '#chequeList').removeClass( "active" );
                        $( '#chequeTab').removeClass( "active" );
                        $( '#cashList').addClass( "active" );
                        $( '#cashTab').addClass( "active" );

                    }
                }


            }
        });
    });

</script>


<legend class="blue"><small>Deposit Parameters</small></legend>

<p>Transaction in :

    <input type="checkbox" name="payType" id="cash" value="1">
    <span>Cash</span>


    <input type="checkbox" name="payType" id="cheque" value="2">
    <span>Cheque</span>


    <input type="checkbox" name="payType" id="card" value="3">
    <span>Card</span>
</p>


<div class="tabbable" id="transTab">
    <ul id="myTab2" class="nav nav-tabs padding-12 tab-color-blue background-blue">

        <li class="" id="cashList" style="display: none">
            <a href="#cashTab" data-toggle="tab">Cash</a>
        </li>

        <li class="" id="chequeList" style="display: none">
            <a href="#chequeTab" data-toggle="tab">Cheque</a>
        </li>
        <li class="" id="cardList" style="display: none">
            <a href="#cardTab" data-toggle="tab">Card</a>
        </li>

    </ul>
</div>

<div class="tab-content">
    <div id="cashTab" class="tab-pane active" style="display: none">
        <g:render template='/coreBanking/settings/product/cashTabBody'/>
    </div>


    <div id="chequeTab" class="tab-pane " style="display: none">
        <g:render template='/coreBanking/settings/product/chequeTabBody'/>
    </div>


    <div id="cardTab" class="tab-pane " style="display: none">

        <g:render template='/coreBanking/settings/product/cardTabBody'/>
    </div>

</div>


