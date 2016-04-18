json.array!(@usrs) do |usr|
  json.extract! usr, :id, :name, :login, :pass
  json.url usr_url(usr, format: :json)
end
