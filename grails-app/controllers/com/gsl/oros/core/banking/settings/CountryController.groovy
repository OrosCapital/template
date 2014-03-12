package com.gsl.oros.core.banking.settings

import grails.converters.JSON

class CountryController {

    def index() {
        render(view: '/coreBanking/settings/createCountry')
    }
    def save(){
        println(params)
        Country country=new Country(params)
        country.save(failOnError: true)
    }

    def list(){
        List countryList=Country.list()

        List<Country> lstCountry = Country.list()   // pull data by parameter
        // wrap list
        int recordsCount = lstCountry.size()
        int maxRows = Integer.valueOf(params.rows ?: 5)
        int numberOfPages = Math.ceil(recordsCount / maxRows)
        Map gridOutput = [page: 1, records: recordsCount, total: numberOfPages, rows: lstCountry]
        String jsonData = gridOutput as JSON
        println "jsonData >>"+ jsonData
        render (jsonData)
    }
}
