package com.gsl.oros.core.banking.clients.vendor

class VendorGeneralAddress {
    String addressLine1
    String addressLine2
    String city
    String contactDealType
    String contactPersonName
    String contactPersonReference
    String countryId
    String fax
    String mobileNo
    String phoneNo
    String postalCode
    String secondEmail
    String state
    Integer status
    Integer vendorId
    String websiteAddress

    static belongsTo = [VendorMaster]
    static constraints = {
        addressLine1 nullable: true
        addressLine2 nullable: true
        city nullable: false
        contactDealType nullable: true
        contactPersonReference nullable: true
        countryId nullable: false
        fax nullable: true
        mobileNo nullable: true
        postalCode nullable: false
        secondEmail nullable: true
        state nullable: true
        status nullable: false
        vendorId nullable: false
        websiteAddress nullable: true
    }
}
