package com.gsl.oros.core.banking.settings.clients.vendor

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
        status nullable: true
    }
}
