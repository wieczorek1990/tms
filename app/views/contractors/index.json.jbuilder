json.array!(@contractors) do |contractor|
  json.extract! contractor, :name
  json.url contractor_url(contractor, format: :json)
end
