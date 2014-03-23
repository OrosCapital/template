package com.gsl.oros.core.banking.settings

class ExchangeRate {
    static belongsTo = [currency:Currency]
    Double buyPrice
    Double sellPrice
    Date date
    static constraints = {
        currency(unique: true)
    }
}
