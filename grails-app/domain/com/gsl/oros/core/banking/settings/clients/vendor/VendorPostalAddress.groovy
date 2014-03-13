package com.gsl.oros.core.banking.settings.clients.vendor

class VendorPostalAddress {
    String postalAddressLine1
    String postalAddressLine2
    String postalCity
    String postalContactPersonName
    String postalCountryId
    String postalPostcode
    String postalState
    Integer status
    Integer vendorId
    static belongsTo = [VendorMaster]
    static constraints = {
    }
}
