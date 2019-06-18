class CustomerLookupPage < SitePrism::Page
    set_url 'lookup.htm'

    element :first_name, '#firstName'
    element :last_name, '#lastName'
    element :address, '#address\.street'
    element :city, '#address\.city'
    element :state, '#address\.state'
    element :zip_code, '#address\.zipCode'
    element :ssn, '#ssn'
    element :find_my_login_info_btn, '#lookupForm > table > tbody > tr:nth-child(8) > td:nth-child(2) > input'


    def submit_form
        find_my_login_info_btn.click
    end

    def fill_all_form
        first_name.set 'user01'
        last_name.set 'Smith'
        address.set '3063 Short Street'
        city.set 'Austin'
        state.set 'Texas'
        zip_code.set '78741'
        ssn.set '462-20-2331'               
    end

    def fill_form_with_non_existing_user_info
        first_name.set 'fake'
        last_name.set 'test'
        address.set '30 Street'
        city.set 'chicago'
        state.set 'Illinois'
        zip_code.set '73333'
        ssn.set '400-10-3211'  
    end

    


end