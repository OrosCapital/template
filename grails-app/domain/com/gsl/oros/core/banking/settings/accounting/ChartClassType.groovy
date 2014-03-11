package com.gsl.oros.core.banking.settings.accounting

class ChartClassType {

    String classType
    int status

    static hasMany = [chartClasses: ChartClass]

    static constraints = {
        classType blank: false, nullable: false
        status blank: false ,nullable: false
    }
}
