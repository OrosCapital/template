package com.gsl.uma.security

import com.gsl.uma.saas.Events
import com.gsl.uma.saas.Feature
import grails.converters.JSON
import org.apache.commons.lang.StringUtils

class ManageRoleController {
    def springSecurityService
    def index() {
    render (view: 'createRole')
    }
    def save() {
        println params
        if (request.method == 'POST') {
            String authority = params.authority
            if(authority && authority.toUpperCase().startsWith('ROLE_')){
                Role role = new Role()
                role.authority = authority.toUpperCase()

                if (!role.save()) {
                    // validation failed, render registration page again
                    render (view: 'createRole',model: [role: role])
                    return
                } else {
                    flash.message = "Role saved successfully"
                    render (view: 'createRole')
                    return
                }
            } else {
                flash.message = "Role name must start with ROLE_"
                render (view: 'createRole')
                return
            }
        }
        render (view: 'createRole')
    }
    def update() { }
    def delete() { }
    def list() { }
    def listShowOnly() { }
    def roleRight(Long roleId){
        println params
        Role role = null
        if (request.method == 'POST') {
            if(params.roleId){
                role = Role.read(roleId)
                if (role){
                   def requestMap = RequestMap.withCriteria{
                       ne('configAttribute','permitAll')
                       and{
                           order('moduleId','asc')
                           order('featureId','desc')
                           order('eventsId','desc')
                       }
                   }
                    List resultList = new ArrayList()
                    requestMap.each {RequestMap requestMap1 ->
                        boolean hasAccess = requestMap1.configAttribute.contains(role.authority)
                        resultList.add([id:requestMap1.id,menuText:requestMap1.menuText, description:requestMap1.description, hasAccess:hasAccess])
                    }
                    render (view: 'mapRoleRight', model: [authority:role?.authority,resultList:resultList])
                    return
                }
            }
        }
        render (view: 'mapRoleRight')
    }
    def saveRoleRight(){

        boolean available = false
        if (request.method == 'POST') {
            String accessMapping = params.accessMapping
            String authority = params.authority
            Role forRole = Role.findByAuthority(authority)
            if(!forRole){
                String output = [available:true] as JSON
                render output
                return
            }
            if(StringUtils.isNotEmpty(accessMapping)){
               String[] requestObjs = StringUtils.split(accessMapping,"^")
                Long reObjId
                Boolean accessRight
                RequestMap domainObj
                for(int i=0; i<requestObjs.length; i++){
                    String[] requestObj = StringUtils.split(requestObjs[i],"_")
                    reObjId = requestObj[0].toLong()
                    accessRight = requestObj[1].toBoolean()
                    domainObj = RequestMap.get(reObjId)
//                  //Code to replace the authority
                      domainObj.configAttribute = UmaUtility.buildAccessUrl(domainObj.configAttribute,accessRight,forRole.authority)
                    domainObj.save()
                }
                springSecurityService.clearCachedRequestmaps()
            }
            String output = [available:true,message:"Updated Access Right for ${authority} successfully"] as JSON
            render output
            return
        }
        String output = [available:false] as JSON
        render output
    }

}
