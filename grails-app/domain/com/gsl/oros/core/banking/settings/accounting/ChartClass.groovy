package com.gsl.oros.core.banking.settings.accounting


class ChartClass {

    String name
    String accountantName
    int status

    static belongsTo = [chartClassType: ChartClassType]

    static hasMany = [chartGroups: ChartGroup]


    static constraints = {
        name blank: false, nullable: false
        status blank: false ,nullable: false
        accountantName blank: false, nullable: false
    }


}
