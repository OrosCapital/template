package com.gsl.oros.core.banking.clients

class RetailClientController {

    def index() {
        redirect(action: 'create')
    }

    def create(){
        render (view: 'create')
    }
}
