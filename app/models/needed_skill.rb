class NeededSkill < ActiveRecord::Base
  belongs_to :request
  belongs_to :skill
  belongs_to :proficiency
end
