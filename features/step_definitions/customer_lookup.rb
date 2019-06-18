Given("I am at the customer lookup page") do
    customer_lookup_page.load
end
  
When("I click the button to find my login info") do
    customer_lookup_page.submit_form
end


Then("I should get a message in all the required fields") do
    expect(page.assert_text('First name is required.')).to eq true
    expect(page.assert_text('Last name is required.')).to eq true
    expect(page.assert_text('Address is required.')).to eq true
    expect(page.assert_text('City is required.')).to eq true
    expect(page.assert_text('State is required.')).to eq true
    expect(page.assert_text('Zip Code is required.')).to eq true
    expect(page.assert_text('Social Security Number is required.')).to eq true
end


When("I fill the form with one wrong information") do
    customer_lookup_page.fill_all_form
    customer_lookup_page.ssn.set '462-20-0000'
end

  
When("I fill the form with the information of a non existing user") do
    customer_lookup_page.fill_form_with_non_existing_user_info
end

When("I fill the form") do
    customer_lookup_page.fill_all_form
end

When("I fill the form with a wrong address") do
    customer_lookup_page.fill_all_form
    customer_lookup_page.address.set 'test'
    customer_lookup_page.city.set 'test'
    customer_lookup_page.state.set 'test'
    customer_lookup_page.zip_code.set '000000'
end