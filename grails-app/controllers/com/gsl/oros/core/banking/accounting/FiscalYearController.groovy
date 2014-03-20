package com.gsl.oros.core.banking.accounting

import com.gsl.oros.banking.common.GridEntity
import com.gsl.oros.core.banking.settings.FiscalYear
import grails.converters.JSON

class FiscalYearController {
    public int start = 0;
    public int pageNumber = 1;
    public int resultPerPage = 10;
    public String sortColumn = "name";
    public String sortOrder = "asc";

    def index() {
        render(view:'/corebanking/settings/accounting/addFiscalYear')
    }

    def save(){
        Map result
        def beginDate=params.beginingDate
        def endDate=params.endingDate
        FiscalYear fiscalYear=new FiscalYear()
        fiscalYear.beginingDate=Date.parse("d/M/yyyy",beginDate)
        fiscalYear.endingDate=Date.parse("d/M/YYYY",endDate)
        fiscalYear.closed=params.closed as Integer
        fiscalYear.save(failOnError: true)
        GridEntity object = new GridEntity()
        object.id = fiscalYear.id
        object.cell = [
                fiscalYear.id,
                fiscalYear.beginingDate.format("d/M/yyyy"),
                fiscalYear.endingDate.format("d/M/yyyy"),
                fiscalYear.closed,
        ]
        result = [updateEntity: object]
        String output = result as JSON
        render(output)
    }

    def list() {
        (start, resultPerPage, pageNumber) = initGridParams(params)
        List<FiscalYear> lstFiscalYear = FiscalYear.list([offset: start, max: resultPerPage, sort: sortColumn, order: sortOrder])

        println(lstFiscalYear.beginingDate)
        List<FiscalYear> resultList = wrapGridEntityList(lstFiscalYear, start)

        int recordsCount = FiscalYear.count()
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

    private List<FiscalYear> wrapGridEntityList(List<FiscalYear> fiscalYearList, int start) {
        List<FiscalYear> lstExchangeRate = []

        int counter = start + 1
        for (int i = 0; i < fiscalYearList.size(); i++) {
            GridEntity obj = new GridEntity()
            FiscalYear fiscalYear = fiscalYearList[i]
            obj.id = fiscalYear.id
            obj.cell = [
                    counter,
                    fiscalYear.id,
                    fiscalYear.beginingDate.format("d/M/yyyy"),
                    fiscalYear.endingDate.format("d/M/yyyy"),
                    fiscalYear.closed,
            ]
            lstExchangeRate << obj
            counter++
        }
        return lstExchangeRate
    }

    def edit() {
        Map result
        long fiscalYearId = Long.parseLong(params.id.toString())
        FiscalYear fiscalYear = FiscalYear.read(fiscalYearId)
        if (!fiscalYear) {
            result = [isError: true, message: "FiscalYear not found to edit or someone deleted."]
            render result as JSON
            return
        }
        result = [entity: fiscalYear, version: fiscalYear.version]
        String output = result as JSON
        println "result as JSON > " + output
        render(result as JSON)
    }

    def update() {

        Map result
        long fiscalYearId = Long.parseLong(params.id.toString())

        FiscalYear fiscalYear = FiscalYear.get(fiscalYearId)
        fiscalYear.beginingDate = Date.parse("d/M/yyyy",params.beginingDate)
        fiscalYear.endingDate = Date.parse("d/M/yyyy",params.endingDate)
        fiscalYear.closed = params.closed
        fiscalYear.version = fiscalYear.version + 1
        fiscalYear.save(flush: true)
        GridEntity object = new GridEntity()
        object.id = fiscalYear.id
        object.cell = [
                fiscalYear.id,
                fiscalYear.beginingDate,
                fiscalYear.endingDate,
                fiscalYear.closed
        ]
        result = [updateEntity: object]
        String output = result as JSON
        render(output)
    }
}
