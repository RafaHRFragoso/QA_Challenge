class HomePage < SitePrism::Page
    
    element :sign_in, '.login'  
    element :searchbox, '#searchbox'

    def accessSignin
        sign_in.click
    end

    def validateLogout
        page.assert_selector(searchbox)
    end

end