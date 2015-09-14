class Proficiency < ActiveRecord::Base
    has_many :current_skills
    has_many :needed_skillss
end
