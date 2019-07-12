class OpenNewAccountPage < SitePrism::Page
    set_url 'openaccount.htm'

    element :new_account_type, '#type'
    element :account_where_it_is_going_to_take_the_money_of,'#fromAccountId'
    element :open_new_account_btn, '#rightPanel > div > div > form > div > input'
    element :new_account_link, '#newAccountId'
    element :selected_account_dropdown, '#fromAccountId'

    def submit_form
        open_new_account_btn.click
        wait_until_new_account_link_visible
    end

    def fill_form(account_type)
        
        if account_type == 'SAVINGS'
            select 'SAVINGS', from: 'type'
        end
        
        if account_type == 'CHECKING'
            select 'CHECKING', from: 'type'
        end
    end
end