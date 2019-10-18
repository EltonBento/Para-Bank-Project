class RequestLoanPage < SitePrism::Page
    set_url 'requestloan.htm'


    element :amount, "#amount" 
    element :down_payment, "#downPayment"
    element :apply_now_btn, "input[value='Apply Now']"
    
    
    def submit_form
        apply_now_btn.click
    end
    
    def fill_form_but(field_name, amount_value, downpayment_value)
        if field_name != 'amount'
            amount.set amount_value
        end     

        if field_name != 'down payment'
            down_payment.set downpayment_value
        end

    end



end    
