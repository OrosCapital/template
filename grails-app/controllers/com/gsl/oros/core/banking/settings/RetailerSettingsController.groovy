package com.gsl.oros.core.banking.settings

class RetailerSettingsController {

    def index() {
        render (view:'/corebanking/settings/retailerSetting/defineNewRetailer')
    }

    def create(){
        println(params)
        println(params.size())
        render (view:'/corebanking/settings/retailerSetting/defineNewRetailer')
    }
}
