Given("I am in the update profile page") do
    update_contact_info_page.load
end
  
When("I updates all fields") do
    update_contact_info_page.update_form
end
  
When("I click in update profile") do
    update_contact_info_page.submit_form
end

When("I clean all fields") do
    update_contact_info_page.wait_until_first_name_visible
    update_contact_info_page.clean_fields
end
  
Then("I should get a message to all required fields") do
    expect(page.assert_text('First name is required.')).to eq true
    expect(page.assert_text('Last name is required.')).to eq true
    expect(page.assert_text('Address is required.')).to eq true
    expect(page.assert_text('City is required.')).to eq true
    expect(page.assert_text('State is required.')).to eq true
    expect(page.assert_text('Zip Code is required.')).to eq true    
end