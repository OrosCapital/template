package com.gsl.oros.core.banking.settings

import com.gsl.oros.banking.common.GridEntity
import grails.converters.JSON

class CountryController {
    public int start = 0;
    public int pageNumber = 1;
    public int resultPerPage = 10;
    public String sortColumn = "name";
    public String sortOrder = "asc";


    def index() {
        render(view: '/coreBanking/settings/createCountry')
    }

    def save() {
        println(params)
        Country country = new Country(params)
        country.save(failOnError: true)
        render(view: '/coreBanking/settings/createCountry')
    }

    def list() {
        // set grid params
        (start, resultPerPage, pageNumber) = initGridParams(params)

        List<Country> lstCountry = Country.list([offset: start, max: resultPerPage, sort: sortColumn, order: sortOrder])

        List<Country> resultList = wrapGridEntityList(lstCountry, start)
        int recordsCount = Country.count()
        def maxRows = Integer.valueOf(params.rows ?: resultPerPage)
        def numberOfPages = Math.ceil(recordsCount / maxRows)
        Map gridOutput = [page: pageNumber, records: recordsCount, total: numberOfPages, rows: resultList]
        render(gridOutput as JSON)
    }

    private List initGridParams(def params) {
        if (params.page) {
            pageNumber = Integer.parseInt(params.page);
        }

        if (params.rows) {
            resultPerPage = Integer.parseInt(params.rows);
        }

        if (params.sidx) {
            sortColumn = params.sidx;
        }

        if (params.sord) {
            sortOrder = params.sord;
        }

        // calculating the start offset
        start = ((pageNumber - 1) * resultPerPage);
        if (start > 0) {
            start = start - (resultPerPage - resultPerPage);
        }
        return [start, resultPerPage, pageNumber]
    }

    private List<Country> wrapGridEntityList(List<Country> countryList, int start) {
            List<Country> lstCountry = []

            int counter = start + 1
            for (int i = 0; i < countryList.size(); i++) {
                GridEntity obj = new GridEntity()
                Country country = countryList[i]
                obj.id = country.id
                obj.cell = [
                        counter,
                        country.id,
                        country.name,
                        country.numcode,
                        country.iso2,
                        country.iso3,
                        country.printablename
                ]
                lstCountry << obj
                counter++
            }
            return lstCountry
    }

    def edit() {
        Map result
        long countryId = Long.parseLong(params.id.toString())
        Country country = Country.read(countryId)
        if (!country) {
            result = [isError: true, message: "Country not found to edit or someone deleted."]
            render result as JSON
            return
        }
        result = [entity: country, version: country.version]
        String output = result as JSON
        println "result as JSON > " + output
        render(result as JSON)
    }

    def update() {
        Map result
        long countryId = Long.parseLong(params.id.toString())
        int countName = Country.countByNameIlikeAndIdNotEqual(params.name, countryId)
        if (countName > 0) {
            result = [isError: true, message: params.name + ' name already exist.']
            render(result as JSON)
            return
        }
        int countIso2 = Country.countByIso2IlikeAndIdNotEqual(params.iso2, countryId)
        if (countIso2 > 0) {
            result = [isError: true, message: params.iso2 + ' already exist']
            render(result as JSON)
            return
        }
        Country country = Country.get(countryId)
        country.name = params.name
        country.printablename = params.printablename
        country.iso2 = params.iso2
        country.iso3 = params.iso3
        country.numcode = Long.parseLong(params.numcode.toString())
        country.version = country.version + 1
        country.save(flush: true)
        GridEntity object = new GridEntity()
        object.id = country.id
        object.cell = [
                country.id,
                country.name,
                country.numcode,
                country.iso2,
                country.iso3,
                country.printablename
        ]
        result = [updateEntity: object]
        String output = result as JSON
        render(output)
    }
}
