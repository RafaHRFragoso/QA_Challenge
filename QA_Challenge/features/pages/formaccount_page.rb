class FormAccount <SitePrism::Page

    element :mrRadio, '#id_gender1'
    element :mrsRadio, '#id_gender2'
    element :firstnameField, '#customer_firstname'
    element :lastnameField, '#customer_lastname'
    element :passwordField, '#passwd'
    element :daysSelect, '#days'
    element :monthsSelect, '#months'
    element :yearsSelect, '#years'
    element :newsCheckbox, '#newsletter'
    element :offersCheckbox, '#optin'
    element :firstnameaddress, '#firstname'
    element :lastnameaddress, '#lastname'
    element :addressField, '#address1'
    element :cityField, '#city'
    element :stateSelect, '#id_state'
    element :postcodeFied, '#postcode'
    element :countrySelect, '#id_country'
    element :phoneField, '#phone_mobile'
    element :aliasaddressField, '#alias'
    element :submitButton, '#submitAccount'

    $userfirstname = Faker::Name.first_name
    $userlastname = Faker::Name.last_name

    def checkMrRadio
        mrRadio.choose
    end

    def checkMrsRadio
        mrsRadio.choose
    end

    def fillFirstName(userfirstname)  
        userfirstname = $userfirstname
        puts userfirstname  
        firstnameField.set (userfirstname)
    end

    def fillLastName(userlastname)  
        userlastname = $userlastname
        puts userlastname      
        lastnameField.set ($userlastname)
    end

    def fillPassword
        passwordField.set (Faker::Internet.password(8))
        puts passwordField
    end

    def selectDate
        daysSelect.select '25'
        monthsSelect.select 'October'
        yearsSelect.select '2018'
    end

    def checkCheckboxes
        newsCheckbox.check
        offersCheckbox.check
    end

end