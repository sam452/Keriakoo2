Given /^I am logged in as the following user:$/ do |table|
  # table is a Cucumber::Ast::Table
  sign_up valid_user
end

When /^I go to the new Reference Units page$/ do 
  visit new_reference_unit_path
end

When /^I fill in the following:$/ do |table|
  # table is a Cucumber::Ast::Table
    @reference_unit = ReferenceUnit.create!(table.rows_hash)
end

Then /^it should create a new Reference Unit$/ do
  click_button "Create Reference unit"
end


