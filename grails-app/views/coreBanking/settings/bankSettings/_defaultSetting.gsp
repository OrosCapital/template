<div class="row">
<div class="col-md-12 col-sm-12">

    <div class="col-md-4 col-sm-4">
        <div class="form-group">
            <label for="defaultCurrency">Default Currency *</label>

                <select name="defaultCurrency" class="form-control" required="" oninvalid="this.setCustomValidity('${message(code: 'bankSetup.defaultSetting.defaultCurrency',default: 'Please Select Default Currency')}')" oninput="setCustomValidity('')" title="${message(code: 'bankSetup.defaultSetting.defaultCurrency',default: 'Please Select Default Currency')}" id="defaultCurrency">
                    <option value="">Chose A Default Currency</option>
                    <option value="USD">USD</option>
                    <option value="BDT">BDT</option>
                </select>

        </div>

    </div>

    <div class="col-md-4 col-sm-4">
        <div class="form-group">
            <label for="companyDateFormat">C.Date Format *</label>

                <select name="companyDateFormat" class="form-control" required="" oninvalid="this.setCustomValidity('${message(code: 'bankSetup.defaultSetting.companyDateFormat',default: 'Please Select Date Format')}')" oninput="setCustomValidity('')" title="${message(code: 'bankSetup.defaultSetting.companyDateFormat',default: 'Please Select Date Format')}"  id="companyDateFormat">
                    <option value="">Chose A Date Format</option>
                    <option value="DDMMYYYY">DDMMYYYY</option>
                    <option value="DDMMYY">DDMMYY</option>
                </select>

        </div>

    </div>

    <div class="col-md-4 col-sm-4">
        <div class="form-group">
            <label for="amountDecimalPoint">Amnt.Deci.Point * *</label>

                <select name="amountDecimalPoint" class="form-control"  required="" oninvalid="this.setCustomValidity('${message(code: 'bankSetup.defaultSetting.amountDecimalPoint',default: 'Please Select Deci Point')}')" oninput="setCustomValidity('')" title="${message(code: 'bankSetup.defaultSetting.amountDecimalPoint',default: 'Please Select Deci Point')}" id="amountDecimalPoint">
                    <option value="">Chose A Deci Point</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                </select>

        </div>

    </div>

</div>

<div class="col-md-12 col-sm-12">
    <div class="col-md-4 col-sm-4">
        <div class="form-group">
            <label for="dateSeperator">Date Seperator</label>

                <select name="dateSeperator" class="form-control"  required="" oninvalid="this.setCustomValidity('${message(code: 'bankSetup.defaultSetting.dateSeperator',default: 'Please Select Date Seperator')}')" oninput="setCustomValidity('')" title="${message(code: 'bankSetup.defaultSetting.dateSeperator',default: 'Please Select Date Seperator')}"  id="dateSeperator">
                    <option value="">Chose A Date Seperator</option>
                    <option value=",">Comma(',')</option>
                    <option value=".">Dot('.')</option>
                </select>

        </div>

    </div>

    <div class="col-md-4 col-sm-4">
        <div class="form-group ">
            <label for="decimalRoundingType">Deci Round Type</label>

                <select name="decimalRoundingType" class="form-control" required="" oninvalid="this.setCustomValidity('${message(code: 'bankSetup.defaultSetting.decimalRoundingType',default: 'Please Select Decimal Round Type')}')" oninput="setCustomValidity('')" title="${message(code: 'bankSetup.defaultSetting.decimalRoundingType',default: 'Please Select Decimal Round Type')}"  id="decimalRoundingType">
                    <option value="RoundType">Chose A Round Type</option>

                </select>

        </div>

    </div>

    <div class="col-md-4 col-sm-4">
        <div class="form-group">
            <label for="decimalSeprator">Decimal Seprator </label>

                <select name="decimalSeprator" class="form-control" required="" oninvalid="this.setCustomValidity('${message(code: 'bankSetup.defaultSetting.decimalSeprator',default: 'Please Select Decimal Seprator')}')" oninput="setCustomValidity('')" title="${message(code: 'bankSetup.defaultSetting.decimalSeprator',default: 'Please Select Decimal Seprator')}"  id="decimalSeprator">
                    <option value="">Chose A Decimal Seprator</option>
                    <option value=",">Comma(',')</option>
                    <option value=".">Dot('.')</option>
                </select>

        </div>

    </div>

</div>

