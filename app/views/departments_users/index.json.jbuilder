json.array!(@departments_users) do |departments_user|
  json.extract! departments_user, :department_id, :user_id
  json.url departments_user_url(departments_user, format: :json)
end
