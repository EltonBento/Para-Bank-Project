Given("I am in the request loan page") do
    request_loan_page.load
end
  
When("I click the button Apply Now") do
    request_loan_page.submit_form
end

When("I fill the field {string}") do |field_name|
    request_loan_page.fill_form_but(field_name,100,100)
end

When("I fill the Apply for a loan form with valid entries") do
    request_loan_page.fill_form_but('',100,100)
end

When("I fill the form with {int} and {int}") do |amount, down_payment|
    request_loan_page.fill_form_but('',amount,down_payment)
end
  
Then("I should not be able to get a loan and an error {string} should be displayed") do |message|
    expect(page.assert_text(message)).to eq true
end
