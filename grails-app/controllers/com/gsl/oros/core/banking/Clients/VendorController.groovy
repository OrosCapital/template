package com.gsl.oros.core.banking.Clients

import com.gsl.oros.core.banking.settings.clients.vendor.VendorMaster

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
        render(view: 'create', model: [avendorMaster:avendorMaster] )
    }
}
