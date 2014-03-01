Given(/^I am on the Company Information Page$/) do
  FromLoginPage = LoginPage.new
  FromLoginPage.login_as($SETUP["admin"]["email"], $SETUP["admin"]["password"])

  FromCurrentPage = CurrentPage.new
  FromCurrentPage.select_from_settings_menu("Company Info")
  find(:id, "account_name")
  p current_path 
  current_path.should == "/accounts/owner/edit"
  p current_path
end

When(/^I update my company information$/) do
  new_co_info = Company.new
  p new_co_info
end

Then(/^my company information is updated$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I change the Account Owner$/) do
  pending # express the regexp above with the code you wish you had
end
