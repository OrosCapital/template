package com.gsl.oros.core.banking.settings.clients.vendor

class VendorMaster {

    Integer byShop
    String chamOfCommerce
    String comments
    String companyName
    String creditStatus
    String currCode
    String defaultGlAccount
    String email
    String firstName
    String frequencyOfInvoice
    String gender
    String lastName
    String middleName
    String momentOfSending

    Integer status
    String vat
    String vendorCode
    String vendorName
    String vendorType
    Integer paymentTermId
    // payment_term_id

    static hasMany = [vendorGeneralAddresses: VendorGeneralAddress,vendorPostalAddresses:VendorPostalAddress]

    static constraints = {
        chamOfCommerce nullable: true
        creditStatus nullable: true
        comments nullable: true
        defaultGlAccount nullable: true
        email nullable: true
        firstName nullable: true
        gender nullable: true
        frequencyOfInvoice nullable: true
        lastName nullable: true
        currCode nullable: true
        momentOfSending nullable: true
        middleName nullable: true
        paymentTermId nullable: true
        companyName nullable: true
        status nullable: true
        vat nullable: true
        vendorCode nullable: true
        vendorName nullable: true
        vendorType nullable: true
        byShop nullable: true
    }
}
