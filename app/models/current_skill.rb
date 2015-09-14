class CurrentSkill < ActiveRecord::Base
  belongs_to :user
  belongs_to :skill
  belongs_to :proficiency
end
