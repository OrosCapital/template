package com.gsl.oros.core.banking.operation

import grails.converters.JSON
import org.apache.commons.io.FileUtils
import org.springframework.web.multipart.MultipartHttpServletRequest
import org.springframework.web.multipart.commons.CommonsMultipartFile

class AccountOpenController {

    def index() {
        render (view: '/coreBanking/settings/operation/accountOpen')
    }



    def save(){
        MultipartHttpServletRequest mpr = (MultipartHttpServletRequest)request;
        CommonsMultipartFile f = (CommonsMultipartFile) mpr.getFile("photo")
        String fileName =f.getContentType()
        String filePath = request.getSession().getServletContext().getRealPath("/");

        Long userId = 12    //springSecurityService.principle
        long uniqueNumber = new Date().getTime()
        String filename=f.getOriginalFilename()
        String fileNameToSave = uniqueNumber+"_"+filename
        byte[] userImage = f.getBytes()
        FileUtils.writeByteArrayToFile(new File( grailsApplication.config.images.location.toString()+fileNameToSave ), userImage )
        String fullPath=filePath+grailsApplication.config.images.location.substring(8)+fileNameToSave
        println(fileNameToSave)
        def filesName=[success:true,imgPath:fileNameToSave]
        render filesName as JSON
    }

}
