json.array!(@projects) do |project|
  json.extract! project, :contractor_id, :team_id, :name, :contact_person_id
  json.url project_url(project, format: :json)
end
