json.array!(@contact_people) do |contact_person|
  json.extract! contact_person, :email, :first_name, :last_name, :phone
  json.url contact_person_url(contact_person, format: :json)
end
