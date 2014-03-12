package com.gsl.oros.core.banking.clients

import com.gsl.oros.core.banking.settings.Country

class CustomerGeneralAddress {
    String addressLine1
    String addressLine2
    String city
    String contactDealType
    String contactPersonName
    String contactPersonReference
    String fax
    String mobileNo
    String phoneNo
    String postalCode
    String secondEmail
    String state
    int status
    String websiteAddress
    static belongsTo = [customer:CustomerMaster, country:Country]

    static constraints = {
        addressLine1 nullable: true
        addressLine2 nullable: true
        city nullable: false
        contactDealType nullable: true
        contactPersonName nullable: false
        contactPersonReference nullable: true
        fax nullable: true
        mobileNo nullable: true
        phoneNo nullable: true
        postalCode nullable: false
        secondEmail nullable: true
        state nullable: true
        status nullable: false
        websiteAddress nullable: true
    }
}
