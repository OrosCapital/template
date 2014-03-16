package com.gsl.oros.core.banking.accounting

import com.gsl.oros.core.banking.settings.accounting.ChartClass
import com.gsl.oros.core.banking.settings.accounting.ChartGroup
import com.gsl.oros.core.banking.settings.accounting.ChartMaster

class ChartMasterController {

    private static final String ID = 'id'
    private static final String CHART_GROUP = 'name'
    private static final String ASC = 'asc'

    def index() {}

    def create(){
        List<ChartGroup> chartGroupList = ChartGroup.list(sort :CHART_GROUP, order : ASC, readOnly :true)
        render (view: '/coreBanking/settings/accounting/chart/createChartMaster', model: [chartGroupList: chartGroupList])
    }

    def save() {
        try{
            // :::: Save ::::
            def chartMaster = new ChartMaster(params)
            if (params.id == '' && chartMaster.save(flush: true)){
                flash.success = "Chart Master Add Successfully"
                redirect(action: "treeView")
            }
            // :::: Update ::::
            else if (params.id != ''){
                //println params.id
                Long id = params.getLong(ID)
                def aChartMasterEdit = chartMaster.get(id)
                aChartMasterEdit.properties = chartMaster
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
        Long id = params.getLong(ID)
        ChartMaster chartMaster = ChartMaster.get(id)
        List<ChartGroup> chartGroupList = ChartGroup.list(sort :CHART_GROUP, order : ASC, readOnly :true)
        render (view: "/coreBanking/settings/accounting/chart/createChartMaster",
                model: [aChartMaster : chartMaster,chartGroupList : chartGroupList])
    }

    def treeView(){
        List<ChartClass> chartClassLists = ChartClass.list(sort :CHART_GROUP, order : ASC, readOnly :true)
        render (view: "/coreBanking/settings/accounting/chart/chartTreeView",
                model: [chartClassLists : chartClassLists])
    }
}
