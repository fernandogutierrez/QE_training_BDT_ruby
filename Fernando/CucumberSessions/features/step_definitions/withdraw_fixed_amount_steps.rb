
Given(/^I have \$(\d+) in my account$/) do |balance|
    @balance = balance
end

When(/^I choose to withdraw the fixed amount of \$(\d+)$/) do |withdraw|
   @money= withdraw
end

Then(/^I should receive \$(\d+) cash$/) do |cash|
    puts "This is your $#{cash}"
end

Then(/^the balance of my account should be \$(\d+)$/) do |balance|
  expect(@balance.to_i - @money.to_i).to eq(balance.to_i) 
end
