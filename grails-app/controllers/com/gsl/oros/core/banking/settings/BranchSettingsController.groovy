package com.gsl.oros.core.banking.settings

class BranchSettingsController {

    def index() {
        def countryList=Country.list()
        render(view:'/coreBanking/settings/branchSettings/defineNewBranch',model: [country:countryList])
    }

    def create(){
      def countryList=Country.list()
      println(params)
      render(view:'/coreBanking/settings/branchSettings/defineNewBranch',model: [country:countryList])
    }
}
