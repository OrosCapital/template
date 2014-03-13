package com.gsl.oros.core.banking.clients.vendor

class VendorBankAccountInfo {
    String bankAccountName
    String bankAccountNo
    String ibanPrefix
    Integer status
    Integer vendorId

    static constraints = {
        bankAccountName nullable: false
        bankAccountNo nullable: false
        ibanPrefix nullable: false
        status nullable: false
        vendorId nullable: false
    }
}
