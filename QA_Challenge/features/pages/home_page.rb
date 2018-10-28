class HomePage < SitePrism::Page
    
    element :sign_in, '.login'  
    element :searchbox, '#searchbox'
    element :logo, '.logo '

    def accessSignin
        sign_in.click
    end

    def clickLogo
        logo.click
    end

end