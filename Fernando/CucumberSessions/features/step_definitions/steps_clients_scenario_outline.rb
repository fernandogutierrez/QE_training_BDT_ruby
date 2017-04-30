Before('@regression') do
   p "I am running an outline scenario"
end

Before('@crud') do
   p "I am running a normal scenario" 
end

After('@regression') do
   p "I finished running the outline scenario" 
end

After('@crud') do
   p "I finished running a normal scenario"
end

After('@crud, @regression') do
   p "CUSTOMER SEARCH TEST"
end

After('@regression') do
   p "SEARCHIN..."
end

Given(/^I have the (\d+) of the client$/) do |id|
   @clients_total_price = clients_manager.clients_total_price
end

Given(/^I have the name ([a-zA-Z]+) of the client$/) do |name|
   puts("The name of the client is #{name}")
end

When(/^I search client by id (\d+)$/) do |id|
   @total = @clients_total_price[id.to_i]
end

Then(/^I see the total amount (\d+)\.(\d+)$/) do |amount_1, amount_2|
    expect(@total).to_not be_nil
end
