package com.gsl.oros.core.banking.clients

import com.gsl.oros.core.banking.settings.clients.vendor.VendorBankAccountInfo
import com.gsl.oros.core.banking.settings.clients.vendor.VendorGeneralAddress
import com.gsl.oros.core.banking.settings.clients.vendor.VendorMaster
import com.gsl.oros.core.banking.settings.clients.vendor.VendorPostalAddress

class VendorController {

    def index() {
        def vendorMasterList = VendorMaster.list()
        render(view: 'create', model: [vendorMasterList:vendorMasterList])

    }

    def saveBasic(){
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
                redirect(controller: 'vendor', action: 'createGeneralAddress' , params: [ id :vendorMaster.id] )
            }
        }
    }

    def createGeneralAddress(){
        println "ID"+params.id
        long id = Long.parseLong(params.id)
        VendorMaster avendorMaster = VendorMaster.get(id)
        //model: [avendorMaster:avendorMaster]
        render(view: '/vendor/_vendorGeneralAddress', model: [avendorMaster:avendorMaster] )
    }

    def saveGeneralAddress(){
        if(request.method=="POST"){
            println "Contact Person Name "+ params.contactPersonName
            println "Country Id "+ params.countryId
            println "Status "+ params.status
            VendorGeneralAddress vendorGeneralAddress = new VendorGeneralAddress(params)


            vendorGeneralAddress.save(flush: true)
            println "VendorMGeneralAddress ID"+ vendorGeneralAddress.vendorId
            if(!vendorGeneralAddress.save()){
                vendorGeneralAddress.errors.each {
                    println it
                }
            }
            else {
                redirect(controller: 'vendor', action: 'createPostalAddress', params: [ id :vendorGeneralAddress.id] )
            }
        }
    }

    def createPostalAddress(){
        println "ID"+params.id
        long id = Long.parseLong(params.id)
        VendorGeneralAddress anGeneralAddress = VendorGeneralAddress.get(id)
        VendorMaster avendorMaster = VendorMaster.get(anGeneralAddress.vendorId)
        //model: [avendorMaster:avendorMaster]
        render(view: '/vendor/_vendorPostalAddress', model: [anGeneralAddress:anGeneralAddress,avendorMaster:avendorMaster])

    }

    def savePostalAddress(){
        if(request.method=="POST"){

            VendorPostalAddress vendorPostalAddress = new VendorPostalAddress(params)

            vendorPostalAddress.vendorMasterId = 2
            vendorPostalAddress.save(flush: true)
            println "VendorPostalAddress ID"+ vendorPostalAddress.id
            if(!vendorPostalAddress.save()){
                vendorPostalAddress.errors.each {
                    println it
                }
            }
            else {
                redirect(controller: 'vendor', action: 'createBankAccountInfo', params: [ id :vendorPostalAddress.id] )
            }
        }
    }

    def createBankAccountInfo(){
        println "ID"+params.id
        long id = Long.parseLong(params.id)
        //VendorMaster avendorMaster = VendorMaster.get(id)
        //model: [avendorMaster:avendorMaster]
        render(view: '/vendor/_vendorBankAccountInfo' )
    }

    def saveBankAccountInfo(){
        if(request.method=="POST"){
            println "Contact Person Name "+ params.contactPersonName
            println "Country Id "+ params.countryId
            println "Status "+ params.status
            VendorBankAccountInfo vendorBankAccountInfo = new VendorBankAccountInfo()


            vendorBankAccountInfo.save(flush: true)
            println "VendorMGeneralAddress ID"+ vendorBankAccountInfo.vendorId
            if(!vendorBankAccountInfo.save()){
                vendorBankAccountInfo.errors.each {
                    println it
                }
            }
            else {
                redirect(controller: 'vendor', action: 'createBankAccountInfo', params: [ id :vendorBankAccountInfo.id] )
            }
        }
    }

}
