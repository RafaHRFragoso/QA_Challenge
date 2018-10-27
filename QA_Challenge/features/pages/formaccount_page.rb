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

    $userfirstname = (Faker::Name.first_name)
    $userlastname = (Faker::Name.last_name)
    $userPassword = (Faker::Internet.password(8,8))

    def checkMrRadio
        mrRadio.choose
    end

    def checkMrsRadio
        mrsRadio.choose
    end

    def fillFirstName
        @userfirstname = $userfirstname
        puts @userfirstname 
        firstnameField.set(@userfirstname)
    end

    def fillLastName
        @userlastname = $userlastname
        puts @userlastname 
        lastnameField.set(@userlastname)
    end

    def fillPassword
        userPassword = $userPassword
        puts userPassword
        passwordField.set(userPassword)        
    end

    def selectDate
        t = Time.now
        daysSelect.select t.strftime("%d")      
        monthsSelect.select t.strftime("%B")
        yearsSelect.select t.strftime("%Y")
    end

    def checkCheckboxes
        newsCheckbox.check
        offersCheckbox.check
    end

    def userAddress
        @userfirstnameaddress = $userfirstname
        puts @userfirstnameaddress 
        firstnameaddress.set(@userfirstnameaddress)

        @userlastnameaddress = $userlastname
        puts @userlastnameaddress 
        lastnameaddress.set(@userlastname)

        addressField.set(Faker::Address.street_address)
        cityField.set(Faker::Address.city)
        stateSelect.select(Faker::Address.state)
        postcodeFied.set(Faker::Number.number(5))
        countrySelect.select 'United States'
        aliasaddressField.set(Faker::Address.street_address)
    end

    def fillPhoneNumber
        phoneField.set(Faker::PhoneNumber.cell_phone)
    end

    def clicksubmitButton
        submitButton.click
    end

    def validateNewAccess
        @userfirstname = $userfirstname
        @userlastname = $userlastname
        @username = @userfirstname+' '+ @userlastname
        puts @username
        page.assert_text(@username)
    end

end