json.array!(@tasks) do |task|
  json.extract! task, :person_responsible_id, :work_category_id, :start_date, :end_date, :description, :hours_planned, :hours_real, :cost, :status_id, :project_id
  json.url task_url(task, format: :json)
end
