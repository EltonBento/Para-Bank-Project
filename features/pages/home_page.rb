class HomePage < SitePrism::Page
    set_url ''

    element :username, '#loginPanel > form > div:nth-child(2) > input'
    element :password, '#loginPanel > form > div:nth-child(4) > input'
    element :login_btn, '#loginPanel > form > div:nth-child(5) > input'


    def fill_all_form
        username.set 'user01'
        password.set '123456'        
    end

    def fill_form_fields_but(field_name)
        if field_name != 'username' 
            username.set 'user01'
        end
        
        if field_name != 'password'
            password.set '123456'
        end    
    end   
    
    
    def submit_form
        login_btn.click
    end   



end    