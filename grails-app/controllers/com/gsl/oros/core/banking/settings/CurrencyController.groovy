package com.gsl.oros.core.banking.settings

import grails.converters.JSON

class CurrencyController {

    def index() {
        def country=Country.list()
        println(country.printablename)
        println(country.name)
        render(view:'/coreBanking/settings/createCurrency',model: [countryList:country])
    }

    def checkCurrencyName(){
        if(Currency.countByName(params.currencyName)>=1){
            def result=[message:"Currency "+params.currencyName+" Already Exist",isExist:1]
            render result as JSON
        }else{
            def result=[isExist:0]
            render result as JSON
        }

    }

    def checkCurrencySymbol(){
        if(Currency.countBySymbol(params.currencySymbol)>=1){
            def result=[message:""+params.currencySymbol+" already used in a Currency",isExist:1]
            render result as JSON
        }else{
            def result=[isExist:0]
            render result as JSON
        }

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
        def country=Country.list()
        render(view:'/coreBanking/settings/createCurrency',model: [countryList:country])
    }

}
