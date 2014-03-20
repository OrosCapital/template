package com.gsl.oros.core.banking.clients

import com.gsl.oros.core.banking.clients.vendor.VendorBankAccountInfo
import com.gsl.oros.core.banking.clients.vendor.VendorGeneralAddress
import com.gsl.oros.core.banking.clients.vendor.VendorMaster
import com.gsl.oros.core.banking.clients.vendor.VendorPostalAddress


class VendorController {

    def index() {
        def vendorMasterList = VendorMaster.list()
        def tabSelector=1
        render(view: '/vendor/create', model: [vendorMasterList:vendorMasterList,tabSelectIndicator:tabSelector])

    }

    def saveVendorBasic(){
        if(request.method=="POST"){
            println "Vendor Code"+ params.vendorCode
            println "Vendor Vat"+ params.vat
            println "Vendor status: "+ params.status
            println "Vendor paymentermID: "+ params.paymentTermId
            VendorMaster vendorMaster = new VendorMaster(params)

            vendorMaster.frequencyOfInvoice="monthly"
            vendorMaster.byShop = 1
            vendorMaster.creditStatus = "Good History"

            vendorMaster.save(flush: true)
            println "VendorMaster ID"+ vendorMaster.id
            if(!vendorMaster.save()){
                vendorMaster.errors.each {
                    println it
                }
            }
            else {
                redirect(controller: 'vendor', action: 'createVendorGeneralAddress' , params: [ id :vendorMaster.id] )
            }
        }
    }

    def createVendorGeneralAddress(){
        println "ID"+params.id
        long vendorMasterID = Long.parseLong(params.id)
        VendorMaster avendorMaster = VendorMaster.get(vendorMasterID)
        //model: [avendorMaster:avendorMaster]
        def tabSelector=2
        render(view: '/vendor/create', model: [avendorMaster:avendorMaster, tabSelectIndicator:tabSelector] )
    }

    def saveVendorGeneralAddress(){
        if(request.method=="POST"){
            println "Contact Person Name "+ params.contactPersonName
            println "Country Id "+ params.countryId
            println "Status "+ params.status
            VendorGeneralAddress vendorGeneralAddress = new VendorGeneralAddress(params)


            vendorGeneralAddress.save(flush: true)
            println "VendorMaster ID"+ vendorGeneralAddress.vendorId
            println "VendorGeneralAddress ID"+ vendorGeneralAddress.id
            if(!vendorGeneralAddress.save()){
                vendorGeneralAddress.errors.each {
                    println it
                }
            }
            else {
                redirect(controller: 'vendor', action: 'createVendorPostalAddress', params: [ id :vendorGeneralAddress.id] )
            }
        }
    }

    def createVendorPostalAddress(){
        println "ID"+params.id
        long id = Long.parseLong(params.id)
        VendorGeneralAddress anGeneralAddress = VendorGeneralAddress.get(id)
        VendorMaster avendorMaster = VendorMaster.get(anGeneralAddress.vendorId)
        //model: [avendorMaster:avendorMaster]
        def tabSelector=3
        render(view: '/vendor/create', model: [anGeneralAddress:anGeneralAddress,avendorMaster:avendorMaster, tabSelectIndicator:tabSelector])

    }

    def saveVendorPostalAddress(){
        if(request.method=="POST"){

            VendorPostalAddress vendorPostalAddress = new VendorPostalAddress(params)
            vendorPostalAddress.save(flush: true)
            println "VendorPostalAddress ID"+ vendorPostalAddress.id
            if(!vendorPostalAddress.save()){
                vendorPostalAddress.errors.each {
                    println it
                }
            }
            else {
                redirect(controller: 'vendor', action: 'createVendorBankAccountInfo', params: [ id :vendorPostalAddress.id] )
            }
        }
    }

    def createVendorBankAccountInfo(){
        println "ID"+params.id
        long id = Long.parseLong(params.id)
        VendorPostalAddress aPostalAddress = VendorPostalAddress.get(id)
        VendorMaster avendorMaster = VendorMaster.get(aPostalAddress.vendorId)
        VendorGeneralAddress anGeneralAddress = VendorGeneralAddress.findByVendorId(aPostalAddress.vendorId)
        def tabSelector=4
        render(view: '/vendor/create', model: [aPostalAddress:aPostalAddress, avendorMaster: avendorMaster, anGeneralAddress: anGeneralAddress, tabSelectIndicator:tabSelector])
    }

    def saveVendorBankAccountInfo(){
        if(request.method=="POST"){

            println "bank account name=" + bankAccountName
            VendorBankAccountInfo vendorBankAccountInfo = new VendorBankAccountInfo()


            vendorBankAccountInfo.save(flush: true)
            println "VendorGeneralAddress ID"+ vendorBankAccountInfo.vendorId
            if(!vendorBankAccountInfo.save()){
                vendorBankAccountInfo.errors.each {
                    println it
                }
            }
            else {
                redirect(controller: 'vendor', action: 'createVendorBankAccountInfo', params: [ id :vendorBankAccountInfo.id] )
            }
        }
    }

}
