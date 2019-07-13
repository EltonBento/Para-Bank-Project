class TransferFundsPage < SitePrism::Page
    set_url 'transfer.htm'

    element :amount_of_money ,'#amount'
    element :from_account , '#fromAccountId'
    element :to_account ,'#toAccountId'
    element :transfer_btn ,'#rightPanel > div > div > form > div:nth-child(4) > input'


    def fill_form(value)
        amount_of_money.set value
        #choosing option
        from_account.find('#fromAccountId > option:nth-child(1)').click
        to_account.find('#toAccountId > option:nth-child(2)').click 
    end


    def submit_form
        transfer_btn.click
    end



end    