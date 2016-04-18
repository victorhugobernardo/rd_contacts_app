json.array!(@contacts) do |contact|
  json.extract! contact, :id, :name, :mail, :usr_id
  json.url contact_url(contact, format: :json)
end
