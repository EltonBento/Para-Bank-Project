Dir[File.join(File.dirname(__FILE__),"../pages/*_page.rb")].each {|file| require file }
#Getting all the files ending in _pages.rb
#Doing the require to all the pages to each one of them to instance the page object


module Pages
    #if the object is not instanced, one will be created
    def signup_page
        @signup_page ||= SignUpPage.new
    end
end