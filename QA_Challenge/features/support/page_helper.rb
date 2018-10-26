Dir[File.join(File.dirname(__FILE__),
    '../pages/*_page.rb')].each { |file| require file}

module Pages
    def home
        @home ||= HomePage.new
    end
    
    def signin
        @signin ||= SignInPage.new
    end

    def formaccount
        @formaccount ||= FormAccount.new
    end
end    