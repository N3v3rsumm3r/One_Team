class DesiredSkill < ActiveRecord::Base
  belongs_to :users
  belongs_to :skills
end
