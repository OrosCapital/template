package com.gsl.oros.core.banking.settings.accounting

class ChartGroup {

    String name
    int status
    String accountantName
    /*String position*/


    static belongsTo = [chartClass: ChartClass, parentGroup:ChartGroup]

    /*
    * static belongsTo = [parent:Category]
    static hasMany = [children: Category]
    * */

    static hasMany = [chartMasters: ChartMaster, parentGroups: ChartGroup]

    static constraints = {
        name blank: false, nullable: false
        status blank: false, nullable: false
        accountantName blank: false, nullable: false

        parentGroup nullable: true
    }
}
