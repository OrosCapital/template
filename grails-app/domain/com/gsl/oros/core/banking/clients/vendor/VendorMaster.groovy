package com.gsl.oros.core.banking.clients.vendor

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
        creditStatus nullable: false
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
        paymentTermId nullable: false
        companyName nullable: true
        status nullable: false
        vat nullable: true
        vendorCode nullable: false
        vendorName nullable: false
        vendorType nullable: true
        byShop nullable: false
    }
}
