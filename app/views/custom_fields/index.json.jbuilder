json.array!(@custom_fields) do |custom_field|
  json.extract! custom_field, :id, :field, :field_type, :usr_id
  json.url custom_field_url(custom_field, format: :json)
end
