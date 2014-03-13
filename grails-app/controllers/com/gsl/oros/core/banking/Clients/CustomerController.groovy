package com.gsl.oros.core.banking.clients

import com.gsl.oros.core.banking.settings.Country

class CustomerController {

    def index() {
        redirect(action: 'create')
    }

    def create(){
        def paymentTermsList = PaymentTerms.list();
        def countryList = Country.list();
        CustomerMaster customerMaster = new CustomerMaster(params)
        render (view: '/customer/create', model: [customerMaster:customerMaster,
                paymentTermsList:paymentTermsList, countryList:countryList])
    }

    def saveCustomerMaster(){
        if(request.method=="POST"){
            CustomerMaster customerMaster = new CustomerMaster(params)
            customerMaster.save(flush: true)

            if(!customerMaster.save()){
                customerMaster.errors.each {
                    println it
                }
            }
            else {
                redirect(action: 'newGeneralAddress', params: [id:customerMaster.id])
            }
        }
    }

    def newGeneralAddress(){
        CustomerGeneralAddress customerGeneralAddress = new CustomerGeneralAddress(params)
        def countryList = Country.list();
        render(view: '/customer/create',
                model: [customerMaster:CustomerMaster.read(params.id),
                        customerGeneralAddress:customerGeneralAddress,
                        countryList:countryList
                ]
        )
    }

    def saveGeneralAddress(){
        if(request.method=="POST"){
            CustomerGeneralAddress customerGeneralAddress = new CustomerGeneralAddress(params)
            customerGeneralAddress.save(flush: true)
            if(!customerGeneralAddress.save()){
                customerGeneralAddress.errors.each {
                    println it
                }
            }
            else {
                redirect(action: 'newPostalAddress', params: [ id :customerGeneralAddress.id])
            }
        }
    }

    def newPostalAddress(){
        CustomerPostalAddress customerPostalAddress = new CustomerPostalAddress(params)
        def countryList = Country.list();
        render(view: '/customer/create',
                model: [customerGeneralAddress:CustomerGeneralAddress.read(params.id),
                        customerPostalAddress:customerPostalAddress,
                        countryList:countryList])
    }

    def savePostalAddress(){
        if(request.method=="POST"){
            CustomerPostalAddress customerPostalAddress = new CustomerPostalAddress(params)
            customerPostalAddress.save(flush: true)
            if(!customerPostalAddress.save()){
                customerPostalAddress.errors.each {
                    println it
                }
            }
            else {
                redirect(controller: 'customer', action: 'newShipmentAddress', params: [ id :customerPostalAddress.id])
            }
        }
    }

    def newShipmentAddress(){
        CustomerShipmentAddress customerShipmentAddress = new CustomerShipmentAddress(params)
        def countryList = Country.list();
        render(view: "create",
                model: [customerPostalAddress:CustomerPostalAddress.read(params.id),
                        customerShipmentAddress:customerShipmentAddress,
                        countryList:countryList
                ])
    }

    def saveShipmentAddress(){
        if(request.method=="POST"){
            CustomerShipmentAddress customerShipmentAddress = new CustomerShipmentAddress(params)
            customerShipmentAddress.save(flush: true)
            if(!customerShipmentAddress.save()){
                customerShipmentAddress.errors.each {
                    println it
                }
            }
            else {
                redirect(controller: 'customer', action: 'newBankAccount', params: [ id :customerShipmentAddress.id])
            }
        }
    }

    def newBankAccount(){
        CustomerBankAccount customerBankAccount = new CustomerBankAccount(params)
        render(view: "create",
                model: [customerShipmentAddress:CustomerShipmentAddress.read(params.id),
                        customerBankAccount:customerBankAccount])
    }

    def saveBankAccount(){
        if(request.method=="POST"){
            CustomerBankAccount customerBankAccount = new CustomerBankAccount(params)
            customerBankAccount.save(flush: true)
            if(!customerBankAccount.save()){
                customerBankAccount.errors.each {
                    println it
                }
            }
            else {
                redirect(action: 'create')
            }
        }
    }
}
