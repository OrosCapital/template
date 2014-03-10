package com.gsl.uma.security

import org.springframework.http.HttpMethod

class RequestMap {

	String url
	String configAttribute
	HttpMethod httpMethod
    Long moduleId = 0L        //ModuleId, FeatureId, FeventsId
    Long featureId = 0L        //ModuleId, FeatureId, FeventsId
    Long eventsId = 0L        //ModuleId, FeatureId, FeventsId
    String menuText
    String description

	static mapping = {
		cache true
	}

	static constraints = {
		url blank: false, unique: 'httpMethod'
		configAttribute blank: false
		httpMethod nullable: true
        menuText nullable: true
        description nullable: true
	}
}
