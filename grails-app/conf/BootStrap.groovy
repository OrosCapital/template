import com.gsl.uma.saas.Feature
import com.gsl.uma.saas.Events
import com.gsl.uma.saas.Module
import com.gsl.uma.security.Role
import com.gsl.uma.security.User
import com.gsl.uma.security.UserRole
import grails.plugin.springsecurity.SpringSecurityUtils

class BootStrap {
    def grailsApplication
    def init = { servletContext ->
        createUserWithRole()
        createAccessMapping()
        createRequestMap()
    }
    void createUserWithRole(){
        def superAdmin = Role.findByAuthority('ROLE_SUPER_ADMIN') ?: new Role(authority: 'ROLE_SUPER_ADMIN').save(failOnError: true)
        User supAdminUser = User.findByUsername('admin')
        if(!supAdminUser){
            supAdminUser = new User(username: 'admin', password: 'password', enabled: true, accountExpired: false, accountLocked: false, passwordExpired: false)
            supAdminUser.save(flush: true)
            new UserRole(user: supAdminUser, role: superAdmin).save(flush: true)
        }

        //Role admin
        def roleAdmin = Role.findByAuthority('ROLE_ADMIN') ?: new Role(authority: 'ROLE_ADMIN').save(failOnError: true)
        User adminUser = User.findByUsername('admin2')
        if(!adminUser){
            adminUser = new User(username: 'admin2', password: 'password', enabled: true, accountExpired: false, accountLocked: false, passwordExpired: false)
            adminUser.save(flush: true)
            new UserRole(user: adminUser, role: roleAdmin).save(flush: true)
        }

    }
    def createAccessMapping(){
        //  1.  user Management Module
        Module userMgmtModule = Module.findByName('USER_MGMT_MODULE') ?: new Module(name: 'USER_MGMT_MODULE',description:'User Management',menuText:'User Mgmt',showOnMenu: false, status: true).save(failOnError: true)

        // 1.1  user CURD
        Feature userMgmt = Feature.findByName('USER_MGMT')
            if(!userMgmt){
                userMgmt = new Feature(name: 'USER_MGMT',description:'Manage User with role and access',fmenuText:'Manage User',controllerName: 'manageUser',actionName:'index', showOnMenu: true, status: true).save(failOnError: true)
                userMgmtModule.addToFeature(userMgmt)
            }
                    // 1.1.1    Create User
                    Events createUser = Events.findByName('CREATE_USER')
                    if(!createUser){
                        createUser = new Events(name: 'CREATE_USER',description:'Create user with user List at bottom',fmenuText:'Create User',controllerName: 'manageUser',actionName:'createGeneralAddress', showOnMenu: true,isPermitToAll:false, status: true).save(failOnError: true)
                        userMgmt.addToEvents(createUser)
                    }
                    Events createUserSubmit = Events.findByName('SAVE_CREATE_USER')
                    if(!createUserSubmit){
                        createUserSubmit = new Events(name: 'SAVE_CREATE_USER',description:'Create user with user List at bottom',fmenuText:'Save',controllerName: 'manageUser',actionName:'saveBasic', showOnMenu: false,isPermitToAll:true, status: true).save(failOnError: true)
                        userMgmt.addToEvents(createUserSubmit)
                    }
                    // 1.1.2    Update User
                    Events updateUser = Events.findByName('UPDATE_USER')
                    if(!updateUser){
                        updateUser = new Events(name: 'UPDATE_USER',description:'Update user',fmenuText:'Update',controllerName: 'manageUser',actionName:'update', showOnMenu: false,isPermitToAll:false, status: true).save(failOnError: true)
                        userMgmt.addToEvents(updateUser)
                    }
                    // 1.1.3    Delete User
                    Events deleteUser = Events.findByName('DELETE_USER')
                    if(!deleteUser){
                        deleteUser = new Events(name: 'DELETE_USER',description:'Delete user',fmenuText:'Delete',controllerName: 'manageUser',actionName:'delete', showOnMenu: false,isPermitToAll:false, status: true).save(failOnError: true)
                        userMgmt.addToEvents(deleteUser)
                    }
                    // 1.1.4    List User for pagination only
                    Events listUserForPagination = Events.findByName('LIST_USER_PAGINATION')
                    if(!listUserForPagination){
                        listUserForPagination = new Events(name: 'LIST_USER_PAGINATION',description:'List method for pagination',fmenuText:'List',controllerName: 'manageUser',actionName:'list', showOnMenu: false,isPermitToAll:true, status: true).save(failOnError: true)
                        userMgmt.addToEvents(listUserForPagination)
                    }
                    // 1.1.5    Show User List only. i.e no CURD permission allowed
                    Events userListShowOnly = Events.findByName('USER_LIST_SHOW_ONLY')
                    if(!userListShowOnly){
                        userListShowOnly = new Events(name: 'USER_LIST_SHOW_ONLY',description:'This is a dumy link to show user List only',fmenuText:'User List',controllerName: 'manageUser',actionName:'listShowOnly', showOnMenu: true,isPermitToAll:false, status: true).save(failOnError: true)
                        userMgmt.addToEvents(userListShowOnly)
                    }


                // 1.2  role CURD
                /*Feature roleMgmt = Feature.findByName('ROLE_MGMT')
                if(!roleMgmt){
                    roleMgmt = new Feature(name: 'ROLE_MGMT',description:'Manage Role CURD',fmenuText:'Manage Role',controllerName: 'manageRole',actionName:'index', showOnMenu: true, status: true).saveBasic(failOnError: true)
                    userMgmtModule.addToFeature(roleMgmt)
                }*/
                    // 1.2.1    Create User
                    Events createRole = Events.findByName('CREATE_ROLE')
                    if(!createRole){
                        createRole = new Events(name: 'CREATE_ROLE',description:'Create role with role List at bottom',fmenuText:'Create Role',controllerName: 'manageRole',actionName:'index', showOnMenu: true,isPermitToAll:false, status: true).save(failOnError: true)
                        userMgmt.addToEvents(createRole)
                    }
                    Events createRoleSubmit = Events.findByName('SAVE_CREATE_ROLE')
                    if(!createRoleSubmit){
                        createRoleSubmit = new Events(name: 'SAVE_CREATE_ROLE',description:'Create role with role List at bottom',fmenuText:'Save',controllerName: 'manageRole',actionName:'saveBasic', showOnMenu: false,isPermitToAll:true, status: true).save(failOnError: true)
                        userMgmt.addToEvents(createRoleSubmit)
                    }

                    // 1.2.2    Update User
                    Events updateRole = Events.findByName('UPDATE_ROLE')
                    if(!updateRole){
                        updateRole = new Events(name: 'UPDATE_ROLE',description:'Update role',fmenuText:'Update',controllerName: 'manageRole',actionName:'update', showOnMenu: false,isPermitToAll:false, status: true).save(failOnError: true)
                        userMgmt.addToEvents(updateRole)
                    }
                    // 1.2.3    Delete User
                    Events deleteRole = Events.findByName('DELETE_ROLE')
                    if(!deleteRole){
                        deleteRole = new Events(name: 'DELETE_ROLE',description:'Delete role',fmenuText:'Delete',controllerName: 'manageRole',actionName:'delete', showOnMenu: false,isPermitToAll:false, status: true).save(failOnError: true)
                        userMgmt.addToEvents(deleteRole)
                    }
                    // 1.2.4    List User for pagination only
                    Events listRolePagination = Events.findByName('LIST_ROLE_PAGINATION')
                    if(!listRolePagination){
                        listRolePagination = new Events(name: 'LIST_ROLE_PAGINATION',description:'List method for pagination',fmenuText:'List',controllerName: 'manageRole',actionName:'list', showOnMenu: false,isPermitToAll:true, status: true).save(failOnError: true)
                        userMgmt.addToEvents(listRolePagination)
                    }
                    // 1.2.5    Show User List only. i.e no CURD permission allowed
                    Events roleListShowOnly = Events.findByName('ROLE_LIST_SHOW_ONLY')
                    if(!roleListShowOnly){
                        roleListShowOnly = new Events(name: 'ROLE_LIST_SHOW_ONLY',description:'This is a dumy link to show List only',fmenuText:'Role List',controllerName: 'manageRole',actionName:'listShowOnly', showOnMenu: true,isPermitToAll:false, status: true).save(failOnError: true)
                        userMgmt.addToEvents(roleListShowOnly)
                    }

                    Events showRoleRightMap = Events.findByName('SHOW_ROLE_RIGHT_MAP')
                    if(!showRoleRightMap){
                        showRoleRightMap = new Events(name: 'SHOW_ROLE_RIGHT_MAP',description:'Show role right map',fmenuText:'Role Right Map',controllerName: 'manageRole',actionName:'roleRight', showOnMenu: true,isPermitToAll:false, status: true).save(failOnError: true)
                        userMgmt.addToEvents(showRoleRightMap)
                    }
                    Events saveRoleRightMap = Events.findByName('SAVE_ROLE_RIGHT_MAP')
                    if(!saveRoleRightMap){
                        saveRoleRightMap = new Events(name: 'SAVE_ROLE_RIGHT_MAP',description:'Save role right map',fmenuText:'Update',controllerName: 'manageRole',actionName:'saveRoleRight', showOnMenu: false,isPermitToAll:true, status: true).save(failOnError: true)
                        userMgmt.addToEvents(saveRoleRightMap)
                    }


        //2.    Core Banking part here
        Module coreBank = Module.findByName('CORE_BANKING') ?: new Module(name: 'CORE_BANKING',description:'Core banking with reports',menuText:'Banking',showOnMenu: false, status: true).save(failOnError: true)
            Feature dashboard = Feature.findByName('DASHBOARD')
            if(!dashboard){
                dashboard = new Feature(name: 'DASHBOARD',description:'dashboard description',fmenuText:'Home',controllerName: 'dashboard',actionName:'index', showOnMenu: true, status: true).save(failOnError: true)
                coreBank.addToFeature(dashboard)
            }

            Feature settingsMgmt = Feature.findByName('SETTINGS_MGMT')
            if(!settingsMgmt){
                settingsMgmt = new Feature(name: 'SETTINGS_MGMT',description:'Manage Different Admin settings',fmenuText:'Settings',controllerName: 'coreBanking',actionName:'index', showOnMenu: true, status: true).save(failOnError: true)
                coreBank.addToFeature(settingsMgmt)
            }

                Events createCountry = Events.findByName('CREATE_COUNTRY')
                if(!createCountry){
                    createCountry = new Events(name: 'CREATE_COUNTRY',description:'Create Country',fmenuText:'Create Country',controllerName: 'country',actionName:'index', showOnMenu: true,isPermitToAll:false, status: true).save(failOnError: true)
                    settingsMgmt.addToEvents(createCountry)
                }
                Events createCountrySubmit = Events.findByName('SAVE_CREATE_COUNTRY')
                if(!createCountrySubmit){
                    createCountrySubmit = new Events(name: 'SAVE_CREATE_COUNTRY',description:'Country Save',fmenuText:'Save',controllerName: 'country',actionName:'saveBasic', showOnMenu: false,isPermitToAll:true, status: true).save(failOnError: true)
                    settingsMgmt.addToEvents(createCountrySubmit)
                }

                Events createCurrency = Events.findByName('CREATE_CURRENCY')
                if(!createCurrency){
                    createCurrency = new Events(name: 'CREATE_CURRENCY',description:'Create Currency',fmenuText:'Create Currency',controllerName: 'currency',actionName:'index', showOnMenu: true,isPermitToAll:false, status: true).save(failOnError: true)
                    settingsMgmt.addToEvents(createCurrency)
                }
                Events createCurrencySubmit = Events.findByName('SAVE_CREATE_CURRENCY')
                if(!createCurrencySubmit){
                    createCurrencySubmit = new Events(name: 'SAVE_CREATE_CURRENCY',description:'Currency Save',fmenuText:'Save',controllerName: 'currency',actionName:'saveBasic', showOnMenu: false,isPermitToAll:false, status: true).save(failOnError: true)
                    settingsMgmt.addToEvents(createCurrencySubmit)
                }

                Events createExchangeRate = Events.findByName('CREATE_EXCHANGE_RATE')
                if(!createExchangeRate){
                    createExchangeRate = new Events(name: 'CREATE_EXCHANGE_RATE',description:'Create Exchange Rate',fmenuText:'Exchange Rate',controllerName: 'ExchangeRate',actionName:'index', showOnMenu: true,isPermitToAll:false, status: true).save(failOnError: true)
                    settingsMgmt.addToEvents(createExchangeRate)
                }
                Events createExchangeRateSubmit = Events.findByName('SAVE_EXCHANGE_RATE')
                if(!createExchangeRateSubmit){
                    createExchangeRateSubmit = new Events(name: 'SAVE_EXCHANGE_RATE',description:'Save Exchange Rate',fmenuText:'Save',controllerName: 'ExchangeRate',actionName:'saveBasic', showOnMenu: false,isPermitToAll:false, status: true).save(failOnError: true)
                    settingsMgmt.addToEvents(createExchangeRateSubmit)
                }

        // Accounting
        Feature accountingMgmt = Feature.findByName('ACCOUNTING_MGMT')
        if (!accountingMgmt) {
            accountingMgmt = new Feature(name: 'ACCOUNTING_MGMT', description: 'Manage accounting', fmenuText: 'Accounting', controllerName: 'coreBanking', actionName: 'index', showOnMenu: true, status: true).save(failOnError: true)
            coreBank.addToFeature(accountingMgmt)
        }
            // .:: chart class create ::.
            Events createChartClass = Events.findByName('CREATE_CHART_CLASS')
            if(!createChartClass){
                createChartClass= new Events(name: 'CREATE_CHART_CLASS',description:'Create Chart Class',fmenuText:'Create Chart Class',controllerName: 'chartClass',actionName:'create', showOnMenu: true,isPermitToAll:true, status: true).save(failOnError: true)
                accountingMgmt.addToEvents(createChartClass)
            }
            // .:: chart class save ::.
            Events createChartClassSubmit = Events.findByName('SAVE_CREATE_CHART_CLASS')
            if(!createChartClassSubmit ){
                createChartClassSubmit  = new Events(name: 'SAVE_CREATE_CHART_CLASS',description:'Save Chart Class',fmenuText:'Save',controllerName: 'chartClass',actionName:'save', showOnMenu: false,isPermitToAll:false, status: true).save(failOnError: true)
                accountingMgmt.addToEvents(createChartClassSubmit )
            }
            // .:: chart class edit ::.
            Events createChartClassEdit = Events.findByName('EDIT_CHART_CLASS')
            if(!createChartClassEdit ){
                createChartClassEdit  = new Events(name: 'EDIT_CHART_CLASS',description:'Edit Chart Class',fmenuText:'Edit',controllerName: 'chartClass',actionName:'edit', showOnMenu: false,isPermitToAll:false, status: true).save(failOnError: true)
                accountingMgmt.addToEvents(createChartClassEdit )
            }
            // .:: chart class edit/** ::.
            Events createChartClassEditWithParams = Events.findByName('EDIT_CHART_CLASS_WITH_PARAMS')
            if(!createChartClassEditWithParams ){
                createChartClassEditWithParams  = new Events(name: 'EDIT_CHART_CLASS_WITH_PARAMS',description:'Edit Chart Class',fmenuText:'Edit',controllerName: 'chartClass',actionName:'edit/**', showOnMenu: false,isPermitToAll:true, status: true).save(failOnError: true)
                accountingMgmt.addToEvents(createChartClassEditWithParams )
            }
            // __ end chart class __

            // .:: chart group create ::.
            Events createChartGroup = Events.findByName('CREATE_CHART_GROUP')
            if(!createChartGroup){
                createChartGroup= new Events(name: 'CREATE_CHART_GROUP',description:'Create Chart Group',fmenuText:'Create Chart Group',controllerName: 'chartGroup',actionName:'create', showOnMenu: true,isPermitToAll:true, status: true).save(failOnError: true)
                accountingMgmt.addToEvents(createChartGroup)
            }
            // .:: chart group save ::.
            Events createChartGroupSubmit = Events.findByName('SAVE_CREATE_CHART_GROUP')
            if(!createChartGroupSubmit ){
                createChartGroupSubmit  = new Events(name: 'SAVE_CREATE_CHART_GROUP',description:'Save Chart Group',fmenuText:'Save',controllerName: 'chartGroup',actionName:'save', showOnMenu: false,isPermitToAll:false, status: true).save(failOnError: true)
                accountingMgmt.addToEvents(createChartGroupSubmit )
            }
            // .:: chart group edit ::.
            Events createChartGroupEdit = Events.findByName('EDIT_CHART_GROUP')
            if(!createChartGroupEdit ){
                createChartGroupEdit  = new Events(name: 'EDIT_CHART_GROUP',description:'Edit Chart Group',fmenuText:'Edit',controllerName: 'chartGroup',actionName:'edit', showOnMenu: false,isPermitToAll:false, status: true).save(failOnError: true)
                accountingMgmt.addToEvents(createChartGroupEdit )
            }
            // .:: chart group edit/** ::.
            Events createChartGroupEditWithParams = Events.findByName('EDIT_CHART_GROUP_WITH_PARAMS')
            if(!createChartGroupEditWithParams ){
                createChartGroupEditWithParams  = new Events(name: 'EDIT_CHART_GROUP_WITH_PARAMS',description:'Edit Chart Group',fmenuText:'Edit',controllerName: 'chartGroup',actionName:'edit/**', showOnMenu: false,isPermitToAll:true, status: true).save(failOnError: true)
                accountingMgmt.addToEvents(createChartGroupEditWithParams )
            }
            // __ End chart Group __

            // .:: chart master create ::.
            Events createChartMaster = Events.findByName('CREATE_CHART_MASTER')
            if(!createChartMaster){
                createChartMaster= new Events(name: 'CREATE_CHART_MASTER',description:'Create Chart Master',fmenuText:'Create Chart Master',controllerName: 'chartMaster',actionName:'create', showOnMenu: true,isPermitToAll:true, status: true).save(failOnError: true)
                accountingMgmt.addToEvents(createChartMaster)
            }
            // .:: chart master save ::.
            Events createChartMasterSubmit = Events.findByName('SAVE_CREATE_CHART_MASTER')
            if(!createChartMasterSubmit ){
                createChartMasterSubmit  = new Events(name: 'SAVE_CREATE_CHART_MASTER',description:'Save Chart Master',fmenuText:'Save',controllerName: 'chartMaster',actionName:'save', showOnMenu: false,isPermitToAll:false, status: true).save(failOnError: true)
                accountingMgmt.addToEvents(createChartMasterSubmit )
            }
            // .:: chart master edit ::.
            Events createChartMasterEdit = Events.findByName('EDIT_CHART_MASTER')
            if(!createChartMasterEdit ){
                createChartMasterEdit  = new Events(name: 'EDIT_CHART_MASTER',description:'Edit Chart Master',fmenuText:'Edit',controllerName: 'chartMaster',actionName:'edit', showOnMenu: false,isPermitToAll:false, status: true).save(failOnError: true)
                accountingMgmt.addToEvents(createChartMasterEdit )
            }
            // .:: chart master edit/** ::.
            Events createChartMasterEditWithParams = Events.findByName('EDIT_CHART_MASTER_WITH_PARAMS')
            if(!createChartMasterEditWithParams ){
                createChartMasterEditWithParams  = new Events(name: 'EDIT_CHART_MASTER_WITH_PARAMS',description:'Edit Chart Master',fmenuText:'Edit',controllerName: 'chartMaster',actionName:'edit/**', showOnMenu: false,isPermitToAll:true, status: true).save(failOnError: true)
                accountingMgmt.addToEvents(createChartMasterEditWithParams )
            }
            // __ End chart Group __

            // .:: chart treeView ::.
            Events chartTreeView = Events.findByName('CHART_TREE_VIEW')
            if(!chartTreeView ){
                chartTreeView  = new Events(name: 'CHART_TREE_VIEW',description:'Chart Tree View',fmenuText:'Chart Tree View',controllerName: 'chartMaster',actionName:'treeView', showOnMenu: true,isPermitToAll:true, status: true).save(failOnError: true)
                accountingMgmt.addToEvents(chartTreeView )
            }

            Feature clientsMgmt = Feature.findByName('CLIENTS_MGMT')
            if(!clientsMgmt){
                clientsMgmt = new Feature(name: 'CLIENTS_MGMT',description:'Create Different Types of Account for clients',fmenuText:'clients',controllerName: 'coreBanking',actionName:'index', showOnMenu: true, status: true).save(failOnError: true)
                coreBank.addToFeature(clientsMgmt)
            }
                Events createCustomer = Events.findByName('CREATE_CUSTOMER')
                if(!createCustomer){
                    createCustomer = new Events(name: 'CREATE_CUSTOMER',description:'Create Customer',fmenuText:'Create Customer',controllerName: 'customer',actionName:'createGeneralAddress', showOnMenu: true,isPermitToAll:true, status: true).save(failOnError: true)
                    clientsMgmt.addToEvents(createCustomer)
                }
                Events createRetailClient = Events.findByName('CREATE_RETAIL_CLIENT')
                if(!createRetailClient){
                    createRetailClient = new Events(name: 'CREATE_RETAIL_CLIENT',description:'Create New Retail Client',fmenuText:'Create Retail Client',controllerName: 'retailClient',actionName:'createGeneralAddress', showOnMenu: true,isPermitToAll:true, status: true).save(failOnError: true)
                    clientsMgmt.addToEvents(createRetailClient)
                }

                Events createRetailAgent = Events.findByName('CREATE_RETAIL_AGENT')
                if(!createRetailAgent){
                    createRetailAgent = new Events(name: 'CREATE_RETAIL_AGENT',description:'Create  Retail Agent',fmenuText:'Create Retail Agent',controllerName: 'agent',actionName:'create', showOnMenu: true,isPermitToAll:true, status: true).save(failOnError: true)
                    clientsMgmt.addToEvents(createRetailAgent)
                }

                Events createVendor = Events.findByName('CREATE_VENDOR')
                if(!createVendor){
                    createVendor = new Events(name: 'CREATE_VENDOR',description:'Create Vendor',fmenuText:'Create Vendor',controllerName: 'vendor',actionName:'index', showOnMenu: true,isPermitToAll:true, status: true).save(failOnError: true)
                    clientsMgmt.addToEvents(createVendor)
                }


                Events createGeneralAddress = Events.findByName('CREATE_GENERAL_ADDRESS')
                if(!createGeneralAddress){
                    createGeneralAddress  = new Events(name: 'CREATE_GENERAL_ADDRESS',description:'Create General Address',fmenuText:'Create General Address',controllerName: 'vendor',actionName:'createGeneralAddress', showOnMenu: false,isPermitToAll:true, status: true).save(failOnError: true)
                    clientsMgmt.addToEvents(createGeneralAddress )
                }

                Events saveBasic = Events.findByName('SAVE_BASIC')
                if(!saveBasic){
                    saveBasic  = new Events(name: 'SAVE_BASIC',description:'Save Basic Address',fmenuText:'Save Basic Address',controllerName: 'vendor',actionName:'saveBasic', showOnMenu: false,isPermitToAll:true, status: true).save(failOnError: true)
                    clientsMgmt.addToEvents(saveBasic )
                }


                Feature productMgmt = Feature.findByName('PRODUCT_MGMT')
                if(!productMgmt){
                    productMgmt = new Feature(name: 'PRODUCT_MGMT',description:'Manage Different products',fmenuText:'Products',controllerName: 'coreBanking',actionName:'index', showOnMenu: true, status: true).save(failOnError: true)
                    coreBank.addToFeature(productMgmt)
                }

                Events createProduct = Events.findByName('CREATE_PRODUCT')
                if(!createProduct){
                    createProduct = new Events(name: 'CREATE_PRODUCT',description:'Create Product',fmenuText:'Create Savings Product',controllerName: 'product',actionName:'index', showOnMenu: true,isPermitToAll:false, status: true).save(failOnError: true)
                    productMgmt.addToEvents(createProduct)
                }




        //3.    Insurance part here
        Module insurance = Module.findByName('INSURANCE') ?: new Module(name: 'INSURANCE',description:'All Insurance here',menuText:'Insurance',status: true).save(failOnError: true)



    }
    def createRequestMap(){
        if (SpringSecurityUtils.securityConfigType != 'Requestmap') {
            return
        }
        // set the below variable to true if requestMap updated
        // and also delete/truncate your database requestmap table to update take effect
        boolean isRequestMapUpdated = true;
        if(!isRequestMapUpdated){
            return
        }
        String requestMapClassName = SpringSecurityUtils.securityConfig.requestMap.className

        //default configuration entry required for static resources
//        '/', '/index', '/index.gsp',
        def Requestmap = grailsApplication.getClassForName(requestMapClassName)
        for (url in ['/**/js/**', '/**/css/**', '/**/images/**', '/**/favicon.ico',
                '/login', '/login/**', '/logout', '/logout/**']) {
            Requestmap.newInstance(url: url, configAttribute: 'permitAll').save(flush: true, failOnError: true)
        }
        def modules = Module.list()
        modules.each {Module module ->
            module.feature.each {Feature feature ->
                Requestmap.newInstance(url: "/"+feature.controllerName+"/"+feature.actionName,menuText:feature.fmenuText,description:feature.description,moduleId:module.id,featureId:feature.id, configAttribute: 'ROLE_SUPER_ADMIN').save(flush: true, failOnError: true)
                feature.events.each {Events events ->
                    if(events.isPermitToAll){
                        Requestmap.newInstance(url: "/"+events.controllerName+"/"+events.actionName,configAttribute: 'permitAll').save(flush: true, failOnError: true)
                    } else {
                        Requestmap.newInstance(url: "/"+events.controllerName+"/"+events.actionName,menuText:events.fmenuText,description:events.description,moduleId:module.id,featureId:feature.id,eventsId:events.id, configAttribute: 'ROLE_SUPER_ADMIN').save(flush: true, failOnError: true)
                    }
                }
            }
        }

        /*def eventList = Events.list()
        eventList.each {Events events ->
            if(events.isPermitToAll){
                Requestmap.newInstance(url: "/"+events.controllerName+"/"+events.actionName,referenceId:events.id, referenceType:'Events', configAttribute: 'permitAll').saveBasic(flush: true, failOnError: true)
            } else {
                Requestmap.newInstance(url: "/"+events.controllerName+"/"+events.actionName,referenceId:events.id, referenceType:'Events', configAttribute: 'ROLE_SUPER_ADMIN').saveBasic(flush: true, failOnError: true)
            }
        }
*/
        println "Request Map code complete"


    }
    def destroy = {
    }
}
