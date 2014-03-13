package com.gsl.oros.core.banking.operation

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
        String fullPath=filePath+filename
        String fileNameToSave = uniqueNumber+"_"+filename
        byte[] userImage = f.getBytes()
        FileUtils.writeByteArrayToFile(new File(grailsApplication.config.images.location.toString() + File.separator + userId, fileNameToSave), userImage)
        println(fileNameToSave)

   }

}
