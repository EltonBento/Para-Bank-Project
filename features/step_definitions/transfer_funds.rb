Given("I am in the transfer funds page") do
    transfer_funds_page.load
end
  
When("I fill the fields with different accounts and with amount equal to {string}") do |value|
    transfer_funds_page.wait_until_from_account_visible
    transfer_funds_page.wait_until_to_account_visible
    transfer_funds_page.fill_form(value)
end

When("I click on the transfer button") do
    transfer_funds_page.submit_form
end