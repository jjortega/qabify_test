When(/^I click on token button$/) do
  Pages::MainActivity.click_on_token_button
end

Then(/^I check that the token is correct$/) do
  expect(Pages::MainActivity.token).to eql @user["token"]
end
