package com.gsl.oros.core.banking.settings

class BankSetup {
    String companyFullName     //Yes
    String companyShortName    //Yes
    String addressLine1        //Yes
    String addressLine2
    String generalStreet        //Yes
    String generalPostalCode
    String zipCode
    String city                   //Yes
    String state                  //Yes
    String country                //Yes
    String postalAddressLine1      //Yes
    String postalZipCode            //Yes
    String postalCity                //Yes
    String postalState              //Yes
    String postalCountry            //Yes
    String phoneNo                  //Yes
    String mobileNo                 //Yes
    String faxNo                    //Yes
    String emailAddress              //Yes
    String secondEmailAddress        //Yes
    String websiteAddress             //Yes
    String logo                        //Yes
    Double incomeTaxReservation         //Yes
    Double unforeseenExpenseReservation  //Yes
    Integer numberOfBookingPeriod       //Yes
    String companyDateFormat        //Yes
    String vatNo                  //Yes
    String taxNo                  //Yes
    String chamberCommerceNo         //Yes
    Integer amountDecimalPoint       //Yes
    Integer quantityDecimalPoint      //Yes
    Integer percentageDecimalPoint   //Yes
    String decimalRoundingType         //Yes
    String dateSeperator               //Yes
    String thousandSeperator            //Yes
    String decimalSeprator            //Yes
    String showGlcodeInReport          //Yes
    String showItemcodeInReport         //Yes
    String LANGUAGE                     //Yes
    String reportPageSize                //Yes

    static constraints = {
        companyFullName (nullable: false)
        companyShortName (nullable: false)
        addressLine1 (nullable: true)
        generalPostalCode (nullable: true)
        generalStreet (nullable: true)
        addressLine2 (nullable: true)
        zipCode (nullable: true)
        city (nullable: true)
        state (nullable: true)
        country (nullable: true)
        postalAddressLine1 (nullable: true)
        postalZipCode (nullable: true)
        postalCity (nullable: true)
        postalState (nullable: true)
        postalCountry (nullable: true)
        phoneNo (nullable: false)
        mobileNo (nullable: true)
        faxNo (nullable: true)
        emailAddress (nullable: false)
        secondEmailAddress (nullable: true)
        websiteAddress (nullable: true)
        logo (nullable: true)
        incomeTaxReservation (nullable: true)
        unforeseenExpenseReservation (nullable: true)
        numberOfBookingPeriod (nullable: true)
        chamberCommerceNo (nullable: true)
    }
}
