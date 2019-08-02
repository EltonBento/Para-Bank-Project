Given("I am in the bill payment page") do
    bill_payment_page.load
end
  
When("I click on the send payment button") do
    bill_payment_page.submit_form
end
  
Then("I should get a message for each of the required fields") do
    expect(page.assert_text('Payee name is required.')).to eq true
    expect(page.assert_text('Address is required.')).to eq true
    expect(page.assert_text('City is required.')).to eq true
    expect(page.assert_text('State is required.')).to eq true
    expect(page.assert_text('Zip Code is required.')).to eq true
    expect(page.assert_text('Phone number is required.')).to eq true
    expect(page.assert_text('Account number is required.')).to eq true
    expect(page.assert_text('The amount cannot be empty.')).to eq true    
end

When("I fill all the form fields from the payment page") do
    bill_payment_page.fill_form_but('')
end


When("I fill all fields but {string}") do |field_name|
    bill_payment_page.fill_form_but(field_name)
end

When("I fill all fields but account and verify account with different values") do
    bill_payment_page.fill_form_but('verify_account')
    bill_payment_page.verify_account.set '111111'
end