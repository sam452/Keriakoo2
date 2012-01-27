Given /^I am logged in as the following user:$/ do |table|
  # table is a Cucumber::Ast::Table
  sign_up valid_user
end

When /^I go to the new Reference units page$/ do 
  visit new_reference_unit_path
end

When /^I fill in the following:$/ do |table|
  # table is a Cucumber::Ast::Table
    @reference_unit = Reference_unit.create!(table.rows_hash)
end

Then /^it should create a new Reference Unit$/ do
  pending # express the regexp above with the code you wish you had
end

