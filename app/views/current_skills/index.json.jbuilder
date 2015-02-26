json.array!(@current_skills) do |current_skill|
  json.extract! current_skill, :id, :user_id, :skill_id
  json.url current_skill_url(current_skill, format: :json)
end
