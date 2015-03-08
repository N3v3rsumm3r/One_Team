class Request < ActiveRecord::Base
  has_many: :needed_skills
  has_many: :needed_skills, through: :skills
end
