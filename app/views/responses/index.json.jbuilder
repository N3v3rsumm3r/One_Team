json.array!(@responses) do |response|
  json.extract! response, :id, :user_id, :request_id
  json.url response_url(response, format: :json)
end
