Given /^I am logged in as this user:$/ do |table|
  # table is a Cucumber::Ast::Table
  sign_up valid_user
end

When /^I go to the new Reference Commodities page$/ do 
  visit new_reference_commodity_path
end

When /^I fill in this data:$/ do |table|
  # table is a Cucumber::Ast::Table
    @reference_commodities = ReferenceCommodity.create!(table.rows_hash)
end

Then /^it should create a new Reference Commodity$/ do
  click_button "Create Reference commodity"
end


