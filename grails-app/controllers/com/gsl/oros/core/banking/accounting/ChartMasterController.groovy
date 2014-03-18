package com.gsl.oros.core.banking.accounting

import com.gsl.oros.core.banking.settings.accounting.ChartClass
import com.gsl.oros.core.banking.settings.accounting.ChartGroup
import com.gsl.oros.core.banking.settings.accounting.ChartMaster

class ChartMasterController {

    private static final String ID = 'id'
    private static final String sortColumn = 'name'
    private static final String ASC = 'asc'

    def index() {}

    def create(){
        List<ChartGroup> chartGroupList = ChartGroup.list(sort :sortColumn, order : ASC, readOnly :true)
        render (view: '/coreBanking/settings/accounting/chart/createChartMaster', model: [chartGroupList: chartGroupList])
    }

    def save() {
        try{
            Long id = params.getLong(ID)
            def chartMaster = new ChartMaster(params)
            // :::: Save ::::
            if (id == null  && chartMaster.save(flush: true)){
                flash.success = "Chart Master Add Successfully"
                redirect(action: "treeView")
            }
            // :::: Update ::::
            else if (id != null){
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
        Long id = params.getLong(ID)
        ChartMaster chartMaster = ChartMaster.get(id)
        List<ChartGroup> chartGroupList = ChartGroup.list(sort :sortColumn, order : ASC, readOnly :true)
        render (view: "/coreBanking/settings/accounting/chart/createChartMaster",
                model: [aChartMaster : chartMaster,chartGroupList : chartGroupList])
    }

    def treeView(){
        List<ChartClass> chartClassLists = ChartClass.list(sort :sortColumn, order : ASC, readOnly :true)
        render (view: "/coreBanking/settings/accounting/chart/chartTreeView",
                model: [chartClassLists : chartClassLists])
    }
}
