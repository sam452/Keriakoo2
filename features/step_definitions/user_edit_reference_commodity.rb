# as the following user
#	| name | "Testy McUserton" |
#	| password | "please" |
#	| email | "testy@userton.com" |

Given /^I am logged into$/ do
  # table is a Cucumber::Ast::Table
  sign_up valid_user
end

Given /^there are Reference Commodities$/ do |table|
  # table is a Cucumber::Ast::Table
  @reference_commodities = ReferenceCommodity.create!(table.rows_hash)
end

When /^I go to the Reference Commodities home page$/ do
  visit('/reference_commodities/index')
   save_and_open_page
 
end

Then /^I should see this reference commodity$/ do |table|
  # table is a Cucumber::Ast::Table
  page.should have_content @reference_commodities[:commodity]
end

