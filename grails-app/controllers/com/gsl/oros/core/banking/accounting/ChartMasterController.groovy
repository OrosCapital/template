package com.gsl.oros.core.banking.accounting

import com.gsl.oros.core.banking.settings.accounting.ChartClass
import com.gsl.oros.core.banking.settings.accounting.ChartGroup
import com.gsl.oros.core.banking.settings.accounting.ChartMaster

class ChartMasterController {

    def index() {}

    def create(){
        def chartGroupList = ChartGroup.list()
        render (view: '/coreBanking/settings/accounting/chart/createChartMaster', model: [chartGroupList: chartGroupList])
    }

    def save() {
        try{
            // :::: Save ::::
            def aChartMaster = new ChartMaster(params)
            if (params.id == '' && aChartMaster.save(flush: true)){
                flash.success = "Chart Master Add Successfully"
                redirect(action: "treeView")
            }
            // :::: Update ::::
            else if (params.id != ''){
                //println params.id
                Long id = params.getLong('id')
                def aChartMasterEdit = aChartMaster.get(id)
                aChartMasterEdit.properties = aChartMaster
                if (aChartMasterEdit.save(flush: true)){
                    flash.success = "Chart Master Update Successfully"
                    redirect(action: 'treeView')
                }
                else{
                    flash.error = "Not validate , Update again!"
                    redirect(action: "edit", id: id)
                }
            }
            else {
                flash.error = "Chart Master not added, Account code must be Unique!"
                redirect(action: "create")
            }


        }
        catch (Exception ex){
            flash.error = ex.getMessage()
            redirect(action: 'treeView')
        }
    }

    def edit(){
        //def id = params.id
        Long id = params.getLong('id')
        def aChartMaster = ChartMaster.get(id)
        def chartGroupList = ChartGroup.list()
        render (view: "/coreBanking/settings/accounting/chart/createChartMaster", model: [aChartMaster : aChartMaster,chartGroupList : chartGroupList])
    }

    def treeView(){
        def chartClassLists = ChartClass.list()
        render (view: "/coreBanking/settings/accounting/chart/chartTreeView", model: [chartClassLists : chartClassLists])
    }
}
