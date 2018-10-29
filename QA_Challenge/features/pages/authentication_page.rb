class AuthenticationPage < SitePrism::Page

    element :createaccountButton, '#SubmitCreate'
    element :signinButton, '#SubmitLogin'
    element :newuseremeilField, '#email_create'
    element :useremailField, '#email'
    element :userpasswordField, '#passwd'
    element :newuserForm, '#account-creation_form'    

    def submitNewEmail
        @new_useremail = Faker::Internet.safe_email
        newuseremeilField.set(@new_useremail)    
    end

    def loginPass(existEmail,existPasswd)    
        useremailField.set(existEmail)
        userpasswordField.set(existPasswd)
    end    

    def loginFail(email, psswd)
        useremailField.set(email)
        userpasswordField.set(psswd)                           
    end

    def clickCreateAccount
        createaccountButton.click
        page.assert_text('Create an account')        
    end
    
    def clickSignIn
        signinButton.click
    end

    def validateCommonLogin(existsUser)        
        page.assert_text(@existsUser)
    end

    def logoutPass
        click_link 'Log me out'   
    end

end