package com.gsl.oros.core.banking.clients

class CustomerMaster {
    String chamberOfCommerce
    String comments
    String bankName
    String currCode
    String customerCode
    String customerName
    String customerType
    String defaultGlAccount
    String email
    String firstName
    String frequencyOfInvoice
    String gender
    String lastName
    String middleName
    String momentOfSending
    int status
    String vat
    static belongsTo = [paymentTerm:PaymentTerms]
    static hasMany = [customerGeneralAddress:CustomerGeneralAddress,
            customerPostalAddress:CustomerPostalAddress,
            customerShipmentAddress:CustomerShipmentAddress,
            customerBankAccount:CustomerBankAccount]

    static constraints = {
        chamberOfCommerce nullable: true
        comments nullable: true
        bankName nullable: true
        currCode nullable: true
        customerCode nullable: true
        customerName nullable: false
        customerType nullable: true
        defaultGlAccount nullable: true
        email nullable: true
        firstName nullable: true
        frequencyOfInvoice nullable: true
        gender nullable: true
        lastName nullable: true
        middleName nullable: true
        momentOfSending nullable: true
        status nullable: false
        vat nullable: true
    }
}

