package com.gsl.oros.core.banking.accounting

// import chart Class
import com.gsl.oros.core.banking.settings.accounting.ChartClass

// import chart group
import com.gsl.oros.core.banking.settings.accounting.ChartGroup


class ChartGroupController {

    def index() {}


    def create(){
        def chartClassList = ChartClass.list()
        def chartGroupList = ChartGroup.list()
        render (view: '/coreBanking/settings/accounting/chart/createChartGroup', model: [chartClassList: chartClassList, chartGroupList :chartGroupList])
    }


    def save() {
        try{
            // :::: Save ::::
            /*if(params.parentGroup != ''){
                params.position = "child"
            }
            else{
                params.position = "parent"
            }*/

            def aChartGroup = new ChartGroup(params)

            if (params.id == '' && aChartGroup.save(flush: true)){
                flash.success = "Chart Group Add Successfully"
                redirect(controller: 'chartMaster', action: "treeView")
            }
            // :::: Update ::::
            else if (params.id != ''){
                //println params.id
                def aChartGroupEdit = aChartGroup.get(params.id)
                aChartGroupEdit.properties = aChartGroup
                if (aChartGroupEdit.validate()){
                    aChartGroupEdit.save(flush: true)
                    flash.success = "Chart Group Update Successfully"
                    redirect(controller: 'chartMaster', action: "treeView")
                }
                else{
                    def id = params.id
                    flash.error = "Not validate , Update again!"
                    redirect(action: "edit", id: id)
                }
            }

            else {
                flash.error = "Chart Group not added!"
                redirect(action: "create")
            }


        }
        catch (Exception ex){
            flash.error = ex.getMessage()
            redirect( controller: 'chartMaster', action: 'treeView')
        }
    }

    def edit(){
        def id = params.id
        def aChartGroup = ChartGroup.get(id)
        def chartClassList = ChartClass.list()
        def chartGroupList = ChartGroup.list()
        render (view: "/coreBanking/settings/accounting/chart/createChartGroup", model: [aChartGroup : aChartGroup,chartClassList : chartClassList, chartGroupList: chartGroupList])
    }
}

