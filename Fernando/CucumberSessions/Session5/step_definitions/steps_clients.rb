
Given(/^I have a list of clients$/) do
  @listOfclients = clients_manager.clients
end

When(/^I search a client with name (\w+)$/) do |name|
  @index = @listOfclients.key(name)
end

Then(/^I verify that the (\w+) is in the list$/) do |name|
   expect(@index).to_not be_nil
end