package com.gsl.oros.core.banking.settings

class ExchangeRateController {

    def index() {
        def currencyList = Currency.list()
        render(view: '/coreBanking/settings/createExchangeRate', model: [currencyList: currencyList,myobj:Country.list()])
    }

    def save() {
        def theDate = params.date
        ExchangeRate exchangeRate = new ExchangeRate()
        exchangeRate.currency = Currency.read(params.currencyId)
        exchangeRate.buyPrice = params.buyPrice as Double
        exchangeRate.sellPrice = params.sellPrice as Double
        exchangeRate.date=Date.parse("d/M/yyyy",theDate)
        exchangeRate.save(failOnError: true)

    }
}
