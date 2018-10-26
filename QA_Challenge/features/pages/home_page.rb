class HomePage < SitePrism::Page
    
    element :sign_in, '.login'  

    def accessSignin
        sign_in.click
    end

end