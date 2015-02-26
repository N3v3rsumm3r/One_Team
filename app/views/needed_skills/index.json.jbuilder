json.array!(@needed_skills) do |needed_skill|
  json.extract! needed_skill, :id, :skill_id
  json.url needed_skill_url(needed_skill, format: :json)
end
