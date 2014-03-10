package com.gsl.oros.core.banking.settings

class Country {
    String iso2
    String name
    String printablename
    String iso3
    Long numcode
    static constraints = {
        name(unique: true)
    }
}
