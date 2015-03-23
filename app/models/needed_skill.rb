class NeededSkill < ActiveRecord::Base
  belongs_to :request
  belongs_to :skill
end
