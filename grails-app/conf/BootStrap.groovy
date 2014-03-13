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

            //  Bank Settings Show on Menu
                Events bankSetting = Events.findByName('BANK_SETTING')
                if(!bankSetting){
                    bankSetting = new Events(name: 'BANK_SETTING',description:'Bank Setting',fmenuText:'Bank',controllerName: 'bankSettings',actionName:'index', showOnMenu: true,isPermitToAll:false, status: true).save(failOnError: true)
                    settingsMgmt.addToEvents(bankSetting)
                }

            //Update Bank Settings
                Events updateBankSettings = Events.findByName('UPDATE_BANK_SETTINGS')
                if(!updateBankSettings){
                    updateBankSettings = new Events(name: 'UPDATE_BANK_SETTINGS',description:'Update Bank Settings',fmenuText:'Update',controllerName: 'bankSettings',actionName:'update', showOnMenu: false,isPermitToAll:true, status: true).save(failOnError: true)
                    settingsMgmt.addToEvents(updateBankSettings)
                }

            //  Branch Settings Show on Menu
                Events branchSetting = Events.findByName('BRANCH_SETTING')
                if(!branchSetting){
                    branchSetting = new Events(name: 'BRANCH_SETTING',description:'Branch Setting',fmenuText:'Branch',controllerName: 'branchSettings',actionName:'index', showOnMenu: true,isPermitToAll:false, status: true).save(failOnError: true)
                    settingsMgmt.addToEvents(branchSetting)
                }

            //Save branch Settings Info
                Events saveBranchSettings = Events.findByName('SAVE_BRANCH_SETTINGS')
                if(!saveBranchSettings){
                    saveBranchSettings = new Events(name: 'SAVE_BRANCH_SETTINGS',description:'Save Branch Settings',fmenuText:'Save',controllerName: 'branchSettings',actionName:'create', showOnMenu: false,isPermitToAll:true, status: true).save(failOnError: true)
                    settingsMgmt.addToEvents(saveBranchSettings)
                }

            //  Retailer Settings Show on Menu
                Events RetailerSetting = Events.findByName('RETAILER_SETTING')
                if(!RetailerSetting){
                    RetailerSetting = new Events(name: 'RETAILER_SETTING',description:'Retailer Setting',fmenuText:'Retailer',controllerName: 'retailerSettings',actionName:'index', showOnMenu: true,isPermitToAll:false, status: true).save(failOnError: true)
                    settingsMgmt.addToEvents(RetailerSetting)
                }

            //  Save Retailer Settings
                Events saveRetailerSettings = Events.findByName('SAVE_RETAILER_SETTINGS')
                if(!saveRetailerSettings){
                    saveRetailerSettings = new Events(name: 'SAVE_RETAILER_SETTINGS',description:'Save Retailer Settings',fmenuText:'Save',controllerName: 'retailerSettings',actionName:'create', showOnMenu: false,isPermitToAll:true, status: true).save(failOnError: true)
                    settingsMgmt.addToEvents(saveRetailerSettings)
                }

            //  Create Country Event show on Menu
                Events createCountry = Events.findByName('CREATE_COUNTRY')
                if(!createCountry){
                    createCountry = new Events(name: 'CREATE_COUNTRY',description:'Create Country',fmenuText:'Create Country',controllerName: 'country',actionName:'index', showOnMenu: true,isPermitToAll:false, status: true).save(failOnError: true)
                    settingsMgmt.addToEvents(createCountry)
                }
            //  Save Country
                Events createCountrySubmit = Events.findByName('SAVE_CREATE_COUNTRY')
                if(!createCountrySubmit){
                    createCountrySubmit = new Events(name: 'SAVE_CREATE_COUNTRY',description:'Country Save',fmenuText:'Save',controllerName: 'country',actionName:'save', showOnMenu: false,isPermitToAll:true, status: true).save(failOnError: true)
                    settingsMgmt.addToEvents(createCountrySubmit)
                }
                // edit country
                Events editCountrySubmit = Events.findByName('EDIT_COUNTRY')
                if(!editCountrySubmit){
                    editCountrySubmit = new Events(name: 'EDIT_COUNTRY',description:'Edit country event',fmenuText:'Edit',controllerName: 'country',actionName:'edit', showOnMenu: false,isPermitToAll:true, status: true).save(failOnError: true)
                    settingsMgmt.addToEvents(editCountrySubmit )
                }

                 // udpate country
                Events updateCountrySubmit = Events.findByName('UPDATE_COUNTRY')
                if(!updateCountrySubmit ){
                    updateCountrySubmit  = new Events(name: 'UPDATE_COUNTRY',description:'Update Country',fmenuText:'Update',controllerName: 'country',actionName:'update', showOnMenu: false,isPermitToAll:true, status: true).save(failOnError: true)
                    settingsMgmt.addToEvents(updateCountrySubmit )
                }

                Events showListOfCountry = Events.findByName('SHOW_LIST_COUNTRY')
                if(!showListOfCountry){
                    showListOfCountry = new Events(name: 'SHOW_LIST_COUNTRY',description:'Show list of Country',fmenuText:'Show',controllerName: 'country',actionName:'list', showOnMenu: false,isPermitToAll:true, status: true).save(failOnError: true)
                    settingsMgmt.addToEvents(showListOfCountry)
                }

            //  Country List
                Events showCountryList = Events.findByName('SHOW_COUNTRY_LIST')
                if(!showCountryList){
                    showCountryList = new Events(name: 'SHOW_COUNTRY_LIST',description:'Country List',fmenuText:'list',controllerName: 'country',actionName:'list', showOnMenu: false,isPermitToAll:false, status: true).save(failOnError: true)
                    settingsMgmt.addToEvents(showCountryList)
                }

            //  Create Currency Event Show on Menu
                Events createCurrency = Events.findByName('CREATE_CURRENCY')
                if(!createCurrency){
                    createCurrency = new Events(name: 'CREATE_CURRENCY',description:'Create Currency',fmenuText:'Create Currency',controllerName: 'currency',actionName:'index', showOnMenu: true,isPermitToAll:false, status: true).save(failOnError: true)
                    settingsMgmt.addToEvents(createCurrency)
                }

             //  Save Currency
                Events createCurrencySubmit = Events.findByName('SAVE_CREATE_CURRENCY')
                if(!createCurrencySubmit){
                    createCurrencySubmit = new Events(name: 'SAVE_CREATE_CURRENCY',description:'Currency Save',fmenuText:'Save',controllerName: 'currency',actionName:'save', showOnMenu: false,isPermitToAll:false, status: true).save(failOnError: true)
                    settingsMgmt.addToEvents(createCurrencySubmit)
                }

             //  Internal currency symbol validation.Permit unique symbol only
                Events checkCurrencySymbol = Events.findByName('CHECK_CURRENCY_SYMBOL')
                if(!checkCurrencySymbol){
                    checkCurrencySymbol = new Events(name: 'CHECK_CURRENCY_SYMBOL',description:'Internal currency symbol validation',fmenuText:'Save',controllerName: 'currency',actionName:'checkCurrencySymbol', showOnMenu: false,isPermitToAll:true, status: true).save(failOnError: true)
                    settingsMgmt.addToEvents(checkCurrencySymbol)
                }
            //  Internal currency name validation.Permit unique name only
                Events checkCurrencyName = Events.findByName('CHECK_CURRENCY_NAME')
                if(!checkCurrencyName){
                    checkCurrencyName = new Events(name: 'CHECK_CURRENCY_NAME',description:'Internal currency name validation',fmenuText:'Save',controllerName: 'currency',actionName:'checkCurrencyName', showOnMenu: false,isPermitToAll:true, status: true).save(failOnError: true)
                    settingsMgmt.addToEvents(checkCurrencyName)
                }
             //  Currency List
                Events  showCurrencyList= Events.findByName('SHOW_CURRENCY_LIST')
                if(!showCurrencyList){
                    showCurrencyList = new Events(name: 'SHOW_CURRENCY_LIST',description:'Currency List',fmenuText:'list',controllerName: 'currency',actionName:'list', showOnMenu: false,isPermitToAll:false, status: true).save(failOnError: true)
                    settingsMgmt.addToEvents(showCurrencyList)
                }


        //  Create Exchange Rate Show on Menu
                Events createExchangeRate = Events.findByName('CREATE_EXCHANGE_RATE')
                if(!createExchangeRate){
                    createExchangeRate = new Events(name: 'CREATE_EXCHANGE_RATE',description:'Create Exchange Rate',fmenuText:'Exchange Rate',controllerName: 'ExchangeRate',actionName:'index', showOnMenu: true,isPermitToAll:false, status: true).save(failOnError: true)
                    settingsMgmt.addToEvents(createExchangeRate)
                }
            //  Save Exchange Rate
                Events createExchangeRateSubmit = Events.findByName('SAVE_EXCHANGE_RATE')
                if(!createExchangeRateSubmit){
                    createExchangeRateSubmit = new Events(name: 'SAVE_EXCHANGE_RATE',description:'Save Exchange Rate',fmenuText:'Save',controllerName: 'ExchangeRate',actionName:'save', showOnMenu: false,isPermitToAll:true, status: true).save(failOnError: true)
                    settingsMgmt.addToEvents(createExchangeRateSubmit)
                }
           //  Exchange Rate List
                Events  showExchangeRateList= Events.findByName('SHOW_EXCHANGE_RATE_LIST')
                if(!showExchangeRateList){
                    showExchangeRateList = new Events(name: 'SHOW_EXCHANGE_RATE_LIST',description:'Exchange Rate List',fmenuText:'list',controllerName: 'exchangeRate',actionName:'list', showOnMenu: false,isPermitToAll:false, status: true).save(failOnError: true)
                    settingsMgmt.addToEvents(showExchangeRateList)
                }

        // Core banking operation ie deposit, withdraw,transfer, etc..
            Feature bankMgmt = Feature.findByName('BANK_MGMT')
            if(!bankMgmt){
                bankMgmt = new Feature(name: 'BANK_MGMT',description:'Manage banking operation ie Deposit, Withdraw, Trasfer',fmenuText:'Banking Operation',controllerName: 'coreBanking',actionName:'index', showOnMenu: true, status: true).save(failOnError: true)
                coreBank.addToFeature(bankMgmt)
            }

                Events createBankDeposit = Events.findByName('BANK_DEPOSIT')
                if(!createBankDeposit){
                    createBankDeposit = new Events(name: 'BANK_DEPOSIT',description:'Create Bank Deposit',fmenuText:'Deposit',controllerName: 'bankDeposit',actionName:'index', showOnMenu: true,isPermitToAll:false, status: true).save(failOnError: true)
                    bankMgmt.addToEvents(createBankDeposit)
                }


                Events createAccountOpen = Events.findByName('CREATE_ACCOUNT')
                if(!createAccountOpen){
                    createAccountOpen = new Events(name: 'CREATE_ACCOUNT',description:'Create Account Open',fmenuText:'Account Open',controllerName: 'accountOpen',actionName:'index', showOnMenu: true,isPermitToAll:false, status: true).save(failOnError: true)
                    bankMgmt.addToEvents(createAccountOpen)
                }

                Events checkDeposit = Events.findByName('CHECK_DEPOSIT')
                if(!checkDeposit){
                    checkDeposit = new Events(name: 'CHECK_DEPOSIT',description:'Create Check Deposit',fmenuText:'Check Deposit',controllerName: 'bankDeposit',actionName:'check', showOnMenu: false,isPermitToAll:false, status: true).save(failOnError: true)
                    bankMgmt.addToEvents(checkDeposit)
                }

                Events banktransferDeposit = Events.findByName('BankTransfer_DEPOSIT')
                if(!banktransferDeposit){
                    banktransferDeposit = new Events(name: 'BankTransfer_DEPOSIT',description:'Create Bank Transfer Deposit',fmenuText:'Bank Transfer Deposit',controllerName: 'bankDeposit',actionName:'bankTransfer', showOnMenu: false,isPermitToAll:false, status: true).save(failOnError: true)
                    bankMgmt.addToEvents(banktransferDeposit)
                }

                Events creditCard = Events.findByName('CreditCard_DEPOSIT')
                if(!creditCard){
                    creditCard = new Events(name: 'CreditCard_DEPOSIT',description:'Create Credit Card Deposit',fmenuText:'Credit Card Deposit',controllerName: 'bankDeposit',actionName:'creditCard', showOnMenu: false,isPermitToAll:false, status: true).save(failOnError: true)
                    bankMgmt.addToEvents(creditCard)
                }

                Events signatureUpload = Events.findByName('SIGNATURE_UPLOAD')
                if(!signatureUpload){
                    signatureUpload = new Events(name: 'SIGNATURE_UPLOAD',description:'Signature Upload',fmenuText:'Signature Upload',controllerName: 'accountOpen',actionName:'save', showOnMenu: false,isPermitToAll:false, status: true).save(failOnError: true)
                    bankMgmt.addToEvents(signatureUpload)
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

           // Create Fiscal Year Show on Menu
            Events createFiscalYear = Events.findByName('CREATE_FISCAL_YEAR')
            if(!createFiscalYear){
                createFiscalYear= new Events(name: 'CREATE_FISCAL_YEAR',description:'Create Fiscal Year',fmenuText:'Create Fiscal Year',controllerName: 'fiscalYear',actionName:'index', showOnMenu: true,isPermitToAll:false, status: true).save(failOnError: true)
                accountingMgmt.addToEvents(createFiscalYear)
            }
            // Save Fiscal Year
            Events saveFiscalYear = Events.findByName('SAVE_FISCAL_YEAR')
            if(!saveFiscalYear ){
                saveFiscalYear  = new Events(name: 'SAVE_FISCAL_YEAR',description:'Save Fiscal Year',fmenuText:'Save',controllerName: 'fiscalYear',actionName:'create', showOnMenu: false,isPermitToAll:true, status: true).save(failOnError: true)
                accountingMgmt.addToEvents(saveFiscalYear )
            }

            // clients
            Feature clientsMgmt = Feature.findByName('CLIENTS_MGMT')
            if(!clientsMgmt){
                clientsMgmt = new Feature(name: 'CLIENTS_MGMT',description:'Create Different Types of Account for clients',fmenuText:'clients',controllerName: 'coreBanking',actionName:'index', showOnMenu: true, status: true).save(failOnError: true)
                coreBank.addToFeature(clientsMgmt)
            }
                // <-- create account holder info start -->
                Events createAccountHolderInfo = Events.findByName('CREATE_ACCOUNT_HOLDER_INFO')
                if(!createAccountHolderInfo){
                    createAccountHolderInfo = new Events(name: 'CREATE_ACCOUNT_HOLDER_INFO',description:'Create Account Holder Info',fmenuText:'Create Account Info',controllerName:'accountHolderInfo', actionName:'create', showOnMenu: true,isPermitToAll:true, status: true).save(failOnError: true)
                    clientsMgmt.addToEvents(createAccountHolderInfo)
                }
                // <-- create account holder info end -->

                // <-- create customer start -->
                Events createCustomer = Events.findByName('CREATE_CUSTOMER')
                if(!createCustomer){
                    createCustomer = new Events(name: 'CREATE_CUSTOMER',description:'Create Customer',fmenuText:'Create Customer',controllerName: 'customer',actionName:'create', showOnMenu: true,isPermitToAll:true, status: true).save(failOnError: true)
                    clientsMgmt.addToEvents(createCustomer)
                }

                // <-- customer basic info save -->
                Events customerBasicInfoSubmit = Events.findByName('SAVE_CUSTOMER_MASTER')
                if(!customerBasicInfoSubmit){
                    customerBasicInfoSubmit = new Events(name: 'SAVE_CUSTOMER_MASTER',description:'Save Customer Master',fmenuText:'Save Customer Master',controllerName: 'customer',actionName:'saveCustomerMaster', showOnMenu: false,isPermitToAll:true, status: true).save(failOnError: true)
                    clientsMgmt.addToEvents(customerBasicInfoSubmit)
                }

                // <-- customer general address create -->
                Events newCustomerGeneralAddress = Events.findByName('CREATE_CUSTOMER_GENERAL_ADDRESS')
                if(!newCustomerGeneralAddress){
                    newCustomerGeneralAddress = new Events(name: 'CREATE_CUSTOMER_GENERAL_ADDRESS',description:'Create Customer General Address',fmenuText:'Create Customer General Address',controllerName: 'customer',actionName:'newGeneralAddress/**', showOnMenu: false,isPermitToAll:false, status: true).save(failOnError: true)
                    clientsMgmt.addToEvents(newCustomerGeneralAddress)
                }

                // <-- customer general address save -->
                Events customerGeneralAddressSubmit = Events.findByName('SAVE_CUSTOMER_GENERAL_ADDRESS')
                if(!customerGeneralAddressSubmit){
                    customerGeneralAddressSubmit = new Events(name: 'SAVE_CUSTOMER_GENERAL_ADDRESS',description:'Save Customer General Address',fmenuText:'Save Customer General Address',controllerName: 'customer',actionName:'saveGeneralAddress', showOnMenu: false,isPermitToAll:true, status: true).save(failOnError: true)
                    clientsMgmt.addToEvents(customerGeneralAddressSubmit)
                }

                // <-- customer postal address create -->
                Events newCustomerPostalAddress = Events.findByName('CREATE_CUSTOMER_POSTAL_ADDRESS')
                if(!newCustomerPostalAddress){
                    newCustomerPostalAddress = new Events(name: 'CREATE_CUSTOMER_POSTAL_ADDRESS',description:'Create Customer Postal Address',fmenuText:'Create Customer Postal Address',controllerName: 'customer',actionName:'newPostalAddress/**', showOnMenu: false,isPermitToAll:false, status: true).save(failOnError: true)
                    clientsMgmt.addToEvents(newCustomerPostalAddress)
                }

                // <-- customer postal address save -->
                Events customerPostalAddressSubmit = Events.findByName('SAVE_CUSTOMER_POSTAL_ADDRESS')
                if(!customerPostalAddressSubmit){
                    customerPostalAddressSubmit = new Events(name: 'SAVE_CUSTOMER_POSTAL_ADDRESS',description:'Save Customer Postal Address',fmenuText:'Save Customer Postal Address',controllerName: 'customer',actionName:'savePostalAddress', showOnMenu: false,isPermitToAll:true, status: true).save(failOnError: true)
                    clientsMgmt.addToEvents(customerPostalAddressSubmit)
                }

                // <-- customer shipment address create -->
                Events newCustomerShipmentAddress = Events.findByName('CREATE_CUSTOMER_SHIPMENT_ADDRESS')
                if(!newCustomerShipmentAddress){
                    newCustomerShipmentAddress = new Events(name: 'CREATE_CUSTOMER_SHIPMENT_ADDRESS',description:'Create Customer Shipment Address',fmenuText:'Create Customer Shipment Address',controllerName: 'customer',actionName:'newShipmentAddress/**', showOnMenu: false,isPermitToAll:false, status: true).save(failOnError: true)
                    clientsMgmt.addToEvents(newCustomerShipmentAddress)
                }

                // <-- customer shipment address save -->
                Events customerShipmentAddressSubmit = Events.findByName('SAVE_CUSTOMER_SHIPMENT_ADDRESS')
                if(!customerShipmentAddressSubmit){
                    customerShipmentAddressSubmit = new Events(name: 'SAVE_CUSTOMER_SHIPMENT_ADDRESS',description:'Save Customer Shipment Address',fmenuText:'Save Customer Shipment Address',controllerName: 'customer',actionName:'saveShipmentAddress', showOnMenu: false,isPermitToAll:true, status: true).save(failOnError: true)
                    clientsMgmt.addToEvents(customerShipmentAddressSubmit)
                }

                // <-- customer bank account info create -->
                Events newCustomerBankAccount = Events.findByName('CREATE_CUSTOMER_BANK_ACCOUNT')
                if(!newCustomerBankAccount){
                    newCustomerBankAccount = new Events(name: 'CREATE_CUSTOMER_BANK_ACCOUNT',description:'Create Customer Bank Account',fmenuText:'Create Customer Bank Account',controllerName: 'customer',actionName:'newBankAccount/**', showOnMenu: false,isPermitToAll:false, status: true).save(failOnError: true)
                    clientsMgmt.addToEvents(newCustomerBankAccount)
                }

                // <-- customer bank account info save -->
                Events customerBankAccountSubmit = Events.findByName('SAVE_CUSTOMER_BANK_ACCOUNT')
                if(!customerBankAccountSubmit){
                    customerBankAccountSubmit = new Events(name: 'SAVE_CUSTOMER_BANK_ACCOUNT',description:'Save Customer Bank Account',fmenuText:'Save Customer Bank Account',controllerName: 'customer',actionName:'saveBankAccount', showOnMenu: false,isPermitToAll:true, status: true).save(failOnError: true)
                    clientsMgmt.addToEvents(customerBankAccountSubmit)
                }
                // <-- create customer end -->

                // <-- create retail account for client start -->
                Events createRetailClient = Events.findByName('CREATE_RETAIL_CLIENT')
                if(!createRetailClient){
                    createRetailClient = new Events(name: 'CREATE_RETAIL_CLIENT',description:'Create New Retail Client',fmenuText:'Create Retail Client',controllerName: 'retailClient',actionName:'create', showOnMenu: true,isPermitToAll:true, status: true).save(failOnError: true)
                    clientsMgmt.addToEvents(createRetailClient)
                }
                // <-- create retail account for client end -->

                Events createRetailAgent = Events.findByName('CREATE_RETAIL_AGENT')
                if(!createRetailAgent){
                    createRetailAgent = new Events(name: 'CREATE_RETAIL_AGENT',description:'Create  Retail Agent',fmenuText:'Create Retail Agent',controllerName: 'agent',actionName:'create', showOnMenu: true,isPermitToAll:true, status: true).save(failOnError: true)
                    clientsMgmt.addToEvents(createRetailAgent)
                }

                // Create Basic Info of Vendor
                Events createVendor = Events.findByName('CREATE_VENDOR')
                if(!createVendor){
                    createVendor = new Events(name: 'CREATE_VENDOR',description:'Create Vendor',fmenuText:'Create Vendor',controllerName: 'vendor',actionName:'index', showOnMenu: true,isPermitToAll:true, status: true).save(failOnError: true)
                    clientsMgmt.addToEvents(createVendor)
                }

                // Create General Address of Vendor
                Events createVendorGeneralAddress = Events.findByName('CREATE_GENERAL_ADDRESS')
                if(!createVendorGeneralAddress){
                    createVendorGeneralAddress  = new Events(name: 'CREATE_GENERAL_ADDRESS',description:'Create General Address',fmenuText:'Create General Address',controllerName: 'vendor',actionName:'createVendorGeneralAddress/**', showOnMenu: false,isPermitToAll:false, status: true).save(failOnError: true)
                    clientsMgmt.addToEvents(createVendorGeneralAddress)
                }

                // Create Postal Address of Vendor
                Events createPostalAddress = Events.findByName('CREATE_POSTAL_ADDRESS')
                if(!createPostalAddress){
                    createPostalAddress  = new Events(name: 'CREATE_POSTAL_ADDRESS',description:'Create Postal Address',fmenuText:'CREATE_POSTAL_ADDRESS',controllerName: 'vendor',actionName:'createVendorPostalAddress/**', showOnMenu: false,isPermitToAll:true, status: true).save(failOnError: true)
                    clientsMgmt.addToEvents(createPostalAddress )
                }

                // Create Bank Account Info of Vendor
                Events createBankAccountInfo = Events.findByName('CREATE_BANK_ACCOUNT_INFO')
                if(!createBankAccountInfo){
                    createBankAccountInfo  = new Events(name: 'CREATE_BANK_ACCOUNT_INFO',description:'Create Bank Account Info',fmenuText:'CREATE_BANK_ACCOUNT_INFO',controllerName: 'vendor',actionName:'createVendorBankAccountInfo/**', showOnMenu: false,isPermitToAll:true, status: true).save(failOnError: true)
                    clientsMgmt.addToEvents(createBankAccountInfo )
                }
                // Save Basic Info of Vendor
                Events saveVendorBasicInfo = Events.findByName('SAVE_VENDOR_BASIC')
                if(!saveVendorBasicInfo){
                    saveVendorBasicInfo  = new Events(name: 'SAVE_VENDOR_BASIC',description:'Save Basic Address',fmenuText:'Save Basic Address',controllerName: 'vendor',actionName:'saveVendorBasic', showOnMenu: false,isPermitToAll:true, status: true).save(failOnError: true)
                    clientsMgmt.addToEvents(saveVendorBasicInfo )
                }

                // Save General Address of Vendor
                Events saveVendorGeneralAddress = Events.findByName('SAVE_VENDOR_GENERAL_ADDRESS')
                if(!saveVendorGeneralAddress){
                    saveVendorGeneralAddress  = new Events(name: 'SAVE_VENDOR_GENERAL_ADDRESS',description:'Save Vendor General Address',fmenuText:'Save Vendor General Address',controllerName: 'vendor',actionName:'saveVendorGeneralAddress', showOnMenu: false,isPermitToAll:true, status: true).save(failOnError: true)
                    clientsMgmt.addToEvents(saveVendorGeneralAddress )
                }

                // Save Postal Address of Vendor
                Events saveVendorPostalAddress = Events.findByName('SAVE_VENDOR_POSTAL_ADDRESS')
                if(!saveVendorPostalAddress){
                    saveVendorPostalAddress  = new Events(name: 'SAVE_VENDOR_POSTAL_ADDRESS',description:'Save Vendor Postal Address',fmenuText:'Save Vendor Postal Address',controllerName: 'vendor',actionName:'saveVendorPostalAddress', showOnMenu: false,isPermitToAll:true, status: true).save(failOnError: true)
                    clientsMgmt.addToEvents(saveVendorPostalAddress )
                }

                // Save Bank Account Info of Vendor
                Events saveBankAccountInfo = Events.findByName('SAVE_BANK_ACCOUNT_INFO')
                if(!saveBankAccountInfo){
                    saveBankAccountInfo  = new Events(name: 'SAVE_BANK_ACCOUNT_INFO',description:'Save Bank Account Info',fmenuText:'SAVE_BANK_ACCOUNT_INFO',controllerName: 'vendor',actionName:'saveVendorBankAccountInfo', showOnMenu: false,isPermitToAll:true, status: true).save(failOnError: true)
                    clientsMgmt.addToEvents(saveBankAccountInfo )
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
