def get_value_from_json(json_parsed, field_name)
  field_value = false
  json_parsed.each_pair do |key, value|
    if key.eql?(field_name)
      field_value = value
    end
    break if field_value != false
  end
  return field_value
end

def get_array_values_by_key(the_array, key)
  values_array = Array.new
  the_array.each_with_index do |value, index|
    values_array.push(get_value_from_json(the_array[index], key))
  end
  values_array
end

def get_id_giving_a_content(the_array, key)
  value_to_return = String.new
  the_array.each_with_index do |value, index|
    if get_value_from_json(the_array[index], "Content").eql?(key)
      value_to_return = the_array[0]
    end
  end
  value_to_return
end

def valid_json?(json)
  JSON.parse(json)
  return true
rescue JSON::ParserError => e
  return false
end

def last_json
  @last_json
end
