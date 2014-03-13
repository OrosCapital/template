package com.gsl.oros.core.banking.clients

import com.gsl.oros.core.banking.settings.Country

class CustomerPostalAddress {
    String postalAddressLine1
    String postalAddressLine2
    String postalCity
    String postalContactPersonName
    String postalPostcode
    String postalState
    int status
    static belongsTo = [customer:CustomerMaster, postalCountry:Country]

    static constraints = {
        postalAddressLine1 nullable: true
        postalAddressLine2 nullable: true
        postalCity nullable: true
        postalContactPersonName nullable: true
        postalPostcode nullable: true
        postalState nullable: true
        status nullable: false
    }
}