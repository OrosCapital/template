package com.gsl.oros.core.banking.accounting

import com.gsl.oros.core.banking.settings.FiscalYear

class FiscalYearController {

    def index() {
        render(view:'/corebanking/settings/accounting/addFiscalYear')
    }

    def create(){
        println(params)
        def beginDate=params.begin
        def endDate=params.end
        FiscalYear fiscalYear=new FiscalYear()
        fiscalYear.begin=Date.parse("d/M/yyyy",beginDate)
        fiscalYear.end=Date.parse("d/M/YYYY",endDate)
        fiscalYear.closed=params.closed as Integer
        fiscalYear.save(failOnError: true)
        render(view:'/corebanking/settings/accounting/addFiscalYear')
    }
}
