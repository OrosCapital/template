package com.gsl.oros.core.banking.operation

import com.gsl.oros.core.banking.settings.BankDepositCheck
import com.gsl.oros.core.banking.settings.BankDepositBankTransfer
import com.gsl.oros.core.banking.settings.CreditCard
import grails.converters.JSON

class BankDepositController {

    def index() {
        render (view: '/coreBanking/settings/operation/bankDeposit')
    }

    def check() {
        def checkNo = params.checkNo
        def result=BankDepositCheck.findByAccountNumber(checkNo)
        if(!result) {
            render(contentType: 'text/json') {
                [success: true, message: 'SORRY !!! THE ENTERED CHECK NUMBER IS NOT FOUND',checkValue:1]
            }
        }
        def accountHolderInfo=[success:true,value:result]
        render accountHolderInfo as JSON
    }


    def bankTransfer() {
        def btCheckNo = params.btCheckNo
        println("the id is  "+btCheckNo)
        def result=BankDepositBankTransfer.findByCheckNo(btCheckNo)
        def bankTransferAccountHolderInfo
        if (!result) {
            bankTransferAccountHolderInfo = [success: false, message:"SORRY,NO FOUND" ,btnErrorMessage:1]
            render bankTransferAccountHolderInfo as JSON
            return
        }

        bankTransferAccountHolderInfo = [success: true, value: result,message:"yes"]
        String output = bankTransferAccountHolderInfo as JSON
        render output
    }


    def creditCard() {

        def creditCardHolderFirstName = params.creditCardHolderFirstName
        def result=CreditCard.findByCreditCardHolderFirstName(creditCardHolderFirstName)
        if(!result) {
            render(contentType: 'text/json') {
                [success: true, message: 'SORRY !!! THE ENTERED CHECK NUMBER IS NOT FOUND',error: 1]
            }
        }
        def accountHolderInfo=[success:true,message: 'Some Message Will Display Here', value:result]
        render accountHolderInfo as JSON


    }

}
