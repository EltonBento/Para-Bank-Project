class SignUpPage < SitePrism::Page
    set_url 'register.htm'


    element :first_name,'#customer\.firstName'
    element :last_name, '#customer\.lastName'
    element :address, '#customer\.address\.street'
    element :city, '#customer\.address\.city'
    element :state, '#customer\.address\.state'
    element :zip_code, '#customer\.address\.zipCode'
    element :phone, '#customer\.phoneNumber'
    element :ssn, '#customer\.ssn'
    element :username, '#customer\.username'
    element :password,'#customer\.password'
    element :confirm_password,'#repeatedPassword'
    element :register_btn, '#customerForm > table > tbody > tr:nth-child(13) > td:nth-child(2) > input'
 
 
    #initialize the instance variable. It's like a constroctor
    def initialize
        @@wasValidUserCreated = false
    end
   
    #return the value of the instance variable. It's like a getter
    def wasValidUserCreated
        @@wasValidUserCreated
    end

 
    def submit_form
        register_btn.click           
 
    end       
 
 
    def fill_all_form
        
        first_name.set 'John'
        last_name.set 'Smith'
        address.set '3063 Short Street'
        city.set 'Austin'
        state.set 'Texas'
        zip_code.set '78741'
        phone.set '512-826-3970'
        ssn.set '461-13-2321'
        username.set 'johnSmith'+ rand(1000).to_s
        password.set '123456'
        confirm_password.set '123456'
       
    end
 
 
    def fill_form_fields_but(field_name)
        if field_name != 'first name'
            first_name.set 'John'
        end
       
        if field_name != 'last name'
            last_name.set 'Smith'
        end
       
        if field_name != 'address'
            address.set '3063 Short Street'
        end
     
        if field_name != 'city'
            city.set 'Austin'
        end
       
        if field_name != 'state'
            state.set 'Texas'
        end
 
        if field_name != 'zip code'
            zip_code.set '78741'
        end   
 
        if field_name != 'SNN'
            ssn.set '461-13-2321'
        end
       
        if field_name != 'username'
            username.set 'johnSmith'+ rand(1000).to_s
        end
 
        if field_name != 'password'
            password.set '123456'
        end
      
        if field_name != 'confirm password'
            confirm_password.set '123456'
        end
            
        phone.set '512-826-3970'
    end   
 
    def generate_valid_user
        first_name.set 'fake1'
        last_name.set 'Smith'
        address.set '3063 Short Street'
        city.set 'Austin'
        state.set 'Texas'
        zip_code.set '78741'
        phone.set '523-826-3970'
        ssn.set '462-20-2331'
        username.set 'fake_user11'
        password.set '123456'
        confirm_password.set '123456'
    end   

 end   
 