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

    def list() {
        (start, resultPerPage, pageNumber) = initGridParams(params)
        List<Currency> lstCurrency = Currency.list([offset: start, max: resultPerPage, sort: sortColumn, order: sortOrder])
        List<Currency> resultList = wrapGridEntityList(lstCurrency, start)

        int recordsCount = Currency.count()
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

}
