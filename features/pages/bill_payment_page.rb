class BillPaymentPage < SitePrism::Page
    set_url 'billpay.htm'

    element :payee_name,"input[name='payee.name']"
    element :address, "input[name='payee.address.street']"
    element :city, "input[name='payee.address.city']"
    element :state, "input[name='payee.address.state']"
    element :zip_code, "input[name='payee.address.zipCode']"
    element :phone, "input[name='payee.phoneNumber']"
    element :account, "input[name='payee.accountNumber']"
    element :verify_account, "input[name='verifyAccount']"
    element :amount, "input[name='amount']"
    element :send_payment_btn, '#rightPanel > div > div:nth-child(1) > form > table > tbody > tr:nth-child(14) > td:nth-child(2) > input' 


    def submit_form
        send_payment_btn.click
    end

    def fill_form_but(field_name)
        
        if field_name != 'payee_name'
            payee_name.set 'Paul R Saunders'
        end     

        if field_name != 'address'
            address.set '3623 Cityview Drive'
        end  

        if field_name != 'city'
            city.set 'Chester Heights'
        end  

        if field_name != 'state'
            state.set 'Pennsylvania'
        end  

        if field_name != 'zip_code'
            zip_code.set '19017'
        end  

        if field_name != 'phone'
            phone.set '570-878-2845'
        end  

        if field_name != 'account'
            account.set '14787'
        end 

        if field_name != 'verify_account'
            verify_account.set '14787'
        end 

        if field_name != 'amount'
            amount.set '100'
        end

    end
    
end