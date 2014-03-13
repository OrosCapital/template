package com.gsl.oros.core.banking.clients

class PaymentTerms {
    String paymentTermName
    static hasMany = [customerMaster:CustomerMaster]

    static constraints = {
        paymentTermName nullable: false
    }
}