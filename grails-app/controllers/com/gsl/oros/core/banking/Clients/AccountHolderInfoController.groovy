package com.gsl.oros.core.banking.clients

class AccountHolderInfoController {

    def index() {
        redirect(action: 'create')
    }

    def create(){
        render(view: 'create')
    }
}
