package com.gsl.oros.core.banking.accounting

import com.gsl.oros.core.banking.settings.accounting.ChartClass
import com.gsl.oros.core.banking.settings.accounting.ChartClassType


class ChartClassController {

    private static final String ID = 'id'
    private static final String CLASS_TYPE = 'classType'
    private static final String ASC = 'asc'

    def index() {
        render(view: '/coreBanking/settings/accounting/chart/createChartClass')
    }


    def create(){
        // @todo-all ChartClassType.list(readonly:true)
        // @todo-rumee question about dirty check
        /*
        insert  into `chart_class_type`(`id`,`version`,`class_type`,`status`)
		values 	(1,0,'Assets',1),
				(2,0,'Liabilities',1),
				(3,0,'Equity',1),
				(4,0,'Income',1),
				(5,0,'Cost of Goods Sold',1),
				(6,0,'Expanse',1),
				(7,0,'Financial income and expenses',1);
        * */
        if(ChartClassType.list().size() <1){
            new ChartClassType(classType: 'Assets',status: 1).save(flush: true)
            new ChartClassType(classType: 'Liabilities',status: 1).save(flush: true)
            new ChartClassType(classType: 'Equity',status: 1).save(flush: true)
            new ChartClassType(classType: 'Income',status: 1).save(flush: true)
            new ChartClassType(classType: 'Cost of Goods Sold',status: 1).save(flush: true)
            new ChartClassType(classType: 'Expanse',status: 1).save(flush: true)
        }

        List<ChartClass> chartClassTypeList = ChartClassType.list(sort :CLASS_TYPE, order : ASC, readOnly :true)
        render (view: '/coreBanking/settings/accounting/chart/createChartClass', model: [chartClassTypeList: chartClassTypeList])
    }

    def save() {
        try{
            // :::: Save ::::
            def aChartClass = new ChartClass(params)  // rename var accordingly
            if (params.id == '' && aChartClass.save(flush: true)){
                flash.success = "Chart Class Add Successfully"
                redirect(controller: 'chartMaster', action: "treeView")
            }
            // :::: Update ::::
            else if (params.id != ''){
                //println params.id
                Long id = params.getLong(ID)
                def aChartClassEdit = aChartClass.get(id)
                aChartClassEdit.properties = aChartClass
                if (aChartClassEdit.save(flush: true)){
                    flash.success = "Chart Class Update Successfully"
                    redirect(controller: 'chartMaster', action: "treeView")
                } else {
                    flash.error = "Not validate , Update again!"
                    redirect(action: "edit", id: id)
                }
            } else {
                flash.error = "Chart Class not added!"
                redirect(action: "create")
            }

        } catch (Exception ex){
            flash.error = ex.getMessage()
            redirect( controller: 'chartMaster', action: 'treeView')
        }
    }


    def edit(){
        Long id = params.getLong(ID) // use constant
        ChartClass chartClass = ChartClass.get(id)
        List<ChartClassType> chartClassTypeList = ChartClassType.list(sort :CLASS_TYPE, order : ASC, readOnly :true)
        render (view: "/coreBanking/settings/accounting/chart/createChartClass",
                model: [chartClass: chartClass, chartClassTypeList : chartClassTypeList ])

    }
}
