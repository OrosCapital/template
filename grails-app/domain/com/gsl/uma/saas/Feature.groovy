package com.gsl.uma.saas

class Feature {
    String name
    String description
    String fmenuText
//    String requestUrl
    String controllerName
    String actionName
    boolean status = true
    boolean showOnMenu = false
    //    Long userId         //companyId

    static hasMany = [events:Events]
    static constraints = {
        name nullable: false, unique: true
        fmenuText nullable: false
    }
}
