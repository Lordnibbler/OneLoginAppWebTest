When(/^I sign up for a OneLogin trial account$/) do
  visit "http://www.onelogin.com"
  
  FromHomePage = HomePage.new
  FromHomePage.go_to_sign_up
  
  FromSignUpPage = SignUpPage.new
  FromSignUpPage.register_new_company
  FromSignUpPage.terms "agree"
  FromSignUpPage.sign_up
end

When(/^I set a password$/) do
  FromPasswordPage = PasswordPage.new
  FromPasswordPage.enter_new_password
end

Then(/^I am logged into the OneLogin application$/) do
  FromClientAppsPage = ClientAppsPage.new
  FromClientAppsPage.user_is_logged_in
end
