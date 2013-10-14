json.array!(@roles) do |role|
  json.extract! role, :name, :resource_id
  json.url role_url(role, format: :json)
end
