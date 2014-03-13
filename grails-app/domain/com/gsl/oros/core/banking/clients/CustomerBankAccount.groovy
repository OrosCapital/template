package com.gsl.oros.core.banking.clients

class CustomerBankAccount {
    String bankAccountName
    String bankAccountNo
    String ibanPrefix
    int status
    static belongsTo = [customer:CustomerMaster]

    static constraints = {
        bankAccountName nullable: false
        bankAccountNo nullable: false
        ibanPrefix nullable: false
        status nullable: false

    }
}