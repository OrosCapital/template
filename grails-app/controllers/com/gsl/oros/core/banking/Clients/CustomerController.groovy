package com.gsl.oros.core.banking.clients

class CustomerController {

    def index() {
        redirect(controller: 'customerMaster', action: 'create')
    }
}
