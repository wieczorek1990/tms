json.array!(@users_roles) do |users_role|
  json.extract! users_role, :user_id, :role_id
  json.url users_role_url(users_role, format: :json)
end
