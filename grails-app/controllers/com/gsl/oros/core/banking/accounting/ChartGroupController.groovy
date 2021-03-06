package com.gsl.oros.core.banking.accounting

// import chart Class
import com.gsl.oros.core.banking.settings.accounting.ChartClass

// import chart group
import com.gsl.oros.core.banking.settings.accounting.ChartGroup
import grails.converters.JSON


class ChartGroupController {

    private static final String ID = 'id'
    private static final String sortColumn = 'name'
    //private static final String sortColumn = 'name'
    private static final String ASC = 'asc'

    def index() {}


    def create(){

        Long id = params.getLong(ID)
        def parentGroup = null
        if(id != null){
            parentGroup = ChartGroup.get(id)
        }

        List<ChartClass> chartClassList = ChartClass.list(sort :sortColumn, order : ASC, readOnly :true)
        List<ChartGroup> chartGroupList = ChartGroup.list(sort :'name', order : ASC, readOnly :true)
        render (view: '/coreBanking/settings/accounting/chart/createChartGroup',
                model: [chartClassList: chartClassList, chartGroupList :chartGroupList, parentGroup:parentGroup])
    }

    def save() {
        try{

            Long id = params.getLong(ID)
            def aChartGroup = new ChartGroup(params)

            // ::: Save  :::
            if (id == null && aChartGroup.save(flush: true)){
                flash.success = "Chart Group Add Successfully"
                redirect(controller: 'chartMaster', action: "treeView")
            }
            // :::: Update ::::
            else if (id != null){
                def aChartGroupEdit = aChartGroup.get(id)
                aChartGroupEdit.properties = aChartGroup
                if (aChartGroupEdit.save(flush: true)){
                    flash.success = "Chart Group Update Successfully"
                    redirect(controller: 'chartMaster', action: "treeView")
                }
                else{
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
        Long id = params.getLong(ID)
        ChartGroup chartGroup = ChartGroup.get(id)

        List<ChartClass> chartClassList = ChartClass.list(sort: sortColumn, order : ASC, readOnly :true)
        render (view: "/coreBanking/settings/accounting/chart/createChartGroup",
                model: [chartGroup: chartGroup,chartClassList : chartClassList])
    }


}

