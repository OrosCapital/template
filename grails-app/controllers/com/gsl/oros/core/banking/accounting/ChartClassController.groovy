package com.gsl.oros.core.banking.accounting

import com.gsl.oros.core.banking.settings.accounting.ChartClass
import com.gsl.oros.core.banking.settings.accounting.ChartClassType

// import chart class


class ChartClassController {

    def index() {
        render(view: '/coreBanking/settings/accounting/chart/createChartClass')
    }


    def create(){
        def chartClassTypeList = ChartClassType.list()
        render (view: '/coreBanking/settings/accounting/chart/createChartClass', model: [chartClassTypeList: chartClassTypeList])

    }


    def save() {
        try{
            // :::: Save ::::
            def aChartClass = new ChartClass(params)
            if (params.id == '' && aChartClass.save(flush: true)){
                flash.success = "Chart Class Add Successfully"
                redirect(controller: 'chartMaster', action: "treeView")
            }
            // :::: Update ::::
            else if (params.id != ''){
                //println params.id
                def aChartClassEdit = aChartClass.get(params.id)
                aChartClassEdit.properties = aChartClass
                if (aChartClassEdit.validate()){
                    aChartClassEdit.save(flush: true)
                    flash.success = "Chart Class Update Successfully"
                    redirect(controller: 'chartMaster', action: "treeView")
                }
                else{
                    //def id = params.id
                    Long id = params.getLong('id')
                    flash.error = "Not validate , Update again!"
                    redirect(action: "edit", id: id)
                }
            }

            else {
                flash.error = "Chart Class not added!"
                redirect(action: "create")
            }


        }
        catch (Exception ex){
            flash.error = ex.getMessage()
            redirect( controller: 'chartMaster', action: 'treeView')
        }
    }


    def edit(){
        //def id = params.id
        Long id = params.getLong('id')
        def aChartClass = ChartClass.get(id)
        def chartClassTypeList = ChartClassType.list()
        render (view: "/coreBanking/settings/accounting/chart/createChartClass", model: [aChartClass : aChartClass,chartClassTypeList : chartClassTypeList])
    }
}
