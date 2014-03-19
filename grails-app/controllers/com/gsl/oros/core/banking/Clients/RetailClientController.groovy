package com.gsl.oros.core.banking.clients

import grails.converters.JSON
import org.apache.commons.io.FileUtils
import org.springframework.web.multipart.MultipartHttpServletRequest
import org.springframework.web.multipart.commons.CommonsMultipartFile

class RetailClientController {

    def index() {
        redirect(action: 'create')
    }

    def create(){
        render (view: 'create')
    }

    def saveRetailClientSignature(){
        MultipartHttpServletRequest mpr = (MultipartHttpServletRequest)request;
        CommonsMultipartFile f = (CommonsMultipartFile) mpr.getFile("signature")
        //String fileName =f.getContentType()
        //String filePath = request.getSession().getServletContext().getRealPath("/");

        long userId = 1    //springSecurityService.principle
        long uniqueNumber = new Date().getTime()
        String filename=f.getOriginalFilename()
        String fileNameToSave = uniqueNumber + "_" + filename
        byte[] retailClientSignature = f.getBytes()
        FileUtils.writeByteArrayToFile(new File(grailsApplication.config.images.location.toString() + File.separator + "clients/retailClients/signatures/" + userId, fileNameToSave), retailClientSignature)
        def filesName=[success:true,imgPath:fileNameToSave]
        render filesName as JSON
    }
}
