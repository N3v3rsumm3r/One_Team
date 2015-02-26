json.array!(@desired_skills) do |desired_skill|
  json.extract! desired_skill, :id, :user_id, :skill_id
  json.url desired_skill_url(desired_skill, format: :json)
end
