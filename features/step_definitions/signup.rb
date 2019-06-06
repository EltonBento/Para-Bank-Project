Given("I am at the sign up page") do
    signup_page.load
end


When("I fill all the form fields") do
   signup_page.fill_all_form
end

  
When("I register") do
    signup_page.submit_form
end

  
Then("I should get {string} success message") do |message|
    @text = find('#rightPanel > p')
    expect(@text.text).to eql message
end

Then("I should get {string} message") do |message|
   page.has_text?(message)
end

When("I  register with all the field forms in blank") do
    signup_page.submit_form
end
  
Then("I should get a message to all the required fields") do
   @text1 = find('#customer\.firstName\.errors')
   @text2 = find('#customer\.lastName\.errors')
   @text3 = find('#customer\.address\.street\.errors')
   @text4 = find('#customer\.address\.city\.errors')
   @text5 = find('#customer\.address\.state\.errors')
   @text6 = find('#customer\.address\.zipCode\.errors') 
   @text7 = find('#customer\.ssn\.errors')
   @text8 = find('#customer\.username\.errors')
   @text9 = find('#customer\.password\.errors')
   @text10 = find('#repeatedPassword\.errors')

   expect(@text1.text).to eql 'First name is required.'
   expect(@text2.text).to eql 'Last name is required.'
   expect(@text3.text).to eql 'Address is required.'
   expect(@text4.text).to eql 'City is required.'
   expect(@text5.text).to eql 'State is required.'
   expect(@text6.text).to eql 'Zip Code is required.'
   expect(@text7.text).to eql 'Social Security Number is required.'
   expect(@text8.text).to eql 'Username is required.'
   expect(@text9.text).to eql 'Password is required.'
   expect(@text10.text).to eql 'Password confirmation is required.'
end


When("I sign up without filling the field {string}") do |field_name|
    signup_page.fill_form_fields_but(field_name)
end
