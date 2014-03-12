package com.gsl.oros.core.banking.clients

import com.gsl.oros.core.banking.settings.Country

class CustomerShipmentAddress {
    String note
    String shipAddLine1
    String shipAddLine2
    String shipCity
    String shipContactName
    String shipEmail
    String shipFax
    String shipPhoneNo1
    String shipPhoneNo2
    String shipPostCode
    String shipState
    String shipWebsite
    int status
    static belongsTo = [customer:CustomerMaster, shipCountry:Country]

    static constraints = {
        note nullable: false
        shipAddLine1 nullable: true
        shipAddLine2 nullable: true
        shipCity nullable: true
        shipContactName nullable: false
        shipEmail nullable: true
        shipFax nullable: true
        shipPhoneNo1 nullable: true
        shipPhoneNo2 nullable: true
        shipPostCode nullable: true
        shipState nullable: true
        shipWebsite nullable: true
        status nullable: false
    }
}