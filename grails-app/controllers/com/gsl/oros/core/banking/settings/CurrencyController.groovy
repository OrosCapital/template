package com.gsl.oros.core.banking.settings

class CurrencyController {

    def index() {
        def country=Country.list()
        println(country.printablename)
        println(country.name)
        render(view:'/coreBanking/settings/createCurrency',model: [myobj:country])
    }

    def save(){
        println(params)
        Currency currency=new Currency()
        currency.name=params.name
        currency.country=Country.read(params.country)
        currency.abbreviation=params.abbreviation
        currency.hundredName=params.hundredName
        currency.symbol=params.symbol
        currency.save(failOnError: true)
    }
}
