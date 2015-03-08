class CurrentSkill < ActiveRecord::Base
  belongs_to: :users
  belongs_to: :skills
end
