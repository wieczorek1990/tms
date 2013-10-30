json.array!(@free_periods) do |free_period|
  json.extract! free_period, :start_date, :end_date, :user_id
  json.url free_period_url(free_period, format: :json)
end
