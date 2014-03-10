package com.gsl.oros.core.banking.settings

class CountryController {

    def index() {
        render(view: '/coreBanking/settings/createCountry')
    }
    def save(){
        println(params)
        Country country=new Country(params)
        country.save(failOnError: true)
    }
}
