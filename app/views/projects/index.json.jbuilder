json.array!(@projects) do |project|
  json.extract! project, :id, :request_id, :user_id
  json.url project_url(project, format: :json)
end
