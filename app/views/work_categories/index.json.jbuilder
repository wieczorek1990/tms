json.array!(@work_categories) do |work_category|
  json.extract! work_category, :name
  json.url work_category_url(work_category, format: :json)
end
