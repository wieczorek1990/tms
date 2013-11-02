json.array!(@contractors) do |contractor|
  json.extract! contractor, :name, :contact_person_id
  json.url contractor_url(contractor, format: :json)
end
