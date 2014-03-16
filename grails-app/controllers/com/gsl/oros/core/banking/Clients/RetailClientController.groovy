package com.gsl.oros.core.banking.clients

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
        CommonsMultipartFile f = (CommonsMultipartFile) request.getFile("signature")
        String fileName = f.getContentType()
        String filePath = request.getSession().getServletContext().getRealPath("/");

        long userId = 2    //springSecurityService.principle
        long uniqueNumber = new Date().getTime()
        String filename=f.getOriginalFilename()
        String fullPath = filePath+filename
        String fileNameToSave = uniqueNumber+"_"+filename
        byte[] retailClientSignature = f.getBytes()
        FileUtils.writeByteArrayToFile(new File(grailsApplication.config.images.location.toString() + File.separator + "clients/retailClients/signatures/" + userId, fileNameToSave), retailClientSignature)
        render (view: 'create')
    }
}
