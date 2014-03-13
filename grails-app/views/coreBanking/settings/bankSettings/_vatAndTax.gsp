<div class="row">
    <div class="col-md-12 col-sm-12">

        <div class="col-md-4 col-sm-4">
            <div class="form-group">
                <label for="taxNo">Tax Certificate</label>
                <input type="text" required="" oninvalid="this.setCustomValidity('${message(code: 'bankSetup.vatAndTax.taxNo',default: 'Please Enter Tax Certificate')}')" oninput="setCustomValidity('')" title="${message(code: 'bankSetup.vatAndTax.taxNo',default: 'Please Enter Tax Certificate')}" class="form-control" id="taxNo" name="taxNo"
                       value="${bankSetupData?.taxNo}"   placeholder="Enter Tax Certificate">
            </div>

        </div>

        <div class="col-md-4 col-sm-4">
            <div class="form-group">
                <label for="vatNo">Vat Certificate</label>
                <input type="text" required="" oninvalid="this.setCustomValidity('${message(code: 'bankSetup.vatAndTax.vatNo',default: 'Please Enter Vat Certificate')}')" oninput="setCustomValidity('')" title="${message(code: 'bankSetup.vatAndTax.vatNo',default: 'Please Enter Vat Certificate')}" class="form-control" id="vatNo"
                       value="${bankSetupData?.vatNo}"  name="vatNo" placeholder="Enter Vat Certificate">
            </div>

        </div>

        <div class="col-md-4 col-sm-4">
            <div class="form-group">
                <label for="paymentTerm">Payment Term *</label>

                    <select class="form-control" name="paymentTerm" required="" oninvalid="this.setCustomValidity('${message(code: 'bankSetup.vatAndTax.paymentTerm',default: 'Please Select Payment Term')}')" oninput="setCustomValidity('')" title="${message(code: 'bankSetup.vatAndTax.paymentTerm',default: 'Please Select Payment Term')}"  id="paymentTerm">
                        <option value="PaymentTerm">Chose A Payment Term--Not In Domain</option>
                    </select>

            </div>

        </div>

    </div>

    <div class="col-md-12 col-sm-12">
        <div class="col-md-4 col-sm-4">
            <div class="form-group">
                <label for="defaultVat">Default Vat</label>

                    <select class="form-control" name="defaultVat" required="" oninvalid="this.setCustomValidity('${message(code: 'bankSetup.vatAndTax.defaultVat',default: 'Please Select Default Vat')}')" oninput="setCustomValidity('')" title="${message(code: 'bankSetup.vatAndTax.defaultVat',default: 'Please Select Default Vat')}" id="defaultVat">
                        <option value="defaultValue">Chose A Default Vat--Not In Domain</option>
                    </select>

            </div>

        </div>

        <div class="col-md-4 col-sm-4">
            <div class="form-group ">
                <label for="incomeTaxReservation">Tax Reservation *</label>
                <input type="text" required="" oninvalid="this.setCustomValidity('${message(code: 'bankSetup.vatAndTax.incomeTaxReservation',default: 'Please Enter Tax Reservation')}')" oninput="setCustomValidity('')" title="${message(code: 'bankSetup.vatAndTax.incomeTaxReservation',default: 'Please Enter Tax Reservation')}" class="form-control" id="incomeTaxReservation"
                       value="${bankSetupData?.incomeTaxReservation}"   name="incomeTaxReservation" placeholder="Enter Tax Reservation">

            </div>

        </div>

        <div class="col-md-4 col-sm-4">
            <div class="form-group">
                <label for="unforeseenExpenseReservation">Unseen Exp. Reserve </label>
                <input type="text" required="" oninvalid="this.setCustomValidity('${message(code: 'bankSetup.vatAndTax.unforeseenExpenseReservation',default: 'Please Enter Exp Reserve')}')" oninput="setCustomValidity('')" title="${message(code: 'bankSetup.vatAndTax.unforeseenExpenseReservation',default: 'Please Enter Exp Reserve')}" class="form-control" id="unforeseenExpenseReservation" name="unforeseenExpenseReservation"
                       value="${bankSetupData?.unforeseenExpenseReservation}"    placeholder="Enter Unseen Exp. Reserve">
            </div>

        </div>

    </div>

    <div class="col-md-12 col-sm-12">
        <div class="col-md-4 col-sm-4">
            <div class="form-group">
                <label for="invoiceMoment">Invoice S. Moment *</label>

                    <select class="form-control" name="invoiceMoment" required="" oninvalid="this.setCustomValidity('${message(code: 'bankSetup.vatAndTax.invoiceMoment',default: 'Please Select Invoice S.Moment')}')" oninput="setCustomValidity('')" title="${message(code: 'bankSetup.vatAndTax.invoiceMoment',default: 'Please Select Invoice S.Moment')}" id="invoiceMoment">
                        <option value="Invoice">Chose A Invoice S. Moment--Not In Domain</option>
                    </select>

            </div>

        </div>

    </div>


</div>