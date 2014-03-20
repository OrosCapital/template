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
        render(view: '/coreBanking/settings/createExchangeRate', model: [currencyList: currencyList, myobj: Country.list()])
    }

    def save() {
        Map result
        println(params)
            ExchangeRate exchangeRate = new ExchangeRate()
            exchangeRate.currency = Currency.read(params.currencyId)
            exchangeRate.buyPrice = params.buyPrice as Double
            exchangeRate.sellPrice = params.sellPrice as Double
            exchangeRate.date = Date.parse("dd/mm/yyyy", params.date)
            exchangeRate.save(failOnError: true)
            GridEntity object = new GridEntity()
            object.id = exchangeRate.id
            object.cell = [
                    exchangeRate.id,
                    exchangeRate.currency,
                    exchangeRate.buyPrice,
                    exchangeRate.sellPrice,
                    exchangeRate.date,
            ]
            result = [updateEntity: object]
            String output = result as JSON
            render(output)
    }


    def list() {
        (start, resultPerPage, pageNumber) = initGridParams(params)

        if (params._search == "true") {
            Double buyPrice=0
            Double sellPrice =0
            if(params.buyPrice)
                buyPrice=Double.parseDouble(params.buyPrice)
            if(params.sellPrice)
                sellPrice=Double.parseDouble(params.sellPrice)
            if(params.date)

            List<ExchangeRate> lstExchangeRate = ExchangeRate.withCriteria {
                if (params.currency) ilike('currency', '%' + params.currency + '%')
                if (params.buyPrice) {
                    eq('buyPrice',buyPrice)
                }
                if (params.sellPrice) {
                    eq('sellPrice',sellPrice)
                }
                if (params.date) ilike('country','%'+params.country + '%')

                maxResults(resultPerPage)
                firstResult(start)
                order(sortColumn, sortOrder)
                setReadOnly(true)
            }

            List counts = ExchangeRate.withCriteria {
                if (params.currency) ilike('currency', '%' + params.currency + '%')
                if (params.buyPrice) {
                    eq('buyPrice',buyPrice)
                }
                if (params.sellPrice) {
                    eq('sellPrice',sellPrice)
                }
                if (params.date) ilike('date','%'+params.country + '%')
                projections { rowCount() }
            }
            List<ExchangeRate> resultList = wrapGridEntityList(lstExchangeRate, start)
            int recordsCount = counts[0] as int
            int maxRows = Integer.valueOf(params.rows ?: resultPerPage)
            int numberOfPages = Math.ceil(recordsCount / maxRows)
            Map gridOutput = [page: pageNumber, records: recordsCount, total: numberOfPages, rows: resultList]
            render(gridOutput as JSON)
            return
        }else{
            List<ExchangeRate> lstExchangeRate = ExchangeRate.list([offset: start, max: resultPerPage, sort: sortColumn, order: sortOrder])
            List<ExchangeRate> resultList = wrapGridEntityList(lstExchangeRate, start)

            int recordsCount = ExchangeRate.count()
            def maxRows = Integer.valueOf(params.rows ?: resultPerPage)
            def numberOfPages = Math.ceil(recordsCount / maxRows)
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
                    exchangeRate.date.format("dd/mm/yyyy")
            ]
            lstExchangeRate << obj
            counter++
        }
        return lstExchangeRate
    }

    def edit() {
        Map result
        long exchangeRateId = Long.parseLong(params.id.toString())
        ExchangeRate exchangeRate = ExchangeRate.read(exchangeRateId)
        if (!exchangeRate) {
            result = [isError: true, message: "ExchangeRate not found to edit or someone deleted."]
            render result as JSON
            return
        }
        result = [entity: exchangeRate,date:exchangeRate.date.format("dd/mm/yyyy"),version: exchangeRate.version]
        String output = result as JSON
        println "result as JSON > " + output
        render(result as JSON)
    }

    def delete() {
        long exchangeRateId = Long.parseLong(params.exchangeRateId.toString())
        ExchangeRate exchangeRate = ExchangeRate.get(exchangeRateId)
        exchangeRate.delete(flush: true)
        Map result = [isSuccess: true, message: "ExchangeRate deleted successfully."]
        render result as JSON
        return
    }

    def update() {
        Map result
        long exchangeRateId = Long.parseLong(params.id.toString())
//        def date=ExchangeRate.read(exchangeRateId).date.compareTo()
//        long countExchange=ExchangeRate.countByCurrencyIlikeAndDateIlike(Currency.read(params.currencyId),Date.parse("dd/mm/yyyy", params.date))
//        println("Count Exchange"+countExchange)
        ExchangeRate exchangeRate = ExchangeRate.get(exchangeRateId)
        exchangeRate.currency = Currency.read(params.currencyId)
        exchangeRate.buyPrice = params.buyPrice as Double
        exchangeRate.sellPrice = params.sellPrice as Double
        //exchangeRate.date = Date.parse("yyyy/mm/ddH:mm:ss z",params.date)
        exchangeRate.date = Date.parse("dd/mm/yyyy", params.date)
        exchangeRate.version = exchangeRate.version + 1
        exchangeRate.save(flush: true)
        GridEntity object = new GridEntity()
        object.id = exchangeRate.id
        object.cell = [
                exchangeRate.id,
                exchangeRate.currency,
                exchangeRate.buyPrice,
                exchangeRate.sellPrice,
                exchangeRate.date.format("dd/mm/yyyy"),
        ]
        result = [updateEntity: object]
        String output = result as JSON
        render(output)
    }
}
