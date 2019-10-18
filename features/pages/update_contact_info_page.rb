class UpdateContactInfoPage < SitePrism::Page
    set_url 'updateprofile.htm'

    element :first_name,'#customer\.firstName'
    element :last_name, '#customer\.lastName'
    element :address, '#customer\.address\.street'
    element :city, '#customer\.address\.city'
    element :state, '#customer\.address\.state'
    element :zip_code, '#customer\.address\.zipCode'
    element :phone, '#customer\.phoneNumber'
    element :update_profile_btn, "input[value ='Update Profile']"



    def submit_form
        update_profile_btn.click
    end    


    def clean_fields
        first_name.set ''
        last_name.set ''
        address.set ''
        city.set  ''
        state.set ''
        zip_code.set ''
        phone.set ''        

    end    


    def update_form
        first_name.set 'teste2'
        last_name.set 'teste2'
        address.set 'teste2'
        city.set  'teste2'
        state.set 'teste2'
        zip_code.set 'teste2'
        phone.set 'teste2'
    end    

end    