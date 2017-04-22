Given(/^I am in log in page$/) do
  puts "I am login"
end

When(/^I insert a zip code '(\d+)'$/) do |zip|
  puts "I insert a zip code"
end

When(/^I insert a username '([a-z]+)'$/) do |username|
  puts "I insert a username"
end

When(/^I insert a Country (\D+)$/) do |country|
  puts "I insert a Country"
end

When(/^I press enter key$/) do
  puts "I press enter key"
end

Then(/^I will be able to see the Home page$/) do
  puts "I will be able tosee the home"
end