package com.gsl.oros.core.banking.settings

import com.gsl.oros.banking.common.GridEntity
import grails.converters.JSON

class ExchangeRateController {
    public int start = 0;
    public int pageNumber = 1;
    public int resultPerPage = 10;
    public String sortColumn = "name";
    public String sortOrder = "asc";

    def index() {
        def currencyList = Currency.list()
        render(view: '/coreBanking/settings/createExchangeRate', model: [currencyList: currencyList,myobj:Country.list()])
    }

    def save() {
        def currencyList = Currency.list()
        def theDate = params.date
        ExchangeRate exchangeRate = new ExchangeRate()
        exchangeRate.currency = Currency.read(params.currencyId)
        exchangeRate.buyPrice = params.buyPrice as Double
        exchangeRate.sellPrice = params.sellPrice as Double
        exchangeRate.date=Date.parse("d/M/yyyy",theDate)
        exchangeRate.save(failOnError: true)
        render(view: '/coreBanking/settings/createExchangeRate', model: [currencyList: currencyList,myobj:Country.list()])
    }

    def list() {
        (start, resultPerPage, pageNumber) = initGridParams(params)
        List<ExchangeRate> lstExchangeRate = ExchangeRate.list([offset: start, max: resultPerPage, sort: sortColumn, order:sortOrder ])
        List<ExchangeRate> resultList = wrapGridEntityList(lstExchangeRate, start)

        int recordsCount = ExchangeRate.count()
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

    private List<ExchangeRate> wrapGridEntityList(List<ExchangeRate> exchangeRateList, int start) {
        List<ExchangeRate> lstExchangeRate = []

        int counter = start + 1
        for (int i = 0; i < exchangeRateList.size(); i++) {
            GridEntity obj = new GridEntity()
            ExchangeRate exchangeRate = exchangeRateList[i]
            obj.id = exchangeRate.id
            obj.cell = [
                    counter,
                    exchangeRate.id,
                    exchangeRate.currency.name,
                    exchangeRate.buyPrice,
                    exchangeRate.sellPrice,
                    exchangeRate.date
            ]
            lstExchangeRate << obj
            counter++
        }
        return lstExchangeRate
    }
}
