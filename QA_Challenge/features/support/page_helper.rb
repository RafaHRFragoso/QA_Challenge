Dir[File.join(File.dirname(__FILE__),
    '../pages/*_page.rb')].each { |file| require file}

module Pages
    def home
        @home ||= HomePage.new
    end
    
    def authentication
        @authentication ||= AuthenticationPage.new
    end

    def formaccount
        @formaccount ||= FormAccount.new
    end

    def buyitens
        @buyitens ||= BuyItensPage.new
    end
end    