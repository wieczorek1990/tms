json.array!(@contractors_projects) do |contractors_project|
  json.extract! contractors_project, :contractor_id, :project_id
  json.url contractors_project_url(contractors_project, format: :json)
end