<div class="col-md-12 col-sm-12">
    <div class="col-md-4 col-sm-4">
        <div class="form-group">
            <label for="percentageDecimalPoint">(%)Decimal Point *</label>

                <select name="percentageDecimalPoint" class="form-control" required="" oninvalid="this.setCustomValidity('${message(code: 'bankSetup.defaultSetting.percentageDecimalPoint',default: 'Please Select Decimal Point')}')" oninput="setCustomValidity('')" title="${message(code: 'bankSetup.defaultSetting.percentageDecimalPoint',default: 'Please Select Decimal Point')}"  id="percentageDecimalPoint">
                    <option value="">Chose A Decimal Point</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                </select>

        </div>

    </div>

    <div class="col-md-4 col-sm-4">
        <div class="form-group">
            <label for="LANGUAGE">Language </label>

                <select name="LANGUAGE" class="form-control"  required="" oninvalid="this.setCustomValidity('${message(code: 'bankSetup.defaultSetting.LANGUAGE',default: 'Please Select Language')}')" oninput="setCustomValidity('')" title="${message(code: 'bankSetup.defaultSetting.LANGUAGE',default: 'Please Select Language')}" id="LANGUAGE">
                    <option value="">Chose A Language</option>
                    <option value="english">English</option>
                    <option value="bangla">Bangla</option>
                </select>

        </div>

    </div>

    <div class="col-md-4 col-sm-4">
        <div class="form-group">
            <label for="numberOfBookingPeriod">Booking Period# * </label>

                <select name="numberOfBookingPeriod" class="form-control" required="" oninvalid="this.setCustomValidity('${message(code: 'bankSetup.defaultSetting.numberOfBookingPeriod',default: 'Please Select Booking Period')}')" oninput="setCustomValidity('')" title="${message(code: 'bankSetup.defaultSetting.numberOfBookingPeriod',default: 'Please Select Booking Period')}"  id="numberOfBookingPeriod">
                    <option value="">Chose A Booking Period</option>
                    <option value="monthly">Monthly</option>
                    <option value="weekly">Weekly</option>
                </select>

        </div>

    </div>

</div>

<div class="col-md-12 col-sm-12">
    <div class="col-md-4 col-sm-4">
        <div class="form-group">
            <label for="quantityDecimalPoint">Qty.Decimal Point *</label>

                <select name="quantityDecimalPoint" class="form-control" required="" oninvalid="this.setCustomValidity('${message(code: 'bankSetup.defaultSetting.quantityDecimalPoint',default: 'Please Select Qty Decimal Point')}')" oninput="setCustomValidity('')" title="${message(code: 'bankSetup.defaultSetting.quantityDecimalPoint',default: 'Please Select Qty Decimal Point')}"  id="quantityDecimalPoint">
                    <option value="">Chose A Decimal Point</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                </select>

        </div>

    </div>

    <div class="col-md-4 col-sm-4">
        <div class="form-group">
            <label for="reportPageSize">Report Page Size</label>

                <select name="reportPageSize" class="form-control" required="" oninvalid="this.setCustomValidity('${message(code: 'bankSetup.defaultSetting.reportPageSize',default: 'Please Select Report Page Size')}')" oninput="setCustomValidity('')" title="${message(code: 'bankSetup.defaultSetting.reportPageSize',default: 'Please Select Report Page Size')}"  id="reportPageSize">
                    <option value="">Chose A Page Size</option>
                    <option value="A4">A4</option>
                </select>

        </div>

    </div>

    <div class="col-md-4 col-sm-4">
        <div class="form-group">
            <label for="showGlcodeInReport">Gl code In Report * </label>

                <select name="showGlcodeInReport" class="form-control" required="" oninvalid="this.setCustomValidity('${message(code: 'bankSetup.defaultSetting.showGlcodeInReport',default: 'Please Select GL Code In Report')}')" oninput="setCustomValidity('')" title="${message(code: 'bankSetup.defaultSetting.showGlcodeInReport',default: 'Please Select GL Code In Report')}"  id="showGlcodeInReport">
                    <option value="">Chose Gl code In Report</option>
                    <option value="yes">Yes</option>
                    <option value="no">No</option>
                </select>

        </div>

    </div>

</div>

<div class="col-md-12 col-sm-12">
    <div class="col-md-4 col-sm-4">
        <div class="form-group">
            <label for="showItemcodeInReport">Item # On Report *</label>

                <select name="showItemcodeInReport" class="form-control" required="" oninvalid="this.setCustomValidity('${message(code: 'bankSetup.defaultSetting.showItemcodeInReport',default: 'Please Select Item On Report')}')" oninput="setCustomValidity('')" title="${message(code: 'bankSetup.defaultSetting.showItemcodeInReport',default: 'Please Select Item On Report')}"  id="showItemcodeInReport">
                    <option value="">Chose Item On Report</option>
                    <option value="yes">Yes</option>
                    <option value="no">No</option>
                </select>

        </div>

    </div>

    <div class="col-md-4 col-sm-4">
        <div class="form-group">
            <label for="taxType">Tax Type *</label>

                <select name="taxType" class="form-control"  required="" oninvalid="this.setCustomValidity('${message(code: 'bankSetup.defaultSetting.taxType',default: 'Please Select Tax Type')}')" oninput="setCustomValidity('')" title="${message(code: 'bankSetup.defaultSetting.taxType',default: 'Please Select Tax Type')}" id="taxType">
                    <option value="">Chose A Tax Type</option>
                    <option value="5.0">Tax 5.0</option>
                    <option value="6.0">Tax 5.0</option>
                </select>

        </div>

    </div>

    <div class="col-md-4 col-sm-4">
        <div class="form-group">
            <label for="thousandSeperator">Thousand Separator </label>

                <select class="form-control" name="thousandSeperator" required="" oninvalid="this.setCustomValidity('${message(code: 'bankSetup.defaultSetting.thousandSeprator',default: 'Please Select Thousand Seperator')}')" oninput="setCustomValidity('')" title="${message(code: 'bankSetup.defaultSetting.thousandSeprator',default: 'Please Select Thousand Seperator')}"  id="thousandSeperator">
                    <option>Chose A Decimal Seprator</option>
                    <option value=",">Comma(',')</option>
                    <option value=".">Dot('.')</option>
                </select>

        </div>

    </div>

</div>
</div>

