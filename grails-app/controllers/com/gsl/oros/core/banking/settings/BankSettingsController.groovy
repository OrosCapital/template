package com.gsl.oros.core.banking.settings

class BankSettingsController {

    def index() {
        def countryList=Country.list()
        render(view:'/coreBanking/settings/bankSettings/bankSetting', model: [country: countryList])
    }

    def update(){
        def countryList=Country.list()
        def bankSetupInstance=params
        println(bankSetupInstance)
        render(view:'/coreBanking/settings/bankSettings/bankSetting',model: [country: countryList])
    }
}
