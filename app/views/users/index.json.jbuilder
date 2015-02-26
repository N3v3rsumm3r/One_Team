json.array!(@users) do |user|
  json.extract! user, :id, :first_name, :last_name, :email, :department_id, :location_id, :position_id, :group_id, :manager, :years_with_company, :password_digest
  json.url user_url(user, format: :json)
end
