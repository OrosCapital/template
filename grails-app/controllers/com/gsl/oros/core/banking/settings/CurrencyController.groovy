package com.gsl.oros.core.banking.settings

import com.gsl.oros.banking.common.GridEntity
import grails.converters.JSON

class CurrencyController {
    public int start = 0;
    public int pageNumber = 1;
    public int resultPerPage = 10;
    public String sortColumn = "name";
    public String sortOrder = "asc";

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
        Map result
        long countCurrency=Currency.countByCountry(Country.read(params.country))
        if(countCurrency>0){
            result = [isError: true, message: "Currency for " +Country.read(params.country).name+ ' already exist.']
            render(result as JSON)
            return
        }else{
            Currency currency = new Currency()
            currency.name = params.name
            currency.country = Country.read(params.countryId)
            currency.abbreviation = params.abbreviation
            currency.hundredName = params.hundredName
            currency.symbol = params.symbol
            currency.save(failOnError: true)
            GridEntity object = new GridEntity()
            object.id = currency.id
            object.cell = [
                    currency.id,
                    currency.name,
                    currency.abbreviation,
                    currency.symbol,
                    currency.country,
                    currency.hundredName
            ]
            result = [updateEntity: object]
            String output = result as JSON
            render(output)
        }

    }

    def list() {
        (start, resultPerPage, pageNumber) = initGridParams(params)
        if (params._search == "true") {
            List<Currency> lstCurrency = Currency.withCriteria {
                if (params.name) ilike('name', '%' + params.name + '%')
                if (params.abbreviation) ilike('abbreviation','%'+params.abbreviation + '%')
                if (params.country) ilike('country','%'+params.country + '%')
                if (params.symbol) ilike('symbol','%'+params.symbol + '%')
                if (params.hundredName) ilike('hundredName','%'+params.hundredName + '%')

                maxResults(resultPerPage)
                firstResult(start)
                order(sortColumn, sortOrder)
                setReadOnly(true)
            }

            List counts = Currency.withCriteria {
                if (params.name) ilike('name', '%' + params.name + '%')
                if (params.abbreviation) ilike('abbreviation','%'+params.abbreviation + '%')
                if (params.country) ilike('country','%'+params.country + '%')
                if (params.symbol) ilike('symbol','%'+params.symbol + '%')
                if (params.hundredName) ilike('hundredName','%'+params.hundredName + '%')
                projections { rowCount() }
            }
            List<Currency> resultList = wrapGridEntityList(lstCurrency, start)
            int recordsCount = counts[0] as int
            int maxRows = Integer.valueOf(params.rows ?: resultPerPage)
            int numberOfPages = Math.ceil(recordsCount / maxRows)
            Map gridOutput = [page: pageNumber, records: recordsCount, total: numberOfPages, rows: resultList]
            render(gridOutput as JSON)
            return
        }else{
            List<Currency> lstCurrency = Currency.list([offset: start, max: resultPerPage, sort: sortColumn, order: sortOrder])

            List<Currency> resultList = wrapGridEntityList(lstCurrency, start)
            int recordsCount = Currency.count()
            int maxRows = Integer.valueOf(params.rows ?: resultPerPage)
            int numberOfPages = Math.ceil(recordsCount / maxRows)
            Map gridOutput = [page: pageNumber, records: recordsCount, total: numberOfPages, rows: resultList]
            render(gridOutput as JSON)
        }

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

    private List<Currency> wrapGridEntityList(List<Currency> currencyList, int start) {
        List<Currency> lstCurrency = []

        int counter = start + 1
        for (int i = 0; i < currencyList.size(); i++) {
            GridEntity obj = new GridEntity()
            Currency currency = currencyList[i]
            obj.id = currency.id
            obj.cell = [
                    counter,
                    currency.id,
                    currency.name,
                    currency.abbreviation,
                    currency.country.name,
                    currency.symbol,
                    currency.hundredName
            ]
            lstCurrency << obj
            counter++
        }
        return lstCurrency
    }

    def edit() {
        Map result
        long currencyId = Long.parseLong(params.id.toString())
        Currency currency = Currency.read(currencyId)
        if (!currency) {
            result = [isError: true, message: "Currency not found to edit or someone deleted."]
            render result as JSON
            return
        }
        result = [entity: currency, version: currency.version]
        String output = result as JSON
        println "result as JSON > " + output
        render(result as JSON)
    }

    def delete() {
        long currencyId = Long.parseLong(params.currencyId.toString())
        Currency currency = Currency.get(currencyId)
        currency.delete(flush: true)
        Map result = [isSuccess: true, message: "Currency deleted successfully."]
        render result as JSON
        return
    }

    def update() {
        println "params>> " + params
            Map result
            long currencyId = Long.parseLong(params.id.toString())

            int countName = Country.countByNameIlikeAndIdNotEqual(params.name, currencyId)
            if (countName > 0) {
                result = [isError: true, message: params.name + ' name already exist.']
                render(result as JSON)
                return
            }
            int countsymbol = Currency.countBySymbolLikeAndIdNotEqual(params.symbol, currencyId)
            if (countsymbol > 0) {
                result = [isError: true, message: params.symbol + ' already exist']
                render(result as JSON)
                return
            }
            Currency currency = Currency.get(currencyId)
            currency.name=params.name
            currency.abbreviation = params.abbreviation
            currency.symbol = params.symbol
            currency.country = Country.read(params.countryId as Long)
            currency.hundredName = params.hundredName
            currency.version = currency.version + 1
            currency.save(flush: true)
            GridEntity object = new GridEntity()
            object.id = currency.id
            object.cell = [
                    currency.id,
                    currency.name,
                    currency.abbreviation,
                    currency.symbol,
                    currency.country,
                    currency.hundredName
            ]
            result = [updateEntity: object]
            String output = result as JSON
            render(output)
        }


}
