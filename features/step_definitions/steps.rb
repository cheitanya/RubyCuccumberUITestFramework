Given(/^User in on Home page$/) do
  visit 'http://localhost:3000'
end
When(/^User enter credentials email"([^"]*)"and password"([^"]*)"$/) do|email, password|
  sleep(2)
  click_link ('Login')
  fill_in('spree_user_email', :with => email)
  fill_in('spree_user_password', :with => password)
  click_button ('Login')
end
Then(/^User should be able to see My account link on home page$/) do
  click_link('My Account')
  sleep(5)
end

Then(/^User should not be able to see My account link on home page$/) do
  page.find(:xpath, '//*[@id="content"]/div[1]')
  sleep(5)
end
