package com.gsl.oros.core.banking.product

class ProductController {

    def index() {

        render(view: '/coreBanking/settings/product/savings/createSavingsProduct')
    }

    def showVoucher() {

        render(view: '/coreBanking/settings/product/showVoucher')
    }
}
