json.array!(@requests) do |request|
  json.extract! request, :id, :title, :description, :start_date, :end_date, :open
  json.url request_url(request, format: :json)
end
