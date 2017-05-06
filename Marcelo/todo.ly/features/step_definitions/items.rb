When(/^I send a (GET) request to ([A-Za-z\/.]+) and keep all the items id$/) do |method, end_point|
  http_request = Rest_service.get_request(method, end_point)
	@http_response = Rest_service.execute_request(@http_connection, http_request)
	@last_json = @http_response.body
	@json_array_response = JSON.parse(@last_json)

	@list_ids = get_array_values_by_key(@json_array_response, 'Id')
end

When(/^I select a random "([^"]*)" of the list as "([^"]*)"$/) do |field_name, variable|
   random_id = @list_ids.sample
   @item_id = eval(variable = random_id.to_s)
end

When(/^I send a (GET) request to ([A-Za-z\/.]+) with "([^"]*)" equal to "([^"]*)"$/) do |method, end_point, field_name, variable|
  end_point.sub! 'id', eval("#{field_name} = '#{@item_id}'")
	http_request = Rest_service.get_request(method, end_point)
	@http_response = Rest_service.execute_request(@http_connection, http_request)
end
