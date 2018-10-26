class SignInPage < SitePrism::Page

    element :createaccountButton, '#SubmitCreate'
    element :signinButton, '#SubmitLogin'

    def clickCreateAccount
        createaccountButton.click
    end
    
    def clickSignIn
        signinButton.click
    end

end