package com.gsl.oros.core.banking.settings

import com.gsl.oros.banking.common.GridEntity
import grails.converters.JSON
import org.springframework.test.web.servlet.result.MockMvcResultMatchers

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
        Map result
        long countCountry = Country.countByName(params.name)
        if (countCountry > 0) {
            result = [isError: true, message: "Country name " + params.name + ' already exist.']
            render(result as JSON)
            return
        } else {
            Country country = new Country(params)
            country.save(failOnError: true)
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

    def delete() {
        long countryId = Long.parseLong(params.countryId.toString())
        Country country = Country.get(countryId)
        country.delete(flush: true)
        Map result = [isSuccess: true, message: "Country deleted successfully."]
        render result as JSON
        return
    }

    def list(int rows, String _search, int page, String sidx, String sord) {
        if (_search == "true") {
            search(params)
            return
        } else {
            List<Country> lstCountry = Country.list([offset: getOffset(page,rows), max: rows, sort: sidx, order: sord])
            int recordsCount = Country.count()
            int numberOfPages = Math.ceil(recordsCount / rows)
            Map gridOutput = [page: page, records: recordsCount, total: numberOfPages, rows: lstCountry]
            render(gridOutput as JSON)
        }
    }

    def search(def params) {
        (start, resultPerPage, pageNumber) = initGridParams(params)
        long numcode = 0
        if (params.numcode) {
            numcode = Long.parseLong(params.numcode)
        }
        List<Country> lstCountry = Country.withCriteria {
            if (params.name) ilike('name', '%' + params.name + '%')
            if (params.numcode) {
                eq('numcode', numcode)
            }
            if (params.iso2) ilike('iso2', '%' + params.iso2 + '%')
            if (params.iso3) ilike('iso3', '%' + params.iso3 + '%')
            if (params.printablename) ilike('printablename', '%' + params.printablename + '%')

            maxResults(resultPerPage)
            firstResult(start)
            order(sortColumn, sortOrder)
            setReadOnly(true)
        }

        List counts = Country.withCriteria {
            if (params.name) ilike('name', '%' + params.name + '%')
            if (params.numcode) {
                eq('numcode', numcode)
            }
            if (params.iso2) ilike('iso2', '%' + params.iso2 + '%')
            if (params.iso3) ilike('iso3', '%' + params.iso3 + '%')
            if (params.printablename) ilike('printablename', '%' + params.printablename + '%')
            projections { rowCount() }
        }

        int recordsCount = counts[0] as int
        int maxRows = Integer.valueOf(params.rows ?: resultPerPage)
        int numberOfPages = Math.ceil(recordsCount / maxRows)
        Map gridOutput = [page: pageNumber, records: recordsCount, total: numberOfPages, rows: lstCountry]
        render(gridOutput as JSON)

    }
    private int getOffset(pageNumber, resultPerPage) {
        int start = ((pageNumber - 1) * resultPerPage);
        if (start > 0) {
            start = start - resultPerPage;
        }
        return start
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

        start = ((pageNumber - 1) * resultPerPage);
        if (start > 0) {
            start = start - resultPerPage;
        }
        return [start, resultPerPage, pageNumber]
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
