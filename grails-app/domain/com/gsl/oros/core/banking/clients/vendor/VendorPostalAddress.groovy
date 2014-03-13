package com.gsl.oros.core.banking.clients.vendor

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
        postalAddressLine1 nullable: true
        postalAddressLine2 nullable: true
        postalCity nullable: true
        postalContactPersonName nullable: true
        postalCountryId nullable: false
        postalPostcode nullable: true
        postalState nullable: true
        status nullable: false
        vendorId nullable: false
    }
}
