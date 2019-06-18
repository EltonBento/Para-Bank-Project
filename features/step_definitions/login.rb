Given("I have an user already registered") do
    #if user wasn`t already created, create it
    
        signup_page.load
        signup_page.generate_valid_user
        signup_page.submit_form
        #clicking in logout if the user is not already created.
        unless page.has_text?('This username already exists.')
            find('#leftPanel > ul > li:nth-child(8) > a').click
        end
       
end

Given("I am at the home page") do
    home_page.load
end
  
When("I fill the username and password in the customer login section") do
    home_page.fill_all_form
end
  
When("I click in the login button") do
    home_page.submit_form
end
  
Then("I should have access to the account overview page") do
    @text = find('#rightPanel > div > div > h1')
    expect(@text.text).to eql 'Accounts Overview'
end


Given("I am logged in the Parabank website") do
    home_page.load
    home_page.fill_all_form
    home_page.submit_form
end
  
When("I logout") do
    find('#leftPanel > ul > li:nth-child(8) > a').click
end
  
Then("I should be redirect to the home page") do
    @text = find('#leftPanel > h2')
    expect(@text.text).to eql 'Customer Login'
end

When("I fill only the {string} in the customer login section") do |field_name|
    home_page.fill_form_fields_but(field_name)
end

  
When("I fill the username and a wrong password in the customer login section") do
    home_page.fill_form_fields_but('password')
    home_page.password.set '09876'
end

  
