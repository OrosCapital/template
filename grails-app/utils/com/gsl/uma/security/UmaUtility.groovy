package com.gsl.uma.security

import org.apache.commons.lang.ArrayUtils
import org.apache.commons.lang.StringUtils

/**
 * Created by aminul haque on 3/11/14.
 */
class UmaUtility {
    public static String buildAccessUrl(String original, boolean allowAccess, String authority){
        String returnStr = "permitAll"
        String[] returnArray = null
        try{
        String[] arrayFromOriginal = StringUtils.split(original,",")
        if(!allowAccess){
            returnArray = ArrayUtils.removeElement(arrayFromOriginal,authority)
        } else {
            if(!ArrayUtils.contains(arrayFromOriginal,authority)){
                returnArray = ArrayUtils.removeElement(arrayFromOriginal,"permitAll")
                returnArray= ArrayUtils.add(arrayFromOriginal,authority)
            }
        }
            if(returnArray !=null && returnArray.length>0){
                returnStr = StringUtils.join(returnArray,",")
            }
        }catch(Exception ex){
            println(ex.message)
        }
        return returnStr
    }
}
