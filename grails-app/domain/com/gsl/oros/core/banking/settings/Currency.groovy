package com.gsl.oros.core.banking.settings

class Currency {
    String name
    String abbreviation
    String symbol
    Country country
    String hundredName
    static constraints = {
        name(unique: true)
        symbol(unique: true)
        country(unique: true)
    }
}
