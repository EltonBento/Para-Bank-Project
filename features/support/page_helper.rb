Dir[File.join(File.dirname(__FILE__),"../pages/*_page.rb")].each {|file| require file }
#Getting all the files ending in _pages.rb
#Doing the requirement to all the pages to each one of them to instance the page object


module Pages
    #if the object is not instanced, one will be created
    def signup_page
        @signup_page ||= SignUpPage.new
    end

    def home_page
        @home_page ||= HomePage.new
    end
    
    def customer_lookup_page
        @customer_lookup_page ||= CustomerLookupPage.new
    end

    def open_new_account_page
        @open_new_account_page ||= OpenNewAccountPage.new
    end    
end