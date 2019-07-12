Given("I am in the open account page") do
    open_new_account_page.load
end

  
When("I select the type account {string} and the existing account to transfer the funds") do |type|
  open_new_account_page.fill_form(type)
end
  
When("I click in the button open new account") do
    open_new_account_page.wait_until_selected_account_dropdown_visible
    open_new_account_page.submit_form
end
  
Then("A new account number should be displayed") do
   #checking if the page has the text
   expect(page.assert_text('Your new account number:')).to eq true
   #checking if a new account number has been displayed 
   expect(page.assert_selector('#newAccountId')).to eq true
end

  
Then("I could have access to the new account clicking in the link") do
    find('#newAccountId').click
end
  
Then("The new account has to be {string} type with {string} balance") do |type, value|
    #checking if it is in the right page
    expect(page.assert_text('Account Details')).to eq true
    #checking if the type of the account is right
    expect(find('#accountType').assert_text(type)).to eq true
    #checking if the account was open with the right amount of money
    expect(find('#availableBalance').assert_text(value.to_s)).to eq true
end