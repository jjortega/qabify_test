Given(/^I am logged as (.*)$/) do |email|
  @user = Models::User.get_by_email(email)
  Pages::Login.login(email,decode_base_64(@user["password"]))
end